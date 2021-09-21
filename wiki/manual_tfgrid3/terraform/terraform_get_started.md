# Getting Started

Here you'll find all of the information you need to create your first deployment on ThreeFold Grid 3.0 using Terraform. We'll walk through how to setup a wallet and Twin on TF Chain, how to install Terraform, and how to use Terraform to provision a basic virtual machine.

Please note that for now our Terraform plugin is only supported for Linux and MacOS. Windows support is planned for the future.

Steps:

- [Install and configure Yggdrasil](planetary_network)
- [Create wallet and twin on TF Chain](tfchain_init)
- [Install Terraform](terraform_install)



## using terraform

- make a directory for your project `mkdir myfirstproject`
- `cd myfirstproject`
- create `main.tf`  <- creates the terraform main file 

```terraform
terraform {
  required_providers {
    grid = {
      source = "threefoldtech/grid"
      version = "0.1.0"
    }
  }
}

provider "grid" {
    twin_id = FROM THE CREATE TWIN STEP
    mnemonics = "FROM THE CREATE TWIN STEP" 
}



resource "grid_network" "net1" {
    nodes = [2, 4]
    ip_range = "10.1.0.0/16"
    name = "network"
    description = "newer network"
}
resource "grid_deployment" "d1" {
  node = 2
  network_name = grid_network.net1.name
  ip_range = grid_network.net1.nodes_ip_range["2"]
  vms {
    name = "vm1"
    flist = "https://hub.grid.tf/tf-official-apps/base:latest.flist"
    cpu = 1
    publicip = true
    memory = 1024
    entrypoint = "/sbin/zinit init"
    env_vars {
      key = "SSH_KEY"
      value = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeq1MFCQOv3OCLO1HxdQl8V0CxAwt5AzdsNOL91wmHiG9ocgnq2yipv7qz+uCS0AdyOSzB9umyLcOZl2apnuyzSOd+2k6Cj9ipkgVx4nx4q5W1xt4MWIwKPfbfBA9gDMVpaGYpT6ZEv2ykFPnjG0obXzIjAaOsRthawuEF8bPZku1yi83SDtpU7I0pLOl3oifuwPpXTAVkK6GabSfbCJQWBDSYXXM20eRcAhIMmt79zo78FNItHmWpfPxPTWlYW02f7vVxTN/LUeRFoaNXXY+cuPxmcmXp912kW0vhK9IvWXqGAEuSycUOwync/yj+8f7dRU7upFGqd6bXUh67iMl7 ahmed@ahmedheaven"
    }
  }
  vms {
    name = "anothervm"
    flist = "https://hub.grid.tf/tf-official-apps/base:latest.flist"
    cpu = 1
    memory = 1024
    entrypoint = "/sbin/zinit init"
    env_vars {
      key = "SSH_KEY"
      value = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeq1MFCQOv3OCLO1HxdQl8V0CxAwt5AzdsNOL91wmHiG9ocgnq2yipv7qz+uCS0AdyOSzB9umyLcOZl2apnuyzSOd+2k6Cj9ipkgVx4nx4q5W1xt4MWIwKPfbfBA9gDMVpaGYpT6ZEv2ykFPnjG0obXzIjAaOsRthawuEF8bPZku1yi83SDtpU7I0pLOl3oifuwPpXTAVkK6GabSfbCJQWBDSYXXM20eRcAhIMmt79zo78FNItHmWpfPxPTWlYW02f7vVxTN/LUeRFoaNXXY+cuPxmcmXp912kW0vhK9IvWXqGAEuSycUOwync/yj+8f7dRU7upFGqd6bXUh67iMl7 ahmed@ahmedheaven"
    }
  }
}
output "wg_config" {
    value = grid_network.net1.access_wg_config
}
output "node1_container1_ip" {
    value = grid_deployment.d1.vms[0].ip
}
output "node1_container2_ip" {
    value = grid_deployment.d1.vms[1].ip
}
output "public_ip" {
    value = grid_deployment.d1.vms[0].computedip
}


```

Let's explain the file

### defining the required providers 
In terraform's global section 
```terraform
terraform {
  required_providers {
    grid = {
      source = "threefoldtech/grid"
      version = "0.1.0"
    }
  }
}

```
We tell it we want the threefoldtech grid provider, and version 0.10

### Initializing the provider
Providers can have different arguments e.g using which identity when deploying, which substrate network to crete contracts on, .. etc. This can be done in the provider section


```terraform
provider "grid" {
    twin_id = FROM THE CREATE TWIN STEP
    mnemonics = "FROM THE CREATE TWIN STEP" 
}
```
Please note you can leave its content empty and export everything as environment variables

