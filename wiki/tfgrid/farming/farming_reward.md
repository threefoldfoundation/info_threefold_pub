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

> Please note that farmers can use their own provided capacity at minimal cost, see [Own Farm Utilization](proof_of_utilization).

## Proof-of-Capacity

A connected 3Node produces CU, SU, NU and IPAddr for the TFgrid. The farmer gets rewarded to make this capacity available.

The CU, SU rewards are registered on the [TFChain](tfchain) and do not change as long as your node keeps on producing storage & compute capacity at required minimal uptime. The NU and Public Ipaddresses are rewarded as TFGrid users consume this capacity. This reward is dynamic and can change over time depending USD/TFT ratio as well as average cost for bandwidth for the farmers.

| Unit                | description                                                       | rewards                  |
| ------------------- | ----------------------------------------------------------------- | ------------------------ |
| Compute Unit (CU)   | typically 2 vcpu, 4 GB mem, 50 GB storage                         | $REWARD_CU_TFT TFT/month |
| Storage Unit (SU)   | typically 1 TB of netto usable storage                            | $REWARD_SU_TFT TFT/month |
| Network Unit (NU)   | 1 GB of data transfered as used by TFGrid user for Public IP Addr | $REWARD_NU_TFT TFT/GB    |
| Public IPv4 Address | Public IP Address as used by a TFGrid user                        | $REWARD_IP_TFT TFT/hour  |

> **current TFT to USD price is $TFTUSD** ($NOW), is used to calculate the rewards above.

- Certified node gets 25% more farming rewards.
- TFT pricing pegged to USD (pricing changes in line with TFT/USD rate)
- Minimal SLA's need to be achieved before the farming reward can be earned (uptime, bandwidth, latency, ...)
- More info see [Farming Hardware Calculator](farming_calculator)
- TFT price for CU/SU is locked once farming starts for a 3node (first boot & registration to blockchain) or at date of purchase when certified 3node.
- [CU/SU/NU = storage and compute units](cloudunits) farmed  = amount CU,SU available to ThreeFold Grid with enough uptime.
- None of the Farming Rewards is related to how much a user pays for the capacity.
- More info see [Proof Of Capacity Page](proof_of_capacity)

!!!include:staking_farmed_tft

## Learn More

!!!include:utility_token_model

- **[Farming Reward Calculator](farming_calculator).**
- [info about certified nodes](certified_node)
- [info about cloudunits](cloudunits)

## Remarks

- Above described Farming rewards are for TFGrid version 3.0 and will only apply for 3Nodes as registered in TF Chain.
- Above specifications will only be final once [Wisdom Council](wisdom_council) approves and TFGrid 3.x is on mainnet.
- Today almost all 3Nodes registered use [Farming Model 2](farming_reward2).
- More information about the upgrade see: [upgrade from farming 2 to farming 3](farming_upgrade_2_3)

!!!def alias:farming_reward,farming_reward,farming_reward3,farming_reward

!!!tfpriceinfo