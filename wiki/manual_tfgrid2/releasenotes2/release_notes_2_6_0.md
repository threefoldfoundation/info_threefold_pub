
 # ThreeFold Cloud 2.6
 
Live on testnet - April 2, 2021.

## JS-SDK v11.2.0

### Component Upgrades
- [3Bot Deployer](https://github.com/threefoldtech/js-sdk/tree/development/jumpscale/packages/threebot_deployer)
- [Solution Marketplace](https://github.com/threefoldtech/js-sdk/tree/development/jumpscale/packages/marketplace)
- [Virtual Datacenter VDC](https://github.com/threefoldtech/js-sdk/tree/development/jumpscale/packages/vdc)

#### VDC v2.6.0 
- VDC Backup feature: manual and auto back up, enable switching between back ups.
- Auto rediirect to VDC solution deployment page via Marketplace website
- Auto balance-check feature before deploying vdc to ensure sufficient tokens
- Added user notification for new vdc updates
- Reenabled external etcd usage for VDC
- Allow VDC Deployment using chosen farm
- Transaction fee reduction to 0.01 TFT
- Payment: Added Transaction History page
- Payment: Added Wallet QR Scan for balance top up
- Marketplace solution: Presearch node deployment improvement
- Marketplace solution: Taiga SSO using TF Connect Authentication
- Marketplace solution: Discourse SSO using TF Connect Authentication
- Marketplace solution: Added Matic (Full/Sentry Node) solution deployment

#### 3Bot SDK v2.6.0
- New chatflows on network management and capacity pool
- Farm management custom prices support
- New Kubernetes support for public IPs
- More sizes support for Kubernetes deployment
- Email notification for expiring pools empty wallets
- Rebranded 3Bot Marketplace as 3Bot Apps