```
export TWIN_IP=X
export MNEMONICS="....."

```


### describing the overlay network for the project

```terraform
resource "grid_network" "net1" {
    nodes = [2, 4]
    ip_range = "10.1.0.0/16"
    name = "network"
    description = "some network"
}
```
We tell terraform we will have a network spanning two nodes `having the node IDs 2 and 4` using the IP Range `10.1.0.0/16`

### describing the deployment


```terraform
resource "grid_deployment" "d1" {
  node = 2
  network_name = grid_network.net1.name
  ip_range = grid_network.net1.nodes_ip_range["2"]
  vms {
    name = "vm1"
    flist = "https://hub.grid.tf/tf-official-apps/base:latest.flist"
    cpu = 1
    publicip = true
    memory = 1024
    entrypoint = "/sbin/zinit init"
    env_vars {
      key = "SSH_KEY"
      value = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeq1MFCQOv3OCLO1HxdQl8V0CxAwt5AzdsNOL91wmHiG9ocgnq2yipv7qz+uCS0AdyOSzB9umyLcOZl2apnuyzSOd+2k6Cj9ipkgVx4nx4q5W1xt4MWIwKPfbfBA9gDMVpaGYpT6ZEv2ykFPnjG0obXzIjAaOsRthawuEF8bPZku1yi83SDtpU7I0pLOl3oifuwPpXTAVkK6GabSfbCJQWBDSYXXM20eRcAhIMmt79zo78FNItHmWpfPxPTWlYW02f7vVxTN/LUeRFoaNXXY+cuPxmcmXp912kW0vhK9IvWXqGAEuSycUOwync/yj+8f7dRU7upFGqd6bXUh67iMl7 ahmed@ahmedheaven"
    }
  }
  vms {
    name = "anothervm"
    flist = "https://hub.grid.tf/tf-official-apps/base:latest.flist"
    cpu = 1
    memory = 1024
    entrypoint = "/sbin/zinit init"
    env_vars {
      key = "SSH_KEY"
      value = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeq1MFCQOv3OCLO1HxdQl8V0CxAwt5AzdsNOL91wmHiG9ocgnq2yipv7qz+uCS0AdyOSzB9umyLcOZl2apnuyzSOd+2k6Cj9ipkgVx4nx4q5W1xt4MWIwKPfbfBA9gDMVpaGYpT6ZEv2ykFPnjG0obXzIjAaOsRthawuEF8bPZku1yi83SDtpU7I0pLOl3oifuwPpXTAVkK6GabSfbCJQWBDSYXXM20eRcAhIMmt79zo78FNItHmWpfPxPTWlYW02f7vVxTN/LUeRFoaNXXY+cuPxmcmXp912kW0vhK9IvWXqGAEuSycUOwync/yj+8f7dRU7upFGqd6bXUh67iMl7 ahmed@ahmedheaven"
    }
  }
}
```

It's bit long for sure but let's try to dissect it a bit 

```terraform
  node = 2
  network_name = grid_network.net1.name
  ip_range = grid_network.net1.nodes_ip_range["2"]
```

#### VMs 

in terraform you can define items of a list like the following

```
listname {

}
listname {

}
```
So to add a VM 

```terraform
  vms {
    name = "vm1"
    flist = "https://hub.grid.tf/tf-official-apps/base:latest.flist"
    cpu = 1
    publicip = true
    memory = 1024
    entrypoint = "/sbin/zinit init"
    env_vars {
      key = "SSH_KEY"
      value = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeq1MFCQOv3OCLO1HxdQl8V0CxAwt5AzdsNOL91wmHiG9ocgnq2yipv7qz+uCS0AdyOSzB9umyLcOZl2apnuyzSOd+2k6Cj9ipkgVx4nx4q5W1xt4MWIwKPfbfBA9gDMVpaGYpT6ZEv2ykFPnjG0obXzIjAaOsRthawuEF8bPZku1yi83SDtpU7I0pLOl3oifuwPpXTAVkK6GabSfbCJQWBDSYXXM20eRcAhIMmt79zo78FNItHmWpfPxPTWlYW02f7vVxTN/LUeRFoaNXXY+cuPxmcmXp912kW0vhK9IvWXqGAEuSycUOwync/yj+8f7dRU7upFGqd6bXUh67iMl7 ahmed@ahmedheaven"
    }
  }
```
- We give it a name within our deployment `vm1`
- define the flist to run within the VM
- define the cpu and memory
- define if it requires a public IP or not
- define the entrypoint which in most of the cases in `/sbin/zinit init`, but in case of flists based on containers it can be specific to each flist
- then we define te environment variables, in this example we define `SSH_KEY` to authorize me accessing the machine

