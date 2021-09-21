![](img/farming_reward.png ':size=350x')

# Farming Reward 3.0

Farmers are rewarded TFT based on **Proof-of-Capacity** and **Proof-of-Utilization**

```python
TFT earned per month per node = 
    #proof of capacity
    + CU farmed * CU farming reward 
    + SU farmed * SU farming reward 
    #proof of utilization
    + NU used * NU farming reward
    + IPAddr uses * IP Addr utilization reward
    + channel reward * revenue

revenue =  CU sold * CU price + SU sold * SU price

```

- [CU/SU = storage and compute units](cloudunits) farmed  = amount CU,SU available to TFGrid with enough uptime = **Proof-of-Capacity**
- farming reward = is the reward as specified below.
- Channel Reward = 50% if you found a buyer for your CU/SU/NU capacity, otherwise defaults to 10%
- CU/SU sold = the amount of CU,SU as sold per month = **Proof-of-Utilization**
- [CU/SU price](cloudunits_pricing) = the price as defined for each CU,SU by wisdom_council


## Proof-of-Capacity

A connected 3Node produces CU and SU for the TFgrid.
The farmer gets rewarded to make this capacity available.

|       Unit        |                description                |         default          |
| ----------------- | ----------------------------------------- | ------------------------ |
| Compute Unit (CU) | typically 2 vcpu, 4 GB mem, 50 GB storage | $REWARD_CU_TFT TFT/month |
| Storage Unit (SU) | typically 1 TB of netto usable storage    | $REWARD_SU_TFT TFT/month |


- certified is 25% more (1+25%)
- TFT pricing pegged to USD (pricing changes in line with TFT/USD rate)
- **current TFT to USD price is $TFTUSD** , calculated on $NOW
- Minimal SLA's need to be achieved before the farming reward can be earned (uptime, bandwidth, latency, ...)
- More info see [Farming Hardware Calculator](farming_calculator)
- TFT price for CU/SU is locked once farming starts for a 3node (first boot & registration to blockchain) or at date of purchase when certified 3node.
- [CU](cloudunits) = based on  Compute Capacity (CPU) and Memory Capacity (RAM) available
- [SU](cloudunits) = based on Storage Capacity (SSD/HDD) available

!!!include:staking_farmed_tft

<!-- - [farming reward to USD calculated here](https://secure.threefold.me/sheet/#/2/sheet/view/fKtztayZuHQ--qqU2Jg0xGpELaYcKnyKzGkxPir+Nho/embed/) -->

## Proof-of-Utilization

Users use the compute, storage and network capacity on the TFGrid, this also results in benefits for the farmer.

|       Unit        |                  description                   |      diy      |
| ----------------- | ---------------------------------------------- | ------------- |
| Network Unit (NU) | 1 GB of data transfered as used by TFGrid user | $REWARD_NU_TFT TFT/GB    |
| IPv4 Address      | Public IP Address as used by a TFGrid user     | $REWARD_IP_TFT TFT/hour |
| Revenue           | TFGrid Storage & Compute Utilization Revenue   | 10-50%        |

- certified is 25% more (1+25%)
- Network traffic (NU) is measured on public ipv4 address on Zero-OS and on webgateway3 level for all public interfaces (from TFGrid 3.0 Mainnet)
  - Farming for IPv4 addresses will be from TFGrid 3.0 Mainnet (maybe already testnet).
  - Farming reward is variable over time (unlike CU/SU which is locked when node is registered).
- Revenue: The farmer get's 10-50% of the [Cultivation Flows = revenue](cultivation_flow) for **CU/SU**.
  - TFGrid users consume [CU/SU](cloudunits) (compute and storage) on monthly basis.
  - Pricing of [CU/SU](cloudunits_pricing)

## Learn More

- **[Farming Reward Calculator](farming_calculator).**
- [info about certified nodes](certified_node)
- [info about cloudunits](cloudunits)
- [Price list for CU/SU/NU](cloudunits_pricing)
- [info about planet positive certification](certified_farming)

## Remarks

> Above described Farming rewards are for TFGrid version 3.0 and will only apply for 3Nodes as registered in TFGrid 3.0 blockchain called TFChain 3.0

- Today allmost all 3Nodes are still registered to TFGrid 2.0 and as such use [farming model 2](farming_reward2)
- More information about the upgrade see: [upgrade from farming 2 to farming 3](farming_upgrade_2_3)

!!!include:farming_toc

!!!def alias:farming_reward,farming_reward,farming_reward3,farming_reward

!!!tfpriceinfo