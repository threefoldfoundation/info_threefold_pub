# QSFS setup

QSFS has been setup on the kubernetes VM. Because there currently is no CSI plugin
for 0-stor, all components are installed directly in the host. This does have the
advantage that we can use the IPv6 of the VM to connect to the 0-db containers
(The current kubernetes version we use does not support IPv6 in pods yet). The alternative
would have been to run a `SOCAT` proxy.

Everything regarding QSFS is hosted in (a subdirectory of) `/var/zdbfs`. Specifically,
binaries are stored in the `bin` subdir, and configs are stored in the `etc` subdir.

## Minio

An initial setup which runs minio in a pod through kubernetes, with a `local path`
volume which would create a bind mount from the qsfs filesystem to the pod was
attempted. It turns out however that the minio helm chart in the marketplace was
not working (or at least not immediately compatible with our setup). The official
minio helm chart, as well as the `bitnami` one both require extra work to properly
set up with the ingress, which was deemed too costly time-wise to understand and
configure at the time.

As a result, a minio binary was uploaded which is run on the host. As with all
binaries for this project, the binary is uploaded in `/var/zdbfs/bin`. The binary
is build from the latest master of minio, as follows:

```bash
git clone git@github.com:minio/minio
cd minio/cmd
GOOS=linux go build -ldflags '-w -s -extldflags "-static"'
```

This produces a statically linked binary, which was then `scp`'d to the VM. Note
that the above commands assume an SSH key is uploaded to github (to clone via SSH),
and an (up to data, latest released version was used here) go compiler is available
on the path of the local machine.

The binary is run with the credentials as environment variables through `nohup`
on the VM:

```bash
cd /var/zdbfs
nohup ./bin/minio server mnt &
```

## 0-db-fs

TODO @maxux

## 0-stor

The zero stor setup consists of 2 binaries: `zstor` and `zstor_monitor`, both of
which are statically compiled. Due to a kernel bug in the kernel version currently
running on the grid, a patched version of release `v0.2.0` has been used. Specifically,
the check to see the amount of space left in a namespace has been patched to only
consider a limit if it is set, and returns the max size otherwise. This differs
from the original behavior of checking the amount of free space left on the disk
housing the data files. This value is returned incorrectly by the kernel of the
system housing the 0-db container (kernel bug in the btrfs driver), and should be
fixed once the kernel is updated to the latest patch version of `v5.10`.

Both [the zstor config](./zstor-default.toml) and [the monitor config](./monitor_config.toml)
are located in `/var/zdbfs/etc` (and copies provided here).

the zstor binary is invoked by the `0-db hook script` and the monitor, when needed.
It is not run directly. The monitor is run similary as the minio binary, with `nohup`:

```bash
cd /var/zdbfs
nohup ./bin/zstor_monitor -c ./etc/monitor_config.toml &
```
