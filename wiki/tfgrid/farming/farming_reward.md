![](img/farming_reward.jpg ':size=350x')

# Farming Reward 3.0

ThreeFold Farmers ("Farmers") are rewarded ThreeFold Token ("TFT") based on **Proof-of-Capacity**.

```python
TFT earned per month per node = 
    + CU farmed * CU farming reward 
    + SU farmed * SU farming reward 
    + NU used * NU farming reward
    + IPAddr used * IPAddr farming reward

```

> Please note that farmers can use their own provided capacity at minimal cost, see [Own Farm Utilization](proof_of_utilization).

## Proof-of-Capacity
 
The Proof-of-Capacity records Internet resources from the 3Node: 
- Compute Capacity (CPU)
- Memory Capacity (RAM)
- Storage Capacity (SSD/HDD)
- Network Capacity (Bandwidth, IP Addresses)
 
For making this Internet Capacity available, Farmers are rewarded with TFT. The proof-of-capacity is stored on a distributed storage system and hashed (fingerprinted). The hashes verify the authenticity of the report and are stored in the minting transactions of the blockchain. 4 days after the end of each month, the TFTs are transferred to the Farmer. The minting consensus needs to be achieved before minting can actually happen.

The CU, SU rewards are registered on the [ThreeFold Chain](tfchain) and do not change as long as the Farmer’s 3Node keeps on producing storage & compute capacity at required minimal up-time. The NU and Public Ip Addresses are rewarded as ThreeFold Grid users consume this capacity. This reward is dynamic and can change over time depending USD/TFT ratio as well as the average cost for the bandwidth for the Farmers.

| Unit                | description                                                       | rewards                  |
| ------------------- | ----------------------------------------------------------------- | ------------------------ |
| Compute Unit (CU)   | typically 2 vcpu, 4 GB mem, 50 GB storage                         | $REWARD_CU_TFT TFT/month |
| Storage Unit (SU)   | typically 1 TB of netto usable storage                            | $REWARD_SU_TFT TFT/month |
| Network Unit (NU)   | 1 GB of data transfered as used by TFGrid user for Public IP Addr | $REWARD_NU_TFT TFT/GB    |
| Public IPv4 Address | Public IP Address as used by a TFGrid user                        | $REWARD_IP_TFT TFT/hour  |

> **current TFT to USD price is $TFTUSD** ($NOW), is used to calculate the rewards above.

### Important Note

- Certified 3Node receives 25% more Farming Rewards.
- TFT pricing is pegged to USD (pricing changes in line with TFT/USD rate)
- Minimal SLA's need to be achieved before the farming reward can be earned (uptime, bandwidth, latency, ...) 
- TFT price for CU/SU is locked once Farming starts for a 3node (first boot & registration to blockchain) or at date of purchase when certified 3node.
- [Compute, Storage and Network](cloudunits) farmed  = Amount of Compute, Storage and Network available on the ThreeFold Grid with enough up-time.
- None of the Farming Rewards is related to how much a user pays for the capacity.

!!!include:staking_farmed_tft

## More Information

!!!include:utility_token_model

- [Farming Reward Calculator](farming_calculator)
- [Certified Farming](@certified_farming)
- [Cloud Units](cloudunits)

## Remarks

- The above described Farming Rewards are for ThreeFold Grid version 3.0 and will only apply for 3Nodes as registered in TF Chain.
- Above specifications will only be final once [Wisdom Council](wisdom_council) approves and ThreeFold Grid 3.x is on mainnet.
- Today almost all 3Nodes registered use [Farming Model 2](farming_reward2).
- More information about the upgrade see: [Upgrade from farming 2 to farming 3](farming_upgrade_2_3)

!!!def alias:farming_reward,farming_reward,farming_reward3,farming_reward

!!!tfpriceinfo