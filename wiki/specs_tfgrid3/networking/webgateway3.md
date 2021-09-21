# WebGateway 3.0

- choose a suitable web proxy solution (traefik?)
- create primitive datastructure to send to web proxy over RMB for provisioning
- register workload as part of smart contract concept on Substrate
- bill bandwidth per deployment as used on web proxy

## concept

- doing http(s) proxy towards planetary network or other ipv6 enabled backend
- if pnet then traffic is end2end encrypted, at back its http or https
- when https on full domain only, then https forwarding is possible (so no SSL offload) = user needs to arrange certificate
- user can select name (domain or just name), which is unique globally, see [pricing table](tfgrid:pricing)
- http(s) goes to any specified ipv6 address on back (can be planetary network or even public ipv6 addr)
- measurementis done per name and GB are being billed for user.
- each wgw has unique domain name $location$nr.grid.tf e.g. dubai1.grid.tf
- everyone with one or more ipaddr can put wgw's 

## requirements for web proxy part

- few binaries, as contained as possible
- only param needed = farmid + mnemonic of account which owns farm

## billing remarks

- farmer receives for traffic going to/from webgateway see [reward](tfgrid:pricing)
- the user gets billed in line with [pricing](tfgrid:pricing) (per GB)

## blockchain rewards

- each webgateway can be registered with 1 or more IPv4 addr

## primitive workload def

- name.$webgatewayurl or full domain name to backend ip addr (ipv6 backend)
- backend can be ipaddr:port over http or https
- which webgateways to be used + which ip addr to be used (because proxy can have multiple ip addr)
- max nr of GB per month (protection for user,so user can make sure not to go over certain limit, once limit reached no more traffic accepted)

> TODO: define & link to the spec

## TODO:

- [ ] choose proxy
- [ ] spec how to implement on blockchain
- [ ] spec how to gather billing info 
- [ ] spec how to gather info to reward farmer
- [ ] spec how to do provisioning

!!!def alias:webgateway3,wgw3,wgw