Here we say we will have this deployment on node with `twin ID 2` using the overlay network defined from before `grid_network.net1.name` and use the ip range allocated to that specific node `2`

The file describes only the desired state which is `a deployment of two VMs and their specifications in terms of cpu and memory, and some environment variables e.g sshkey to ssh into the machine`


### output section



```terraform
output "wg_config" {
    value = grid_network.net1.access_wg_config
}
output "node1_container1_ip" {
    value = grid_deployment.d1.vms[0].ip
}
output "node1_container2_ip" {
    value = grid_deployment.d1.vms[1].ip
}
output "public_ip" {
    value = grid_deployment.d1.vms[0].computedip
}

```
Here we define the output variables we are interested in which most likely to be
- the overlay wireguard network configurations
- the private IPs of the VMs
- the public IP of the VM `exposed under computedip` 


## Running

to start the deployment `terraform init && terraform apply -parallelism=1`

## Changing
You can add more VMs or Disks and just do `terraform apply`

## Destroying
can be done using `terraform destroy`

And that's it!! you managed to deploy 2 VMs on the threefold grid v3





Now we can move on to showing an example of deployments on two nodes

```terraform
terraform {
  required_providers {
    grid = {
      source = "threefoldtech/grid"
      version = "0.1.0"
    }
  }
}

provider "grid" {
}


resource "grid_network" "net1" {
    nodes = [1, 2]
    ip_range = "172.20.0.0/16"
    name = "net1"
    description = "new network"
}

resource "grid_deployment" "d1" {
  node = 1
  network_name = grid_network.net1.name
  ip_range = grid_network.net1.deployment_info[0].ip_range
  vms {
    name = "vm1"
    flist = "https://hub.grid.tf/tf-official-apps/base:latest.flist"
    cpu = 1
    memory = 1024
    entrypoint = "/sbin/zinit init"
    env_vars {
      key = "SSH_KEY"
      value = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeq1MFCQOv3OCLO1HxdQl8V0CxAwt5AzdsNOL91wmHiG9ocgnq2yipv7qz+uCS0AdyOSzB9umyLcOZl2apnuyzSOd+2k6Cj9ipkgVx4nx4q5W1xt4MWIwKPfbfBA9gDMVpaGYpT6ZEv2ykFPnjG0obXzIjAaOsRthawuEF8bPZku1yi83SDtpU7I0pLOl3oifuwPpXTAVkK6GabSfbCJQWBDSYXXM20eRcAhIMmt79zo78FNItHmWpfPxPTWlYW02f7vVxTN/LUeRFoaNXXY+cuPxmcmXp912kW0vhK9IvWXqGAEuSycUOwync/yj+8f7dRU7upFGqd6bXUh67iMl7 ahmed@ahmedheaven"
    }

  }

}

resource "grid_deployment" "d2" {
  node = 2
  network_name = grid_network.net1.name
  ip_range = grid_network.net1.deployment_info[1].ip_range
  vms {
    name = "vm3"
    flist = "https://hub.grid.tf/tf-official-apps/base:latest.flist"
    cpu = 1
    memory = 1024
    entrypoint = "/sbin/zinit init"
    env_vars {
      key = "SSH_KEY"
      value = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeq1MFCQOv3OCLO1HxdQl8V0CxAwt5AzdsNOL91wmHiG9ocgnq2yipv7qz+uCS0AdyOSzB9umyLcOZl2apnuyzSOd+2k6Cj9ipkgVx4nx4q5W1xt4MWIwKPfbfBA9gDMVpaGYpT6ZEv2ykFPnjG0obXzIjAaOsRthawuEF8bPZku1yi83SDtpU7I0pLOl3oifuwPpXTAVkK6GabSfbCJQWBDSYXXM20eRcAhIMmt79zo78FNItHmWpfPxPTWlYW02f7vVxTN/LUeRFoaNXXY+cuPxmcmXp912kW0vhK9IvWXqGAEuSycUOwync/yj+8f7dRU7upFGqd6bXUh67iMl7 ahmed@ahmedheaven"
    }

  }
}

output "wg_config" {
    value = grid_network.net1.access_wg_config
}

output "node1_container1_ip" {
    value = grid_deployment.d1.vms[0].ip
}


output "node2_container1_ip" {
    value = grid_deployment.d2.vms[0].ip
}



```

It's the same but we created two deployments each has a VM


## Kubernetes

Kubernetes deployment can be quite difficult and requiring lots of experience, but I think we provided a very simple way to provision Kubernetes cluster on grid 3

