
# Test setup

Steps to deploy a test scenario using zos3, yggdrasil,polkadot.


## Create twin

### Setup yggdrasil (optional to obtain public Ipv6 address)

!!!include planetary_network

### 1. Create account on substrate using polkadot

!!!include tfchain_init


## Start RMB (Reliable Message Bus)

- Clone the [RMB repo](https://github.com/threefoldtech/rmb)

- Run the [script to build a static binary for the rmb](https://github.com/threefoldtech/rmb/blob/master/build/alpine-static.sh) with the name `msgbusd`

- run RMB using

        ./msgbusd --twin <TWIN_ID>

## Get the javascript client
The javascript client can be found at [grid3_client_ts repo](https://github.com/threefoldtech/grid3_client_ts)

!!!include client_typescript_basics

## Deploy
- [example creating a zmachine](client_typescript_vm_example) 
- [example creating a kubernetes cluster](client_typescript_kubernetes_example)
- [Getting deployment result](deployment_get)

