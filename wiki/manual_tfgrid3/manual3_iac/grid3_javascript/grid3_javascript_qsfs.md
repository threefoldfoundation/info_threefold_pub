!!!include:grid3_javascript_loadclient

## Deploying a VM with QSFS

### Example code

!!!code url:https://github.com/threefoldtech/grid3_client_ts/blob/development/scripts/vm_with_qsfs.ts



### Detailed explanation

#### Getting the client

```javascript
const grid3 = getClient();
```



#### preparing QSFS 

```javascript
    const qsfs_name = "wed2710q1";
    const machines_name = "wed2710t1";
```
We prepare here some names to use across the client for the QSFS and the machines project


```javascript
    // deploy qsfs backend zdbs first
    const qsfs_res = await grid3.qsfs_zdbs.deploy({
        name: qsfs_name,
        count: 8,
        node_ids: [2, 3],
        password: "mypassword",
        disk_size: 10,
        description: "my qsfs test",
        metadata: ""
    });
    console.log(JSON.stringify(qsfs_res));
```

Here we deploy `8` ZDBs on nodes `2,3` with password `mypassword`, all of them having disk size of `10GB` 

#### Deploying a VM with QSFS

```javascript
 // deploy vms
    const res = await grid3.machines.deploy({
        name: machines_name,
        network: {
            name: "wed2710n1",
            ip_range: "10.201.0.0/16",
        },
        machines: [{
            name: "wed2710v1",
            node_id: 7,
            disks: [{
                name: "wed2710d1",
                size: 10,
                mountpoint: "/mydisk",
            }],
            qsfs_disks: [{
                qsfs_zdbs_name: qsfs_name,
                name: "wed2710d2",
                minimal_shards: 2,
                expected_shards: 4,
                encryption_key: "hamada",
                prefix: "hamada",
                cache: 1,
                mountpoint: "/myqsfsdisk"
            }],
            public_ip: false,
            planetary: true,
            cpu: 1,
            memory: 1024 * 2,
            rootfs_size: 1,
            flist: "https://hub.grid.tf/tf-official-apps/base:latest.flist",
            entrypoint: "/sbin/zinit init",
            env: {
                SSH_KEY:
                    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDWlguBuvfQikkRJZXkLPei7Scvo/OULUEvjWVR4tCZ5V85P2F4SsSghxpRGixCNc7pNtgvdwJegK06Tn7SkV2jYJ9kBJh8PA06CPSz1mnpco4cgktiWx/R8xBvLGlyO0BwUuD3/WFjrc6fzH9E7Bpkel/xTnacx14w1bZAC1R35hz7BaHu1WrXsfxEd0VH7gpMPoQ4+l+H38ULPTiC+JcOKJOqVafgcc0sU7otXbgCa1Frr4QE5bwiMYhOlsRfRv/hf08jYsVo+RUO3wD12ylLWR7a7sJDkBBwgir8SwAvtRlT6k9ew9cDMQ7H8iWNCOg2xqoTLpVag6RN9kGzA5LGL+qHEcBr6gd2taFEy9+mt+TWuKp6reUeJfTu9RD1UgB0HpcdgTHtoUTISW7Mz4KNkouci2DJFngDWrLRxRoz81ZwfI2hjFY0PYDzF471K7Nwwt3qKYF1Js9a6VO38tMxSU4mTO83bt+dUFozgpw2Y0KKJGHDwU66i2MvTPg3EGs= ayoub@ayoub-Inspiron-3576",
            }
        }],
        metadata: "{'testVMs': true}",
        description: "test deploying VMs via ts grid3 client",


    });
    console.log(">>>>>>>>>>>>>>>VM has been created<<<<<<<<<<<<<<<");
    console.log(JSON.stringify(res));
```
So this deployment is almost similiar to what we have in the [vm deployment section](grid3_javascript_vm). We only have a new section `qsfs_disks`

```javascript
    qsfs_disks: [{
        qsfs_zdbs_name: qsfs_name,
        name: "wed2710d2",
        minimal_shards: 2,
        expected_shards: 4,
        encryption_key: "hamada",
        prefix: "hamada",
        cache: 1,
        mountpoint: "/myqsfsdisk"
    }],
```
`qsfs_disks` is a list, representing all of the QSFS disks used within that VM.
- `qsfs_zdbs_name`: that's the backend ZDBs we defined in the beginning
- `expected_shards`: how many ZDBs that QSFS should be working with
- `minimal_shards`: the minimal possible amount of ZDBs to recover the data with when losing disks e.g due to failure
- `mountpoint`: where it will be mounted on the VM `/myqsfsdisk`

#### Getting deployment information


```javascript
    const l = await grid3.machines.getObj(machines_name);
    console.log(JSON.stringify(l))
```


#### Deleting a deployment

```javascript
    // // delete
    const d = await grid3.machines.delete({ name: vms.name });
    console.log(d);
    const r = await grid3.qsfs_zdbs.delete({ name: qsfs_name });
    console.log(r);
```