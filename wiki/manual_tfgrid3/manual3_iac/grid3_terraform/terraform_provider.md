# Terraform integration

## provider initialization


```
terraform {
  required_providers {
    grid = {
      source = "threefoldtech/grid"
    }
  }
}
provider "grid" {
    mnemonics = "FROM THE CREATE TWIN STEP"
    network = "dev" # or test to use testnet
}
```
### environment variables
should be recognizable as Env variables too
- `MNEMONICS`
- `NETWORK`
- `SUBSTRATE_URL` 
- `RMB_PROXY_URL`
- `GRAPHQL_URL`

The *_URL variables can be used to override the dafault urls associated with the specified network
### credential file

```
provider "threefold" {
    creds_file = "..."
}

```

### Deployment example

Terraform requires the mapping to be 1-1 to the backend resources. In the TFGrid v2, creating each of the workloads separately as resources would have worked, however for TFGrid v3, where the deployment is the only manageable resource, it will require to work only against deployment resource or create an intermediate API server that mocks the behavior of splitted resources.

```terraform
resource "grid_network" "net" {
    nodes = [2]
    ip_range = "10.1.0.0/16"
    name = "network"
    description = "newer network"
}

resource "grid_deployment" "d1" {
  node = 2
  network_name = grid_network.net.name
  ip_range = lookup(grid_network.net.nodes_ip_range, 2, "")
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

## Updating

Updates are triggered by changing the deployments fields.
```
resource "grid_network" "net" {
    nodes = [2, 4]
    ip_range = "10.1.0.0/16"
    name = "network"
    description = "newer network"
}

```

- add node 4 to the network
- the version of the workload needs to get updated internally
- the version of the deployment needs to get updated internally
- update the hash in the contract (the contract id will stay the same)
- there are workloads that doesn't support in-place updates (e.g. Zmachines). To change them there are a couple of options (all performs destroy/create so data can be lost):
1. `terraform taint grid_deployment.d1` (next apply will destroy ALL workloads within grid_deployment.d1 and create a new deployment)
2. `terraform destroy --target grid_deployment.d1 --parallelism=1 && terraform apply --target grid_deployment.d1 --parallelism=1` (same as above)
3. remove the vm, then execute a `terraform apply`, then add the vm with the new config (this performs two updates but keeps neighboring workloads inside the same deployment intact)
dispatching the updated deployment object to `zos.deployment.update` of the node 