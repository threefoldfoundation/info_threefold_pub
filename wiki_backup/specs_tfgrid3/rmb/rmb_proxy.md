# rmb-proxy

[RMB-proxy](https://github.com/threefoldtech/rmb-proxy) is our solution to provide full experience communicating with tfchain and zos nodes without having to use redis or yggdrassil by acting as HTTP proxy allowing clients to communicate with RMBs


- There will be two endpoints types, /{twinID}/zbus-cmd and /{twinID}/zbus-result?return_queue={retqueue}.
- The proxy server is yggdrasil-enabled, it resolves the yggdrasil ip of the twinID and forwards the message as-is to the destination rmb on the appropriate endpoint (e.g. /1/zbus-result?return_queue=q => http://[<twin1-ip>]:8051//zbus-result?return_queue=q).
- Not necessary to have redis or rmb running on the proxy server.
- No multiple destinations allowed.
- Should have TLS acme client builtin so no need to have a reverse proxy like caddy/nginx
