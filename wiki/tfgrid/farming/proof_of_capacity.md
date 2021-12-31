
![](img/farming_rewards_.png)

# Proof-of-Capacity

The ThreeFold Blockchain (TFChain) uses a novel work algorythm called "Proof-of-Capacity" to verify the Internet capacity provided by 3Nodes. Put simply, PoC verifies, on an ongoing basis, that farms are honestly representing the Internet capacity they provide to the network.

**See Proof-of-Capacity in action** by visiting the [ThreeFold Grid Capacity Explorer] which represents the best resource to view POC-related data. 

## What is proof-of-capacity? 
 
Proof-of-capacity (PoC) is a type of concensus mechanism used by TFChain to achieve consensus on the Internet capacity connected to the ThreeFold Grid and reward farmers according to their contribution. This prevents users from "double spending" their TFT and ensures that the TFChain is tremendously difficult to attack or manipulate. 

PoC builds upon proof-of-stake fundamentals, being the underlying algorythm that sets the difficulty and rules for farmers to provide Internet capacity to the ThreeFold Grid. Farming is the "work" itself, the act of providing Internet capacity to the network and making it accessible via TFChain. This is important to follow the developments of TFChain and understand the current state of the ThreeFold Grid in regards to the compute, memory, storage and netowrk capacity available for utilization. 

The PoC algorythm records four different types of Internet capacity:

- Compute Capacity (CPU)
- Memory Capacity (RAM)
- Storage Capacity (SSD/HDD)
- Network Capacity (Bandwidth, IP Addresses)

## Why proof-of-capacity? 

PoC comes with a number of benefits, including: 

- Energy efficiency: no need to use lots of energy to mine blocks.
- Lower barriers to entry with reduced hardware requirements: no need for elite hardware to stand a chance for mining new blocks and earning rewards.
- Completely decentralized: allows anyone to connect a 3node to the network.

<<<<<<< HEAD
The main advantage of PoC to farmers it makes it really easy to run a 3Node. It doesn't require huge investments in hardware or energy and everyone earns a fair reward for their contribution. It is more decentralized, allowing for increased participation, and more 3Nodes doesn't mean increased returns, like in mining. 
=======
| Percentage                                         | Description    | Remark                           |
| -------------------------------------------------- | -------------- | -------------------------------- |
| 100% of specified [farming reward](farming_reward) | goes to Farmer | Allows for a pure Utility Token. |
>>>>>>> development

## How does Proof-of-Capacity work?

<<<<<<< HEAD
1. A farmer boots hardware with Zero-OS and the system verifies the Internet capacity made available on the hardware.
2. Zero-OS will create a report of the Internet capacity with the private key of the Farmer's account.
3. The report is stored on a distributed storage system and hashed (fingerprinted).
4. The hashes verify the authenticity of the report and store it in the minting transactions of TFChain.
5. The report is broadcasted to the [explorer](https://explorer.threefold.io/), making the Internet capacity available to the ThreeFold Grid.
6. 4 days after the end of every month, a farmer receives ThreeFold_Token according to the Internet capacity registered on TFChain after the minting consensus is achieved. 
=======
- Example of a Farming Reward calculation see [here](farming_calculator).
- Additional TFT are farmed to compensate for Carbon and deliver the yield for the Layer 2 Staking pools
>>>>>>> development

> Note: ThreeFold is planning to activate validator node contributions throughout Q1 2022. 

<<<<<<< HEAD
100% of the farming rewards are allocated to farmers, making ThreeFold_Token a pure utility token. The Farmer's wallet is registered in TFChain and can be modified at anytime.
=======
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
>>>>>>> development

<!--- TBD time TFT are minted by the TFChain in accordance to the farming rewards and distributed to the farmer wallet. -->

> Note: All Internet capacity farmed (included as a new block on TFChain) is rewarded on a monthly basis according to minimum up-time requirements. The rewards are dynamic and can change over time according to the USD to TFT price ratio and the average bandwidth cost of farmers. 

### ThreeFold DAO rules for proof-of-capacity

- Certified 3Nodes receive 25% more farming rewards for achieving a certain service level agreement (up-time, bandwidth, latency, etc.)
- If the SLA (Service Level Agreement) is not achieved for 3 consecutive months, a 3Node will have to re-register and CU/SU rewards will be adjusted to re-registration date in TFChain.

**Additions to proof-of-capacity (coming soon)**

- How to deal with a situation where a 3node adds or removes compute or storage capacity.
- ThreeFold is developing a way of how to detect possible fraud on PoC using TPM chip and dynamic generated code to execute random PoC checks, more details will be provided in Q1 2022.
- If PoC finds fraud e.g. trying to fake Internet capacity provided, the 3Node will be disabled automatically by Zero-OS and flagged as fraudulant. The Farmer will then have to re-register with a lower reputation for transparancy to the ecosystem. If TFTs are staked at that time, they will be locked permanently.

## Proof-of-Utilization.

A second consensus mechanisms exists on TFChain. It is called "Proof-of-Utilization" (PoU). Whenever farmed Internet capacity is used by someone, the utilization of that capacity will be tracked and recorded in TFChain.

> Note: All user data remains off-chain, only farming details and user details such as wallet addresses and the farm ID are collected to create and store a smart contract in TF Chain. 

Learn more about Proof-of-Utilization [here](proof_of_utilization).

!!!def