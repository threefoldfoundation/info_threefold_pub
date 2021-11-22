# Billing on ThreeFold Grid 3.0

In TFGrid 3.0 billing is in accordance with proof of utilization

!!!include:utility_token_model


## Use TFTs on Parity Substrate

As from v3.0, TFTs exist on TFChain, which is ThreeFold's blockchain on Parity Substrate.

These TFTs have the same value as on the Stellar network, there is a bridging mechanism in place that allows to transfer TFTs between the 2 blockchains, in both directions.

## Post-billing

All resource utilisation is registered on the TFChain. We can this [Proof Of Utilization](proof_of_utilization).

Deployers may choose to fund their wallets with large or small amounts at a time, according to their preferences.

Through this mechanism, post-billing becomes the standard way of paying for capacity on the ThreeFold Grid. Used hardware resources are calculated and paid for on an hourly base. Zero-OS sends a billing record to TF-Chain on an hourly basis, where it is registered. The first hour is being taken care of by Zero-OS, resulting in a post-billing payment scheme. 

These resources are a combination of cloud units : 

- Compute resources ("CU")
- Storage resources ("SU")
- Network resources ("NU")

and network address configuration :

- IPv4 addresses
- DNS, name on web gateways

## Discount on staked tokens

A personal staking mechanism has been put in place that provides token holders with discounts on the capacity they purchase.

![](img/grid3_staking_discount_.png ':size=600')

The discount is expressed in relation to the number of months one commits to use the ThreeFold Grid. By staking TFT, users express their loyalty to the ecosystem, and by buying TFT upfront they become like co-investors in the growth of the ThreeFold Grid. The amount of TFT staked will define the discount level. It will be possible for anyone to leave the personal staking pool at any point of time, evidently the discount gets lost as well then.

A more detailed overview of prices can be found [here](pricing).

!!!def alias:grid_billing

