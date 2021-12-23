
## Calculation from resource units to CU/SU for farming purposes

The threefold Zero-OS and TFChain software translates resource units (CRU, MRU, HRU, SRU) into cloud units (CU, SU) for farming reward purposes.

### Compute

For farming, 1 CU equals:
- 2 virtual CPUs with a maximum over subscription of 4 CPUs and minimum required memory of 4GB. 
- An over subscription of 4 CPUs remains still gentle as we understand many other providers use more.

```python
cu = min((mru - 1) / 4, cru * 4 / 2, sru / 50)
```

1 GB of memory is subtracted for the operating system to function.

NEW: Dec 2021 update for launch v3.x, there need to be at least 50 GB SSD capacity per CU, was in the specs of farming reward but formula did not take it into consideration.

### Storage

For farming, 1 SU equals to:
- 1.2 TB of HD capacity (which can deliver 1 TB of net usable storage) 
- 200 GB of SSD capacity with a buffer of 20% (minus requirement for compute units)

```python
su = hru / 1200 + (sru * 0.8 - cu * 25)/200)
```

NEW: Dec 2021 update for launch v3.x, had to deduct SRU as used in CU above, was missing in formulla, was in specs of farming reward, but formula did not take into consideration. We support 50% oversubscription (in other words avg CU only uses 25 GB in stead of 50).

#### Storage cost price verification Dec 2021

- price for 16 TB HDD = 300 USD
  - 16000 / 1200 = 13.3 SU
  - 1 SU costs = 300 / 13.3 = 22.5 for HDD
- price for 2 TB SSD = 200 USD
  - 2000 * 0.8 / 200 = 8 SU
  - 1 SU costs 200 / 8 = 25 for SSD

NEW: Dec 2021 update , we had to bring sru division to 200, was 300, to be more in line with HDD vs SSD pricing, this check needs to be done +- every 6 months, results in slightly more SU

### CU/SU/NU pricing

The rewards in USD

- CU: 2.4 USD/month
- SU: 1 USD/month
- NU: 0.03 USD/month (per GB transfered)
- IP: 0.005 USD/month (once used)

!!!include:staking_farmed_tft
