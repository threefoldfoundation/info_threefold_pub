![](img/farming_reward.jpg ':size=350x')

# Farming Reward 3.0

Farmers are rewarded TFT based on **Proof-of-Capacity**.

```python
TFT earned per month per node = 
    + CU farmed * CU farming reward 
    + SU farmed * SU farming reward 
    + NU used * NU farming reward
    + IPAddr used * IPAddr farming reward

```

## Proof-of-Capacity

A connected 3Node produces CU, SU, NU and IPAddr for the TFgrid. The farmer gets rewarded to make this capacity available.

| Unit                | description                                    | default                  |
| ------------------- | ---------------------------------------------- | ------------------------ |
| Compute Unit (CU)   | typically 2 vcpu, 4 GB mem, 50 GB storage      | $REWARD_CU_TFT TFT/month |
| Storage Unit (SU)   | typically 1 TB of netto usable storage         | $REWARD_SU_TFT TFT/month |
| Network Unit (NU)   | 1 GB of data transfered as used by TFGrid user | $REWARD_NU_TFT TFT/GB    |
| Public IPv4 Address | Public IP Address as used by a TFGrid user     | $REWARD_IP_TFT TFT/hour  |

- certified is 25% more (1+25%)
- TFT pricing pegged to USD (pricing changes in line with TFT/USD rate)
- **current TFT to USD price is $TFTUSD** , calculated on $NOW
- Minimal SLA's need to be achieved before the farming reward can be earned (uptime, bandwidth, latency, ...)
- More info see [Farming Hardware Calculator](farming_calculator)
- TFT price for CU/SU is locked once farming starts for a 3node (first boot & registration to blockchain) or at date of purchase when certified 3node.
- [CU/SU/NU = storage and compute units](cloudunits) farmed  = amount CU,SU available to TFGrid with enough uptime.

!!!include:staking_farmed_tft

## Learn More

- **[Farming Reward Calculator](farming_calculator).**
- [info about certified nodes](certified_node)
- [info about cloudunits](cloudunits)

## Remarks

> Above described Farming rewards are for TFGrid version 3.0 and will only apply for 3Nodes as registered in TFGrid 3.0 blockchain called TFChain 3.0 <BR>
> Farming for 3.0 has more rewards compared to farming for 2.x

- Today allmost all 3Nodes are still registered to TFGrid 2.0 and as such use [farming model 2](farming_reward2)
- More information about the upgrade see: [upgrade from farming 2 to farming 3](farming_upgrade_2_3)

!!!include:farming_toc

!!!def alias:farming_reward,farming_reward,farming_reward3,farming_reward

!!!tfpriceinfo