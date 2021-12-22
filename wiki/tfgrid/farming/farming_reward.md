![](img/farming_rewards_.png ':size=350x')

# Farming Reward 3.0

The amount of ThreeFold_Token earned by farmers is relative to the amount of compute, storage or network capacity they provide to the ThreeFold Grid as recorded by the proof-of-capacity algorythm. This section covers some farming and token reward basics. 

## How do farmer earn TFT? 

ThreeFold Blockchain (TFChain) rewards farmers for providing Internet capacity and expanding the ThreeFold Grid. They earn ThreeFold_Token. 

Every month, the consensus mechansim proof-of-capacity registers approximately 30 blocks on the blockchain, each block representing the record of Internet capacity provided to the network.

When successfully verified by proof-of-capacity, farmers earn TFT according to the amount of Internet capacity registered in TFChain.

## Proof-of-Capacity
 
The Proof-of-Capacity records Internet resources from the 3Node: 
- Compute Capacity (CPU)
- Memory Capacity (RAM)
- Storage Capacity (SSD/HDD)
- Network Capacity (Bandwidth, IP Addresses)

For making this Internet Capacity available, Farmers are rewarded with TFT. 4 days after the end of each month, the TFTs are transferred to the Farmer. The minting consensus needs to be achieved before minting can actually happen.

## How are farming rewards calculated?

These different types of Internet capacity are then translated into compute units (CU), storage units (SU), Network units (NU) and IP addresses (IPAddr) to calculate farming rewards. 

The formula to calculate farming rewards is the following:

```python
TFT earned per month = 
    CU farmed * CU farming rewards 
    + SU farmed * SU farming rewards
    + NU used * NU farming rewards
    + IPAddr used * IPAddr farming rewards

```
The below table expands on CU, SU, NU and IPAddr and their farming rewards:

| Unit                | description                                                       | v3 farming rewards          |
| ------------------- | ----------------------------------------------------------------- | ------------------------ |
| Compute Unit (CU)   | typically 2 vcpu, 4 GB mem, 50 GB storage                         | $REWARD_CU_TFT TFT/month |
| Storage Unit (SU)   | typically 1 TB of netto usable storage                            | $REWARD_SU_TFT TFT/month |
| Network Unit (NU)   | 1 GB of data transfered as used by TFGrid user for Public IP Addr | $REWARD_NU_TFT TFT/GB    |
| Public IPv4 Address | Public IP Address as used by a TFGrid user                        | $REWARD_IP_TFT TFT/hour  |

> **The rewards above are calculated according to the current TFT to USD price of $TFTUSD** ($NOW).

The above farming rewards apply for 3Nodes registered in TFChain for ThreeFold Grid v3. Anyone can calculate their potential rewards using the [Farming Reward Calculator](farming_calculator). 

The same CU, SU, NU and IPAddr principles apply to the sales of Internet capacity in the form [cloud units](cloudunits).

!!!include:staking_farmed_tft

### ThreeFold DAO rules for Farming Rewards

- Farming rewards are pegged to USD and registered in TFChain when a 3Nodes is registered. 
- Farming rewards in TFT remain fixed for a duration of 5 years.
- For certified 3Nodes, the farming rewards are specified at the time of the sales/promotion. This process is managed by threefold_tech.
- All CU/SU rewards are staked until 30% of the Internet capacity is used over a period of 3 months or unitl 24 months post-registration. 
- If a 3Node achieves 30% for 3 months but month after is again lower, then staking will happen again.
- Farming rewards are not related to the sales price of [Cloud Units](cloudunits).
- Farmers can also use their own Internet capacity at minimal cost. Learn more on [Personal Farm Utilization](proof_of_utilization).
- The big majoriy of 3Nodes are still registered on the [ThreeFold Grid v2 farming reward](farming_reward2). The transition to ThreeFold Grid v3 farming rewards is expected for Q4 2021 - Q1 2022. More information about the upgrade can be found [here](farming_upgrade_2_3).

> The above DAO rules for farming rewards need to be confirmed by the Wisdom Council and shall be active as of ThreeFold Grid v3.1. 

**Additions to farming rewards (coming soon)**

- How to improve the calculation of CU rewards to mitigate the difference in power provided between new and old hardware. 
- The above described Farming Rewards are for ThreeFold Grid version 3.1 on mainnet and will only apply for 3Nodes as registered in TF Chain for mainnet 3.1. Before this all farming is done using 2.x farming rules even on 3.x Testnet and 3.0 mainnet.
- Above specifications will only be final once [Wisdom Council](wisdom_council) approves and ThreeFold Grid 3.1 is on mainnet.
- All 3nodes for tfgrid 2.0, testnet 3.x and mainnet 3.0 use [Farming Model 2](farming_reward2).
- More information about the upgrade see: [Upgrade from farming 2 to farming 3](farming_upgrade_2_3)


> DISCLAIMER: ThreeFold Foundation organizes this process. This process is the result of the execution of code written by open source developers (zero-os and minting code) and a group of people - who checks this process voluntarily. No claims can be made or damages asked for to any person or group related to ThreeFold Foundation like but not limited to the different councils.

!!!def alias:farming_reward,farming_reward,farming_reward3,farming_reward

!!!tfpriceinfo

