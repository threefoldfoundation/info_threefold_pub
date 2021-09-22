# Billing on ThreeFold Grid 3.0

The billing process has been completely reviewed compared to the previous versions of the ThreeFold Grid.

## Use TFTs on Parity Substrate

As from v3.0, TFTs exist on TFChain, which is ThreeFold's blockchain on Parity Substrate.
These TFTs have the same value as on the Stellar network, there is a bridging mechanism in place that allows to transfer TFTs between the 2 blockchains, in both directions.

## Proof of Utilisation (PoU)

While Farmers can increase their yields by selling their capacity themselves, PoU incentivises solution providers and sales channels with a portion of the proceeds to support the demand for capacity on the ThreeFold Grid. Solution providers can be decentralized software providers or IoT networks that use ThreeFold as an infrastructure layer in their offering.

PoU is split amongst different actors involved in the sales process of the Internet capacity:

- 60% goes to solution providers and sales channels that bring utilization of the internet capacity;
- 25% of the TFT gets burned to maintain a scarce token economy. With significant usage, the burn can even lead to deflation;
- 10% of the proceeds is earned by the Farmers, and if Farmers are able to sell their capacity themselves, they are also eligible to earn the sales channel reward;
- 5% is awarded to the Threefold Foundation for the promotion and marketing of the ThreeFold Grid and its available solutions.

Learn more about ThreeFold Tokenomics [here](tokenomics).

## Post-billing

TF Chain enables a new billing model, where deployers authorize a smart contract that allows nodes to bill their wallets directly on an incremental basis according to how much capacity is being used. All resource utilisation is registered on the TFChain.

Deployers may choose to fund their wallets with large or small amounts at a time, according to their preferences.

Through this mechanism, post-billing becomes the standard way of paying for capacity on the ThreeFold Grid. Used hardware resources are calculated and paid for on an hourly base. Zero-OS sends hourly a billing record to TF-Chain on an hourly basis, where it is registered. The first hour is being taken care of by Zero-OS, resulting in a post-billing payment scheme. 

These resources are a combination of cloud units : 
- Compute resources ("CU")
- Storage resources ("SU")
- Network resources ("NU")

and network address configuration :
- IPv4 addresses
- DNS, name on web gateways

## Discount on staked tokens

A personal staking mechanism has been put in place that provides token holders with discounts on the capacity they purchase.

![](img/grid3_staking_discount.png)

The discount is expressed in relation to the number of months one commits to use the ThreeFold Grid. By staking TFT, users express their loyalty to the ecosystem, and by buying TFT upfront they become like co-investors in the growth of the ThreeFold Grid. The amount of TFT staked will define the discount level. It will be possible for anyone to leave the personal staking pool at any point of time, evidently the discount gets lost as well then.

A more detailed overview of prices can be found [here](pricing).

!!!def alias:grid_billing
