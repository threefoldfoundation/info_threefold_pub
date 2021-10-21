# Transferring TFT between Stellar and TF-Chain

## Usage

This document will explain how you can transfer TFT from TF Chain to Stellar and back.
For now, only transfer is possible between accounts that are generated in the same manner and that are yours. Please find the keygen tooling for it below. 

## Prerequisites

- ed25519 keypair
- Go installed on your local computer

Create a keypair with the following tool: https://github.com/threefoldtech/tfchain_tft/tree/main/tfchain_bridge/tools/keygen

```
go build .
./keygen
```

## Stellar to TF Chain

Create a Stellar wallet from the key that you generated.
Transfer the TFT from your wallet to the bridge address. A deposit fee of 1 TFT will be taken, so make sure you send a larger amount as 1 TFT.

Bridge addresses : 
- On mainnet : ... (to be completed)
- On testnet : `GA2CWNBUHX7NZ3B5GR4I23FMU7VY5RPA77IUJTIXTTTGKYSKDSV6LUA4` on [Stellar MAINnet](https://stellar.expert/explorer/public)
- On devnet :  `GCMBZY4NGEV4CQYHJ6SXMRSTLTEOR2ERNKY6NH32LYCVDCN2E5CXZJOU` on [Stellar TESTnet](https://stellar.expert/explorer/testnet)

The amount deposited on TF Chain minus 1 TFT will be transferred over the bridge to the TF-Chain account.

Effect will be the following :
- Transferred TFTs from Stellar will be sent to a Stellar vault account representing all tokens on TF-Chain
- TFTs will be minted on the TF-Chain for the transferred amount

## TF-Chain to Stellar

Create a TF-Chain account from the key that you generated. (TF Chain raw seed).
Browse to https://polkadot.js.org/apps/?rpc=wss%3A%2F%2Ftfchain.test.threefold.io#/accounts -> Add Account -> Click on mnemonic and select `Raw Seed` -> Paste raw TF Chain seed.

Select `Advanced creation options` -> Change `keypair crypto type` to `Edwards (ed25519)`. Click `I have saved my mnemonic seed safely` and proceed.

Choose a name and password and proceed.

Browse to https://polkadot.js.org/apps/?rpc=wss%3A%2F%2Ftfchain.test.threefold.io#/extrinsics , select tftBridgeModule and extrinsic: `swap_to_stellar`. Provide your Bridge substrate address and the amount to transfer. Sign using your password.
Again, a withdrawfee of 1 TFT will be taken, so make sure you send an amount larger than 1 TFT.

The amount withdrawn from TF-Chain will be sent to your Stellar wallet.

Behind the scenes, following will happen:
- Transferred TFTs from Stellar will be sent from the Stellar vault account to the user's Stellar account
- TFTs will be burned on the TF-Chain for the transferred amount

Example: ![swap_to_stellar](img/swap_to_stellar.png)
