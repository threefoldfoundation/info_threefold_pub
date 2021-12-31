# ThreeFold DAO rules for Farming Rewards

- Farming rewards are pegged to USD and registered in TFChain when a 3Nodes is registered. 
- Farming rewards in TFT remain fixed for a duration of 5 years.
- For certified 3Nodes, the farming rewards are specified at the time of the sales/promotion. This process is managed by threefold_tech.
- Farmed TFT gets staked (pooled) per 3Node (per server) and only unlock if +30% is used of capacity or max of 24 months.

- The big majoriy of 3Nodes are still registered on the [ThreeFold Grid v2 farming reward](farming_reward2). The transition to ThreeFold Grid v3 farming rewards is expected for Q4 2021 - Q1 2022. More information about the upgrade can be found [here](farming_upgrade_2_3).
- Make sure you have 50GB SSD capacity min available per CPU, if not your calculated CU will be lower.

!!!include:wisdom_council_approval_jan22


## Link to Utilization of TFGrid

- Farming rewards are not related to any utilization of TFGrid.
- Farmers can also use their own Internet capacity at minimal cost. Learn more on [Personal Farm Utilization](- Farmers can also use their own Internet capacity at minimal cost. Learn more on [Personal Farm Utilization](farmer_personal_utilization).
).



#### What happens if 3Node doesn't achieve SLA.
- - If a 3Node achieves 30% for 3 months but month after is again lower, then staking will happen again.


### remarks

- Example of a Farming Reward calculation see [here](farming_calculator).


- Minimal SLA's need to be achieved before the farming reward can be earned (uptime, bandwidth, latency, ...)
- If you delete your 3Node, the staked tokens will remain on your name and come available after 24 months since start.
- Cost of rackspace of datacenter is not in this simulation



### ThreeFold DAO rules for proof-of-capacity


- Rewards per CU/SU in TFT are registered in TFChain per 3Node at registration time. For certified Nodes, the CU/SU reward was specified at sales/promotion time, this process is managed by threefold_tech. All of this information is public and can be see by everone of the community as per 3Node and Farmer.
- The rewards per CU/SU are fixed over time for 5 years.
- CU/SU calculated from Resource Units, [see this doc](resource_units_calc_cloudunits)
  - Certified Node gets 25% more farming rewards.
  - TFT pricing is pegged to USD (pricing changes in line with TFT/USD rate)
- Rewards for NU and IP Addresses are dynamic, the prices get revised on regular basis and DAO consensus needs to be achieved for that. The TFChain knows how the NU and IP Addresses were used and as such the reward can be calculated for the Farmer. 
- Minimum SLA = Service Level Agreement
  - Minimal SLA's need to be achieved before the farming reward can be earned (uptime, bandwidth, latency, ...)
  - for certified node farming today: 99.5% uptime, which is upto 3.6h downtime per month.
  - for diy node farming today: 99% uptime, which is upto 7.2h downtime per month.
  - we are still working on right SLA definition for network, is not measured today
  - If SLA (Service Level Agreement) was not achieved for 3 consecutive months, then the 3Node will have to re-register which means the CU/SU reward will be recalculated at that time and re-registered in TFChain for that node, just like a new one.
- All CU/SU rewards are staked (locked to farmer account) until 30% (measured over 3 months) is used or 24 months since registration. 
- All Internet capacity farmed (included as a new block on TFChain) is rewarded on a monthly basis according to minimum up-time requirements. The rewards are dynamic and can change over time according to the USD to TFT price ratio and the average bandwidth cost of farmers. 

!!!include:wisdom_council_approval_jan22



- Above description is for TFGrid 3.X onwards
- Rewards per CU/SU in TFT are registered in TFChain per 3Node at registration time. For certified Nodes, the CU/SU reward was specified at sales/promotion time, this process is managed by threefold_tech. All of this information is public and can be see by everone of the community as per 3Node and Farmer.
- The rewards per CU/SU are fixed over time for 5 years.
- If SLA (Service Level Agreement) was not achieved for 3 consecutive months, then the 3Node will have to re-register which means the CU/SU reward will be recalculated at that time and re-registered in TFChain for that node.
- Rewards for NU and IP Addresses are dynamic, the prices get revised on regular basis and DAO consensus needs to be achieved for that. The TFChain knows how the NU and IP Addresses were used and as such the reward can be calculated for the Farmer. 
- All CU/SU rewards are staked until 30% is used or 24 months since registration. 30% measures over 3 months.
- If a 3Node achieves 30% for 3 months but month after is again lower, then staking will happen again.
- Certified Node gets 25% more farming rewards.
- TFT pricing is pegged to USD (pricing changes in line with TFT/USD rate)
- Minimal SLA's need to be achieved before the farming reward can be earned (uptime, bandwidth, latency, ...)

**Additions to proof-of-capacity (coming soon)**

- How to deal with a situation where a 3node adds or removes compute or storage capacity.
- ThreeFold is developing a way of how to detect possible fraud on PoC using TPM chip and dynamic generated code to execute random PoC checks, more details will be provided in Q1 2022.
- If PoC finds fraud e.g. trying to fake Internet capacity provided, the 3Node will be disabled automatically by Zero-OS and flagged as fraudulant. The Farmer will then have to re-register with a lower reputation for transparancy to the ecosystem. If TFTs are staked at that time, they will be locked permanently.



**Additions to farming rewards (coming soon)**

- How to improve the calculation of CU rewards to mitigate the difference in power provided between new and old hardware. 
- The above described Farming Rewards are for ThreeFold Grid version 3.1 on mainnet and will only apply for 3Nodes as registered in TF Chain for mainnet 3.1. Before this all farming is done using 2.x farming rules even on 3.x Testnet and 3.0 mainnet.
- Above specifications will only be final once [Wisdom Council](wisdom_council) approves and ThreeFold Grid 3.1 is on mainnet.
- All 3nodes for tfgrid 2.0, testnet 3.x and mainnet 3.0 use [Farming Model 2](farming_reward2).
- More information about the upgrade see: [Upgrade from farming 2 to farming 3](farming_upgrade_2_3)






!!!include:farming_toc

!!!tfpriceinfo