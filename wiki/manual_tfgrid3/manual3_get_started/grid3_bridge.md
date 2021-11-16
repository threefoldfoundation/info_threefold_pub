# Transferring TFT between Stellar and TF-Chain

!!!include grid3_portal_notice


> NOTE: We are working hard to have the runtime environments running in a fully stable manner. However, as we're still in test phase, it is recommended not to send too many tokens to TF-Chain for testing, until a further notice.

This document will explain how you can transfer TFT from TF-Chain to Stellar and back.

## Option 1 : Use the Bridge UI

A Web User interface is available to transfer tokens from TF-Chain to the Stellar network. 

- On [Testnet](https://bridge.test.grid.tf/), works with Stellar mainnet TFT
- On [Devnet](https://bridge.dev.grid.tf/), works with Stellar testnet TFT

### Transfer TFT from Stellar network to TF-Chain

Deposit TFTs from the Stellar network to TF-Chain needs to be done from your Stellar wallet, however, instructions are available in the [Stellar-TF-Chain Bridge](https://bridge.test.grid.tf/). To get the instructions, click on the `DEPOSIT FROM STELLAR` button. 

![](img/grid3_bridge_stellar_to_tfchain.png ':size=400')

Tokens need to be sent to the bridge address (on Testnet `GA2CWNBUHX7NZ3B5GR4I23FMU7VY5RPA77IUJTIXTTTGKYSKDSV6LUA4`), with a memo indicating the destination on TF-Chain. In most cases, you will send your tokens to the twin you have created on TF-Chain. 
So in case you have a twin defined which has the twin_ID = 123, add the memo text `twin_123` in your transfer.  

### Transfer TFT from TF-Chain to Stellar Network

In order to make the bridge work, you need to trust the Web UI that accesses the account you have created on the TF-Chain. 

![](img/grid3_bridge_trust_ui.png ':size=400')

Click on `Yes, allow this application access`.

Once done, you get the transfer screen. 

![](img/grid3_bridge_tfchain_to_stellar.png ':size=600')

Fill in the Stellar Address and the amount to transfer to your Stellar wallet, and click `WITHDRAW`. 

## Option 2 : Use the key generator

Using this method, only transfer is possible between accounts that are generated in the same manner and that are yours. Please find the keygen tooling for it below. 

### Prerequisites

- ed25519 keypair
- Go installed on your local computer

Create a keypair with the following tool: https://github.com/threefoldtech/tfchain_tft/tree/main/tfchain_bridge/tools/keygen

```
go build .
./keygen
```

### Stellar to TF-Chain

Create a Stellar wallet from the key that you generated.
Transfer the TFT from your wallet to the bridge address. A deposit fee of 1 TFT will be taken, so make sure you send a larger amount as 1 TFT.

Bridge addresses : 
- On mainnet : ... (to be completed)
- On testnet : `GA2CWNBUHX7NZ3B5GR4I23FMU7VY5RPA77IUJTIXTTTGKYSKDSV6LUA4` on [Stellar MAINnet](https://stellar.expert/explorer/public)
<!--- - On devnet :  `GCMBZY4NGEV4CQYHJ6SXMRSTLTEOR2ERNKY6NH32LYCVDCN2E5CXZJOU` on [Stellar TESTnet](https://stellar.expert/explorer/testnet) -->

The amount deposited on TF Chain minus 1 TFT will be transferred over the bridge to the TF-Chain account.

Effect will be the following :
- Transferred TFTs from Stellar will be sent to a Stellar vault account representing all tokens on TF-Chain
- TFTs will be minted on the TF-Chain for the transferred amount

#### Alternative Transfer to TF Chain

We also enabled deposits to TF Grid objects. Following objects can be deposited to:

- Twin
- Farm
- Node
- Entity

To deposit to any of these objects, a memo text in format `object_objectID` must be passed on the deposit to the bridge wallet. Example: `twin_1`. 

To deposit to a TF Grid object, this object **must** exists. If the object is not found on chain, a refund is issued.

### TF-Chain to Stellar

Create a TF-Chain account from the key that you generated. (TF Chain raw seed).
Browse to : 
- For testnet: https://polkadot.js.org/apps/?rpc=wss%3A%2F%2Ftfchain.test.grid.tf#/accounts 
- For mainnet: (to be completed)
<!--- - For devnet: https://polkadot.js.org/apps/?rpc=wss%3A%2F%2Ftfchain.dev.grid.tf#/accounts -->

-> Add Account -> Click on mnemonic and select `Raw Seed` -> Paste raw TF Chain seed.

Select `Advanced creation options` -> Change `keypair crypto type` to `Edwards (ed25519)`. Click `I have saved my mnemonic seed safely` and proceed.

Choose a name and password and proceed.

Browse to the [extrinsics](https://polkadot.js.org/apps/?rpc=wss%3A%2F%2Ftfchain.test.grid.tf#/extrinsics) <!--- or [Devnet](https://polkadot.js.org/apps/?rpc=wss%3A%2F%2Ftfchain.dev.grid.tf#/extrinsics) -->, select tftBridgeModule and extrinsic: `swap_to_stellar`. Provide your Bridge substrate address and the amount to transfer. Sign using your password.
Again, a withdrawfee of 1 TFT will be taken, so make sure you send an amount larger than 1 TFT.

The amount withdrawn from TF-Chain will be sent to your Stellar wallet.

Behind the scenes, following will happen:
- Transferred TFTs from Stellar will be sent from the Stellar vault account to the user's Stellar account
- TFTs will be burned on the TF-Chain for the transferred amount

Example: ![swap_to_stellar](img/swap_to_stellar.png ':size=400')