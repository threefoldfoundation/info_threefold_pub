In this example we will see how to deploy a single VM and expose it over the gateway on the Threefold grid v3

!!!include terraform_basics

## expose with prefix
```
terraform {
  required_providers {
    grid = {
      source = "threefoldtech/grid"
      version = "0.1.7"
    }
  }
}

provider "grid" {
}

# this data source is used to break circular dependency in cases similar to the following:
# vm: needs to know the domain in its init script
# gateway_name: needs the ip of the vm to use as backend.
# - the fqdn can be computed from grid_gateway_domain for the vm
# - the backend can reference the vm ip directly 
data "grid_gateway_domain" "domain" {
  node = 2
  name = "example2"
}

resource "grid_name_proxy" "p1" {
  node = 2
  name = "example2"
  backends = [format("http://137.184.106.152")]
  tls_passthrough = false
}
output "fqdn" {
    value = data.grid_gateway_domain.domain.fqdn
}

```

Here 
- we created a grid domain resource `example2` to be deployed on gateway node `2` to end up with a domain `example2.ghent01.devnet.grid.tf`
- we create a proxy for the gateway to send the traffic coming to `example2.ghent01.devnet.grid.tf` to the backend  `http://137.184.106.152`, we say `tls_passthrough is false` to let the gateway terminate the traffic, if you replcae it with `true` your backend service needs to be able to do the TLS termination


## expose with fulldomain

```
terraform {
  required_providers {
    grid = {
      source = "threefoldtech/grid"
      version = "0.1.7"
    }
  }
}

provider "grid" {
}


resource "grid_fqdn_proxy" "p1" {
  node = 2
  name = "workloadname"
  fqdn = "remote.omar.grid.tf"
  backends = [format("https://137.184.106.152:443")]
  tls_passthrough = true
}

output "fqdn" {
    value = grid_fqdn_proxy.p1.fqdn
}
```