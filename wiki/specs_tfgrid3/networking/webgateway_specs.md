# Technical specs

## On chain
There are two contracts the user must create:

- NameContract: this is a `name` reservation. This name must be valid domain name (no dots) since it will be used as a prefix to the FQDN for the workload. (ie: `azmy`, `kristof`, etc ...) once this NameContract is created the name will be tight to a certain account. The user then will `own` the name as long as the contract live. An account that owns this name can then deploy gateway workloads that uses this name.
  - NameContract is billed on the chain (per hour ?), once the fund is depleted. the contract state should set to `out-of-fund` where the name should still be reserved for this user but **can not** be used to create web-gateway workloads.
  - On `out-of-fund`, current web-gateway workloads must then also stop serving traffic for that name
  - If NameContract is canceled by the user, the name should be released and should be possible to reserve again by this or other accounts.
  - NameContract is **NOT** related to the web-gateway workload or proxying, it's only about the ownership of the name. Similar to buying a domain name, which doesn't mean this domain is served or even translate to an IP.
- NodeContract; This (as you man noticed) is the same contract type used with normal zos workloads. The NodeContract carries a deployment definition, and it's billing facilities. Basically a NodeContract is created to actually deploy workloads on the grid.
  - NodeContract is created with a `name` (this must be owned by the user with an __active__ NameContract), and a valid IPv6 (either public ipv6 or yggdrasil IP)
  - The web-gateway consumption will be reported normally to the NodeContract. This include
    - Fees for serving the workload and tls off loading
    - Amount of traffic served for that name.

> NOTE: until the writing of this document it's still not decided if the web-gateway workload is going to be handled by ZOS itself, or we going to have a stand alone web-gateway service that can be hosted anywhere. There is a section about the pros and cons of each approach.

## WebGateway workload


- `gateway-name` this type service the `<name>.<gateway.domain>`
```json
{
    "name": <name-contract-id>,
    "backend": "<ipv6>:port",
}
```

- `gateway-fqdn` this type service `<fqdn>` owned by the user.
```json
{
    "fqdn": <fqdn>,
    "backend": "<ipv6>:port",
    "http": <bool>, // is this really needed?
}
```

> NOTE: this is the simplest form of the workload definition. And is subject to change to support TCP forwarding.

## WebGateway operation
The web gateway to be operational need to do the following main tasks:
- Answer dns query for `<gateway.domain>`, and serve information object about web-gateway version, node id (on chain). served domain name.
- Answer dns queries for `<name>.<gateway.domain>`
- TLS off loading
- Traffic forwarding to terminating address this can either be running on a public IPv6 or an Yggdrasil address.

### Components of a web-gateway
- DNS
 - This will always answer domain queries with the correct web-gateway IP. Only configured (deployed) names must be answered.
- Proxy (traefik?)
 - This will be dynamically configured to forward traffic as configured by the workloads.
 - TLS off loading (letsencrypt)
- Monitoring
 - Collect traffic information per domain

## Discussion
### Standalone WebGateway VS. Builtin inside ZOS
Currently there are two approaches to implement this
- [x] Built in zos
- [ ] Stand alone web-gateways

We need to decide which one to implement since it won't be possible to support both approaches

> NOTE: it has beed decided to build gateway as part of zos, we will still keep this comparison for completion
#### Builtin ZOS
This has lots of benefits:
- ZOS already work against contracts, and adding a new work-load type is a trivial task.
- Billing and capacity reporting is already built in
- ZOS can have public config (public ip) this can be extended to also accept a base domain name (like `gent01.devnet.tf`).
- ZOS already has yggdrasil network integrated

#### Standalone
- Can run anywhere
- User must maintain the pre-requirements (running the basic services like yggdrasil, redis, etc...)
- Billing, reporting and such need to be implemented (although a lot of code can be re-used from zos)

### Builtin ZOS
ZOS can be configured to have public ip configured. Any zos with public config should be able to serve gateway workload(s).

The farmer can add a domain config for the node as part of it's public config. The farmer also **must** make sure a prober `NS` record is added that point the domain to the node public IP.

When zos public-config is set, it will make sure to run 2 service **inside** it's public namespace.
- the proxy of choice
- the dns service

The proxy will always serve the information page for the node on the `Host: <domain.for.node>` this information is a json object with web-gateway information like the domain. and other web-gateway related information

ZOS can then process web-gateway workload(s)

- On workload of web-gateway type is received, validation is done to make sure:
  - User actually own the name (validate the NameContract)
  - Make a call to the web-gateway damon (new)  daemon that is maintaining both dns and proxy config
- The gateway daemon, will then apply the required config to both proxy and dns.

## Need to be done on zos
- Add new web-gateway type with proper parameters
- Build a gateway daemon. this one need to:
  - Start the proxy with the correct initial configuration
  - Abstracts configuration for the actual proxy server
  - Add/Remove routes (based on reserved names)
  - Providing metrics for consumed traffic ? (need investigation)
- Build handler for the new web-gateway workload type.
  - Validate ownership of the name (against blockchain)
  - Make prober call to gateway daemon to add/remove route.
- Consumption reports
  - Special handler for the gateway-type to get consumption report
    from gateway daemon for this specific workload
## Components to work with
- Proxy: to be selected currently studying traefik and so far looks like a very good option
- DNS: dnsmasq ?
