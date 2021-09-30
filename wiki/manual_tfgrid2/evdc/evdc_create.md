# Create a eVDC

You can create your own edge Virtual Data Center in just a few clicks.

Go to the [eVDC deployer website](https://vdc.testnet.grid.tf) and log in using your [Threefold Connect App](threefold_connect).


You'll see the option to deploy your own Virtual Data Center.

![](img/00_vdc_homepage.jpg ':size=600') 

## Steps

To create your eVDC, click `Deploy a VDC`.

You'll have to provide a few pieces of information: a name, a secret password, and the size of your eVDC (can be edited over time). 

![](img/01_vdc_selection.jpg ':size=600')

Then the eVDC will set-up autonomously, and you should be able to deploy workloads on top of it after you issue the payment.

You can pay by scanning the QR code on the Threefold Connect app.

> Note: Only ThreeFold Connect can read the QR info; address, amount, currency and memo text. We do not guarantee that this QR code is readable by other Stellar wallets. 

The amount to be paid is calculated according to your eVDC [monthly package](evdc_pricing)

![](img/02_vdc_payment2.jpg ':size=600')

> This may fail to get the payment through, [Detailed description of the payment issue](https://forum.threefold.io/t/3bot-and-evdc-provisioning-unreliable/1131/2)

> [Make sure the From field is populated](https://github.com/threefoldtech/threefold_wallet/issues/258)
After the payment is issued, many actions will be autonomously taken cared of by the system:

- The requested capacity is reserved.
- The VDC wallets are generated to allow you to extend the reservation of your capacity.
  - A 'prepaid' wallet is created for you to fund the capacity made available by the server provider. 
  - A 'provisioning' wallet is created for you to hold the tokens needed to reserve future capacity according to a predefined plan, ensuring sufficient funding is available for two weeks of operation.
- A public IP address is reserved for your cluster to become available to the outside world.
- A Kubernetes (K3S) instance is deployed on your eVDC.

Once the above steps are copleted, your eVDC will be ready for exploitation. A kubeconfig file is also generated and can be downloaded.

> Note: keep this file secure and safe, as it contains all the information required to share access to your Kubernetes cluster.

![](img/08_vdc_deploy_success2.jpg ':size=600')

## More Info:

  - [Access your VDC](evdc_access) - How to access your eVDC.
  - [Your VDC Admin Panel](evdc_my_evdc) - An introduction to your Admin Panel.
  - [Manage Compute Nodes](evdc_compute) - An overview of how to manage your peer-to-peer compute nodes.
  - [Manage Storage Nodes](evdc_storage) - An overview of how to manage your peer-to-peer storage nodes.
<<<<<<< HEAD
  - [Wallet](evdc_wallet) - An overview of how to manage your wallet.
=======
  - [Wallet](evdc_wallet) - An overview of how to manage your wallet.

>>>>>>> development