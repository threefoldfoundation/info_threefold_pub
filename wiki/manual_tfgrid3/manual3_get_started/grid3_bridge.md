# Transferring TFT between Stellar and TF Chain

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
Transfer the TFT from your wallet to the bridge address `GCMBZY4NGEV4CQYHJ6SXMRSTLTEOR2ERNKY6NH32LYCVDCN2E5CXZJOU` . A depositfee of 1 TFT will be taken, so make sure you send a larger amount as 1 TFT.

> __Remark__ : `GCMBZY4NGEV4CQYHJ6SXMRSTLTEOR2ERNKY6NH32LYCVDCN2E5CXZJOU` is the bridge address on Stellar TESTnet, it's only usable on tfchain devnet, not on tfchain testnet nor mainnet (which are both linked to Stellar mainnet) !

The amount deposited on TF Chain minus 1 TFT will be transferred over the bridge to the TF-Chain account.

## TF-Chain to Stellar

Create a TF-Chain account from the key that you generated. (TF Chain raw seed).
Browse to https://polkadot.js.org/apps/?rpc=wss%3A%2F%2Ftfchain.dev.threefold.io#/accounts -> Add Account -> Click on mnemonic and select `Raw Seed` -> Paste raw TF Chain seed.

Select `Advanced creation options` -> Change `keypair crypto type` to `Edwards (ed25519)`. Click `I have saved my mnemonic seed safely` and proceed.

Choose a name and password and proceed.

Browse to https://polkadot.js.org/apps/?rpc=wss%3A%2F%2Ftfchain.dev.threefold.io#/extrinsics , select tftBridgeModule and extrinsic: `swap_to_stellar`. Provide your substrate address and amount.
Again, a withdrawfee of 1 TFT will be taken, so make sure you send a larger amount as 1 TFT.

The amount withdrawn from TF Chain will be sent to your stellar wallet.

Example: ![swap_to_stellar](swap_to_stellar.png)