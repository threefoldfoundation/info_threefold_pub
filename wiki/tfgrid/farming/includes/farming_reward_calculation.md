## Farming Reward Calculation

Each 3Node has certain amount of compute, storage and network resources:

- Compute Capacity (CPU)
- Memory Capacity (RAM)
- Storage Capacity (SSD/HDD)
- Network Capacity (Bandwidth, IP Addresses)

For making this Internet Capacity available, Farmers are rewarded with TFT.

The amount of resources availabe in a 3Node are translated into compute units (CU), storage units (SU), Network units (NU) and IP addresses (IPAddr) to calculate farming rewards. See also [Cloud Units Calculation For Farming](resource_units_calc_cloudunits).

The formula to calculate farming rewards is the following:

```python
TFT earned per month = 
    CU farmed * CU farming rewards 
    + SU farmed * SU farming rewards
    + NU used * NU farming rewards
    + IPAddr used * IPAddr farming rewards

```

The below table expands on CU, SU, NU and IPAddr and their farming rewards:

| Unit                | description                                                       | v3 farming rewards in TFT |
| ------------------- | ----------------------------------------------------------------- | ------------------------- |
| Compute Unit (CU)   | typically 2 vcpu, 4 GB mem, 50 GB storage                         | $REWARD_CU_TFT TFT/month  |
| Storage Unit (SU)   | typically 1 TB of netto usable storage                            | $REWARD_SU_TFT TFT/month  |
| Network Unit (NU)   | 1 GB of data transfered as used by TFGrid user for Public IP Addr | $REWARD_NU_TFT TFT/GB     |
| Public IPv4 Address | Public IP Address as used by a TFGrid user                        | $REWARD_IP_TFT TFT/hour   |

The CU/SU farming rewards are registered on the TFChain when the 3Node gets registered, they can slightly vary during first 3 months of operations in relation to the TFT token price related to the USD. TFT above are calculated in relation to TFT price at moment which was $TFTUSD USD per TFT. See below for more info about USD price used.

This means that after 3 months, the TFT reward price per 3NODE is fixed untill the [TFGrid Service Level Agreement](tfgrid_min_sla) will be missed. This allows the farmer to predict income in a more easy way.

The reward for above items are linked (pegged) to the USD:

| Unit                | USD   | Unit                                  |
| ------------------- | ----- | ------------------------------------- |
| Compute Unit (CU)   | 2.4   | per month                             |
| Storage Unit (SU)   | 1     | per month                             |
| Network Unit (NU)   | 0.03  | per GB transfer (as customers use it) |
| Public IPv4 Address | 0.005 | per IP address, calculated per hour   |

> [MORE INFO ABOUT DAO RULES IN RELATION TO PROOF OF CAPACITY, SEE HERE](poc_dao_rules)

!!!tfpriceinfo