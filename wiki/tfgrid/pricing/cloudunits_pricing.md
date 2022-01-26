
![](img/tfgrid_pricing.jpg)

## Cloud Unit Pricing

| Cloud Units       | description                                      | Name | mUSD               | mTFT               |
| ----------------- | ------------------------------------------------ | ------------------ | ---- | ------------------ |
| Compute Unit (CU) | typically 2 vcpu, 4 GB mem, 50 GB storage        | `CU_cost_hr` | $CU_MUSD_HOUR/hour | $CU_MTFT_HOUR/hour |
| Storage Unit (SU) | typically 1 TB of netto usable storage (*)      | `SU_cost_hr` | $SU_MUSD_HOUR/hour | $SU_MTFT_HOUR/hour |
| Network Unit (NU) | 1 GB transfer, bandwidth as used by TFGrid users | `NU_cost_gb` | $NU_MUSD_GB/GB      | $NU_MTFT_GB/GB     |


| Network Addressing | description                                | Name | mUSD                  | mTFT                  |
| ------------------ | ------------------------------------------ | ---- | --------------------- | --------------------- |
| IPv4 Address       | Public Ip Address as used by a TFGrid user | `IPv4_cost_hr` | $IP_MUSD_HOUR/hour    | $IP_MTFT_HOUR/hour    |
| Unique Name        | Usable as name on webgateways              | `unique_name_cost` | $NAME_MUSD_HOUR/hour  | $NAME_MTFT_HOUR/hour  |
| Unique Domain Name | Usable as dns name on webgateways          | `domain_name_cost` | $DNAME_MUSD_HOUR/hour | $DNAME_MTFT_HOUR/hour |

- mUSD = 1/1000 of USD, mTFT = 1/1000 of TFT
- TFT pricing pegged to USD (pricing changes in line with TFT/USD rate)
- **current TFT to USD price is $TFTUSD** , calculated on $NOW
- pricing is calculated per hour for the TFGrid 3.0
- pricing of certified capacity is 25% more (x 1.25)

### Cloud Usage pricing formula

Grid 3.0 works with postpaid usage payment by the hour.  The formulas used to calculate the cost components are:
```
CU_cost = MAX(CRU/2, MRU/4) * CU_cost_hr
SU_cost = (HRU/1200 + sru*0.8/200) * SU_cost_hr
NU_cost = #NU * NU_cost_gb

IPv4_cost = #IPv4 * IPv4_cost_hr
unique_name_cost = #unique_names * unique_name_cost
domain_name_cost = #domain_names * domain_name_cost
```

Taking the cost components and adding them all up we get to the true hourly cost:
```
Costs = CU_cost + SU_cost + NU_cost + IPv4_cost + unique_name_cost + domain_name_cost
```
Unit costs are as displayed in the tables above.

!!!include:staking_discount_levels

### Pricing Expressed Per Month

| Cloud Units       | description                                      | USD NO DISCOUNT     | USD 60% DISCOUNT                 |
| ----------------- | ------------------------------------------------ | ------------------- | ---------------------------- |
| Compute Unit (CU) | typically 2 vcpu, 4 GB mem, 50 GB storage        | $CU_USD_MONTH/month | $CU_USD_MONTH_DISCOUNT/month |
| Storage Unit (SU) | typically 1 TB of netto usable storage (*)       | $SU_USD_MONTH/month | $SU_USD_MONTH_DISCOUNT/month |
| Network Unit (NU) | 1 GB transfer, bandwidth as used by TFGrid users | $NU_USD_GB/GB       | $NU_USD_MONTH_DISCOUNT/GB    |
| IPv4 Address      | Public Ip Address as used by a TFGrid user       | $IP_USD_MONTH/month | $IP_USD_MONTH_DISCOUNT/month |


### How to buy and use capacity

- More info about [how to use the grid see here](grid_use)
- [TFT's can be bought on multiple locations](how_to_buy).

### More Info

- See [here for more info about planet positive certification](certified_farming)
- Pricing is done based on cloud units, see [cloudunits](cloudunits)

!!!def alias:tfpricing,cloudunit_pricing,threefold_pricing

!!!tfpriceinfo
