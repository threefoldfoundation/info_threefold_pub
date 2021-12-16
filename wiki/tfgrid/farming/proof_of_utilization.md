
![](img/utilization_process.png)

# Proof-of-Utilization

Proof-of-utilization (PoU) is a type of consensus mechanism used by the ThreeFold Blockchain (TFChain) to achieve distributed consensus on the utilization of Internet capacity on the ThreeFold Grid. 

## What is Proof-of-Utilization? 

Proof-of-utilization is the underlying mechanisms that verifies the utilization of Internet capacity on the ThreeFold Grid. When users reserve Internet capacity, a smart contract is created to secure the Internet capacity on the ThreeFold Grid and dedicate it to their workloads. 

PoU is a unique algorythm that records the compute, storage and network requirements as defined by the users in TFChain. It uses minimal computational power to create blocks with smart contract information. You can think of PoU as attesting that "this Internet capacity is reserved to me". 

Every hour, the utilization is recorded in TFChain and the user is charded for the Internet capacity used on the ThreeFold Grid. 

## How does Proof-of-Utilization work?

1. A user reserves Internet capacity on a given set of 3Nodes. 
2. A smart contract containing the reserved CU, SU, NU and IPAdd amount, the user's wallet address is created.
3. The hashes verify the authenticity of the smart contract and stores in TFChain.
4. When the Internet capacity is utilized, the user's wallet is automatically debited and distributed according to the table below.

> Note: ThreeFold is planning to activate validator node contributions throughout Q1 2022. 

| Percentage | Description                            | Remark                                                                   |
| ---------- | -------------------------------------- | ------------------------------------------------------------------------ |
| 35% | TFT burning            | A mechanism used to maintain scarcity in the TFT economy.  |
| 10% | ThreeFold Foundation   | Funds allocated to promote and grow the ThreeFold Grid.    |
| 5%  | Validator Staking Pool | Rewards farmers that run TFChain 3.0 validator nodes.      |
| 50% | Solution providers & sales channel | managed by [ThreeFold DAO](tfdao).             |

## ThreeFold DAO rules in Relation To Proof-of-Utilization

- Each solution provider and sales channel gets registered in TFChain and as such the distribution can be defined and calculated at billing time.
- For billing purposes, ThreeFold DAO will check if it is from a known sales channel or solution provider. If yes, then the billing smart contract code will know how to distribute the TFTs. If the channel of solution provider is not known, then the 50% will go to a DAO owned Community Grant Wallet.
- The Community Grant Wallet allows for grants to the ThreeFold Community, ThreeFold DAO consensus needs to be achieved.
- For Certified Farming, [ThreeFold Tech](threefold_tech0) can define the solution & sales channel parameters, these are channels as provided by ThreeFold Tech.
- Burning can be lowered to 25% if too many tokens would be burned, ThreeFold DAO consensus needs to be achieved.

> Has to be confirmed by Wisdom Council. Will only be fully active starting TFGrid 3.1.

!!!def alias:proof_of_utilization