```terraform
terraform {
  required_providers {
    grid = {
      source = "threefoldtech/grid"
      version = "0.1.0"
    }
  }
}

provider "grid" {
}

resource "grid_network" "net1" {
    nodes = [2, 4]
    ip_range = "10.1.0.0/16"
    name = "network12346"
    description = "newer network"
}

resource "grid_kubernetes" "k8s1" {
  network_name = grid_network.net1.name
  nodes_ip_range = grid_network.net1.nodes_ip_range 
  token = "12345678910122"
  ssh_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeq1MFCQOv3OCLO1HxdQl8V0CxAwt5AzdsNOL91wmHiG9ocgnq2yipv7qz+uCS0AdyOSzB9umyLcOZl2apnuyzSOd+2k6Cj9ipkgVx4nx4q5W1xt4MWIwKPfbfBA9gDMVpaGYpT6ZEv2ykFPnjG0obXzIjAaOsRthawuEF8bPZku1yi83SDtpU7I0pLOl3oifuwPpXTAVkK6GabSfbCJQWBDSYXXM20eRcAhIMmt79zo78FNItHmWpfPxPTWlYW02f7vVxTN/LUeRFoaNXXY+cuPxmcmXp912kW0vhK9IvWXqGAEuSycUOwync/yj+8f7dRU7upFGqd6bXUh67iMl7 ahmed@ahmedheaven"

  master {
    disk_size = 22
    node = 2
    name = "mr"
    cpu = 2
    publicip = true
    memory = 2048
  }
  workers {
    disk_size = 15
    node = 2
    name = "w0"
    cpu = 2
    memory = 2048
  }
  workers {
    disk_size = 13
    node = 4
    name = "w2"
    cpu = 1 
    memory = 2048
  }
  workers {
    disk_size = 13
    node = 4
    name = "w3"
    cpu = 1
    memory = 2048
  }
}


output "master_public_ip" {
    value = grid_kubernetes.k8s1.master[0].computedip
}

output "wg_config" {
    value = grid_network.net1.access_wg_config
}

```
Everything looks similar to our first example, the global terraform section, the provider section and the network section.

### grid kubernetes resource


```terraform
resource "grid_kubernetes" "k8s1" {
  network_name = grid_network.net1.name
  nodes_ip_range = grid_network.net1.nodes_ip_range 
  token = "12345678910122"
  ssh_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeq1MFCQOv3OCLO1HxdQl8V0CxAwt5AzdsNOL91wmHiG9ocgnq2yipv7qz+uCS0AdyOSzB9umyLcOZl2apnuyzSOd+2k6Cj9ipkgVx4nx4q5W1xt4MWIwKPfbfBA9gDMVpaGYpT6ZEv2ykFPnjG0obXzIjAaOsRthawuEF8bPZku1yi83SDtpU7I0pLOl3oifuwPpXTAVkK6GabSfbCJQWBDSYXXM20eRcAhIMmt79zo78FNItHmWpfPxPTWlYW02f7vVxTN/LUeRFoaNXXY+cuPxmcmXp912kW0vhK9IvWXqGAEuSycUOwync/yj+8f7dRU7upFGqd6bXUh67iMl7 ahmed@ahmedheaven"

  master {
    disk_size = 22
    node = 2
    name = "mr"
    cpu = 2
    publicip = true
    memory = 2048
  }
  workers {
    disk_size = 15
    node = 2
    name = "w0"
    cpu = 2
    memory = 2048
  }
  workers {
    disk_size = 13
    node = 4
    name = "w2"
    cpu = 1 
    memory = 2048
  }
  workers {
    disk_size = 13
    node = 4
    name = "w3"
    cpu = 1
    memory = 2048
  }
}

```
Here we describe the cluster 

it requires
- the network name
- nodes ip range 
- token is the cluster token
- ssh_key to access the cluster VMs


then we describe the VMs master and workers section in terms of 
- name within the deployment
- disk size
- node to deploy it on 
- cpu 
- memory

### Kubernetes outputs

```terraform
output "master_public_ip" {
    value = grid_kubernetes.k8s1.master[0].computedip
}

output "wg_config" {
    value = grid_network.net1.access_wg_config
}

```
We will be mainly interested in the master node public ip `computed IP` and the wireguard configurations

You can check the examples repo [here](https://github.com/threefoldtech/terraform-provider-grid/tree/development/examples)


### Current limitation

- [parallism=1](https://github.com/threefoldtech/terraform-provider-grid/issues/12)
- [windows  support](https://github.com/threefoldtech/terraform-provider-grid/issues/9)
- [increasing IPs in active deployment](https://github.com/threefoldtech/terraform-provider-grid/issues/15)
- [introducing new nodes to kuberentes deployment](https://github.com/threefoldtech/terraform-provider-grid/issues/13)
