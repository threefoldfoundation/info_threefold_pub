# Terraform integration

## provider initialization


```
provider "threefoldgrid" {
    mnemonics = "..."
    substrate_url = "..."
    twin_id = "..."
}
```
### environment variables
should be recognizable as Env variables too
- `MNEMONICS`
- `SUBSTRATE_URL`
- `TWIN_ID`

### credential file

```
provider "threefold" {
    creds_file = "..."
}

```

### Deployment example

terraform requires the mapping to be 1-1 to the backend resources, in the grid 2 version, creating each of the workloads separately as resources would have worked, but in case of grid 3 where the deployment is the only manageble resource it will require to work only againts deployment resource or create an intermediate api server the mocks the behavior of splitted resources

```terraform
resource "grid_deployment" "d1" {
  node = 2
  disks {
    name = "mydisk1"
    size = 2
    description = "this is my disk description1"
    
  }
  disks {
    name = "mydisk2"
    size=2
    description = "this is my disk2"
  }
  vms {
    name = "vm1"
    flist = "https://hub.grid.tf/tf-official-apps/base:latest.flist"
    cpu = 1
    memory = 1024
    entrypoint = "/sbin/zinit init"
    mounts {
      disk_name = "mydisk1"
      mount_point = "/opt"
    }
    mounts {
      disk_name = "mydisk2"
      mount_point = "/test"
    }
    env_vars {
      key = "SSH_KEY"
      value = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTwULSsUubOq3VPWL6cdrDvexDmjfznGydFPyaNcn7gAL9lRxwFbCDPMj7MbhNSpxxHV2+/iJPQOTVJu4oc1N7bPP3gBCnF51rPrhTpGCt5pBbTzeyNweanhedkKDsCO2mIEh/92Od5Hg512dX4j7Zw6ipRWYSaepapfyoRnNSriW/s3DH/uewezVtL5EuypMdfNngV/u2KZYWoeiwhrY/yEUykQVUwDysW/xUJNP5o+KSTAvNSJatr3FbuCFuCjBSvageOLHePTeUwu6qjqe+Xs4piF1ByO/6cOJ8bt5Vcx0bAtI8/MPApplUU/JWevsPNApvnA/ntffI+u8DCwgP"
    }

  }
}
```

## updating 

is triggered by changing the deployments fields
```
  disks {
    name = "mydisk2"
    size=50
    description = "this is my disk2"
  }
```
- updated from 2 to 50
- the version of the workload needs to get updated internally
- the version of the deployment needs to get updated internally
- update the hash in the contract (the contract id will stay the same)
  
dispatching the updated deployment object to `zos.deployment.update` of the node 