# TF-Chain Portal

The portal is an easy interface containing all elements needed to create an account, a twin, money transfers on tfchain, and farm management, and can be found : 
- on [Devnet](https://portal.dev.grid.tf/)
- on [Testnet](https://portal.test.grid.tf/)
- on Mainnet : under construction

![](img/grid3_portal_account.png ':size=600')

## Install Polkadot extension

Before using the portal, you need to install a Polkadot extension. It can be installed from [here](https://polkadot.js.org/extension/). Extensions are available for the Google Chrome and Firefox browsers. 

## Create an Account

You will be asked to create a new account or to recover an existing account. 
When creating a new account, the mnemonic seed words will be shown, which can be used to recover your wallet. Keep them in a safe place, they give access to the TFTs that you will hold on the TFGrid. 

![](img/grid3_portal_create_account_1.png ':size=400')

In the next screen, you can choose a network. Select `Allow use on any chain`. Give your account a name and a password for easy access from your local hardware. With this information, the account can be generated. 

![](img/grid3_portal_create_account_2.png ':size=400')

Once the account is generated, you can see it in the portal. 

![](img/grid3_portal_overview.png ':size=600')

Click on `MANAGE` to continue. 

## Activate your Account 

You now have an account, but it's inactive and does not contain any TFT. Click on `ACTIVATE ACCOUNT`, this will result in TFT being known in your account. 

![](img/grid3_portal_activate_account.png ':size=300')


## Create a Twin

A twin is a unique identifier of where you can be found digitally. Click on `CREATE TWIN` to register your Twin on TF-Chain. 

![](img/grid3_portal_create_twin.png ':size=600')

In the future, there will be more automation to fill in the Twin IP with the IPv6 address from your local device. For now, please fill in the IPv6 address obtained during the setup of the [Planetary Network](grid3_planetary_network). 

![](img/grid3_portal_twin_ipv6.png ':size=400')

Submit the transaction using the password selected when creating the account.

The TwinIP can be modified at any moment. 

## Create a Farm

If you want to start farming, you need a farmID, the ID of the farm that is owning the hardware node(s) you connect to the TFGrid. 

Click `CREATE FARM` and choose a name. 

![](img/grid3_portal_farm.png ':size=600')

![](img/grid3_portal_create_farm.png ':size=300')

Click `CREATE` and sign the action. 

The farm is by default set up as 'DIY'. A farm can become certified through certification program. More info to be found [here](farming_certified_requirements).
Also a pricing policy is defined. Pricing policy is currently the same for all farms, the field is created for future use. 

## Add a public IP to your Farm

If you have public IPv4 addresses available that can be used for usage on the TFGrid, you can add them in your farm. 
Click `ADD IP`, specify the addresses, the gateway and click `CREATE`. 

![](img/grid3_portal_ip_add.png ':size=600')
![](img/grid3_portal_ip_add_detail.png ':size=300')

Deleting IPv4 addresses is also possible here. The `Deployed Contract ID` gives an indication of whether an IP is currently used. If it is 0, it is safe to remove it. 

![](img/grid3_portal_ip_result.png ':size=400')

## Add a Stellar address for payout

In a first phase, farming of tokens still results in payout on the Stellar network. So to get the farming reward, a Stellar address needs to be provided. 

![](img/grid3_portal_farm0.png ':size=600')

![](img/grid3_portal_stellar.png ':size=600')

## Generate your node bootstrap image

Once you know your farmID, you can set up your node on TFGrid3. Click on `Take me to bootstrap page`.

## Edit your Twin

A twinIP can be edited at any moment. Simply update the field and sign afterwards. 

## Transfer TFT between Stellar Network and TF-Chain

A minimum amount of TFT is sponsored for the initial setup, but as every action on TF-Chain requires some small TFT amount, TFT can be sent over from the Stellar network. 
Also, capacity that is reserved is paid to the Substrate account. For multiple reasons (selling, storing, ...) you might need to transfer this amount to the Stellar network. There is a bridge between the two blockchains available, and transfers can be launched as indicated below. 

### Deposit

A deposit of tokens from the Stellar network onto TF-Chain needs to happen from a Stellar wallet, like in the ThreeFold Connect App. Instructions are given how to do it: money needs to be sent to the bridge account, specifying in the memo field the twinID that was generated with the Twin creation. 

1 TFT will be withdrawn from a transfer over the bridge. 

![](img/grid3_portal_deposit_tft.png ':size=400')

### Withdraw 

Sending tokens to the Stellar network can happen from this portal, after indicating the destination address and the amount to be transferred. 

1 TFT will be withdrawn from a transfer over the bridge. 

![](img/grid3_portal_withdraw_tft.png ':size=400')

Click on `SUBMIT WITHDRAW` and sign using your password. 

![](img/grid3_portal_transaction_sign.png ':size=400')

## Capacity Explorer

In the upper right corner, you can click on `CAPACITY EXPLORER` to get a view of all capacity connected to TFGrid v3. For more info, see [here](grid3_explorer).
