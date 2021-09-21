# ETCD setup

To run the ETCD cluster, 3 containers have been provided within the same private
network as the kubernetes VM, each running on a separate physical node. The containers
are provisioned with `coreX`, meaning it will be started instead of the actual
process, and provide interactive web access to the container.

A volume is mounted in every container which will be used to hold the persistent
data of the ETCD server. This allows an upgrade of the container if needed (for
example, to run a newer version of ETCD). The volume is mounted on `/bitnami` in
the reservation.

On every container we start a `bash` instance (`/bin/bash`) through coreX. This
is done by opening `http://${container_ip}:7681/api/process/start?arg[]=/bin/bash`.
A bash shell will be spawned managed by coreX (i.e. it will continue running even
if the browser, and thus the connection to the container, is closed). You can access
the shell by opening `http:${container_ip}:7681` and selecting the bash process.

Inside this shell, we can do an `ls /` command, and notice there are 2 `/bitnami`
directories. The second one is actually `'/bitnami '` (notice the space at the
end). Investigating the mountpoints will show that it is actually this
`'/bitnami '` directory (with space) which is the mount target of the volume. The
standard (non space) directory is already present in the flist. It is unclear how
this happened (does 0-os not allow containers to overwrite existing directories?).

This flist also sets some environment variables, which we will explicitly `unset`,
as these variables will be passed on the command line. Similary, the `ETCD_DATA_DIR`
environment variable is subject to an override to the mounted directory. All in
all, a shell is spawned in each container, and the the following commands are executed:

- Container 1

```bash
unset ETCD_LISTEN_CLIENT_URLS
unset ETCD_ADVERTISE_CLIENT_URLS
export ETCD_DATA_DIR='/bitnami '

etcd --name infra1 --listen-client-urls http://172.16.10.2:2379 --advertise-client-urls http://172.16.10.2:2379 --listen-peer-urls http://172.16.10.2:12380 --initial-advertise-peer-urls http://172.16.10.2:12380 --initial-cluster-token etcd-cluster-pecs --initial-cluster 'infra1=http://172.16.10.2:12380,infra2=http://172.16.13.2:12380,infra3=http://172.16.20.2:12380' --initial-cluster-state new --logger=zap --log-outputs=stderr
```

- Container 2

```bash
unset ETCD_LISTEN_CLIENT_URLS
unset ETCD_ADVERTISE_CLIENT_URLS
export ETCD_DATA_DIR='/bitnami '

etcd --name infra2 --listen-client-urls http://172.16.13.2:2379 --advertise-client-urls http://172.16.13.2:2379 --listen-peer-urls http://172.16.13.2:12380 --initial-advertise-peer-urls http://172.16.13.2:12380 --initial-cluster-token etcd-cluster-pecs --initial-cluster 'infra1=http://172.16.10.2:12380,infra2=http://172.16.13.2:12380,infra3=http://172.16.20.2:12380' --initial-cluster-state new --logger=zap --log-outputs=stderr
```

- Container 3

```bash
unset ETCD_LISTEN_CLIENT_URLS
unset ETCD_ADVERTISE_CLIENT_URLS
export ETCD_DATA_DIR='/bitnami '
etcd --name infra3 --listen-client-urls http://172.16.20.2:2379 --advertise-client-urls http://172.16.20.2:2379 --listen-peer-urls http://172.16.20.2:12380 --initial-advertise-peer-urls http://172.16.20.2:12380 --initial-cluster-token etcd-cluster-pecs --initial-cluster 'infra1=http://172.16.10.2:12380,infra2=http://172.16.13.2:12380,infra3=http://172.16.20.2:12380' --initial-cluster-state new --logger=zap --log-outputs=stderr
```

This setup is tested by using `etcdctl` on a local machine to write a test key and
value to a single node (`put` command),  and then checking if we can `get` the value
by using the key from a different node. Then the key is deleted, and we check to
see if the delete propagated to the other nodes. Finally, we connect using the
full cluster endpoint (all 3 endpoints simultaneously), and repeat the above procedure.
