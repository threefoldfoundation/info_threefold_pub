 # ThreeFold Cloud 2.5

Live on testnet - February 28, 2021.

## Component Upgrades

### JS-SDK v11.2.0
- [3Bot Deployer](https://github.com/threefoldtech/js-sdk/tree/development/jumpscale/packages/threebot_deployer)
- [Solution Marketplace](https://github.com/threefoldtech/js-sdk/tree/development/jumpscale/packages/marketplace)
- [Virtual Datacenter VDC](https://github.com/threefoldtech/js-sdk/tree/development/jumpscale/packages/vdc)

#### VDC v2.5.0 
- Marketplace is now the default view for the VDC dashboard
- `Update Dashboard` button
- Blockchain solution: Digibyte and Presearch 
- Transaction History: `List Transaction` button 
- TF Connect sign-in for most solutions on the Marketplace: Gitea, Peertube, Cryptpad, Zero-CI, Mattermost
- Back up/restore feature on the VDC
- Updates Notification for new updates
- QR Scan Top up
- ZDBs expose over public IPv4
- Kubernetes autoscaling
- External etcd datasource for Kubernetes (config manager support, solution / cluster support)

#### 3Bot SDK v2.5.0
- New chatflows on network management and capacity pool
- Farm management custom prices support and 3Bot deal
- New Kubernetes support for public IPs
- More sizes support for Kubernetes deployment
- Email notification for expiring pools and empty wallets
- Rebrand 3Bot Marketplace as 3Bot Apps

### JS-NG v11.2.0
- ETCD backend support
- Mongo backend support

### JS-Ansible v0.1.0
- Ansible modules that create an IT automation capability
- One-to-one mapping with the grid
- Added on generic modules
 identity, wallet, pool, network, volume, container, ipv4, k8s, zdb, subdomain, tcp reverse proxy, 4to6, workloads
- Add to helper modules: node selection scheduler, IP management, and metadata management

### TFGateway v0.3.9
- Nameservers validations 
- Domains validation
- Ownership validation
