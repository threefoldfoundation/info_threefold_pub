# Cloud Units

![](img/cloudunits_abstract.jpg)

## What are Cloud Units?
Cloud units are the basis for price calculation for anyone intending to use/deploy on the Threefold Grid. 

Cloud units are a unified way to account for virtual hardware resources on the ThreeFold Grid. They represent compute, storage and network equivalents to energy (kW - kilowatt). The are three categories of cloud units:

- Compute Unit (CU): The amount of data processing power in terms of virtual CPU (vCPU) cores (logical [CPUs](https://en.wikipedia.org/wiki/Central_processing_unit)) and Random Access Momory ([RAM](https://en.wikipedia.org/wiki/Random-access_memory)).
- Storage Unit (SU): The amount of storage capacity in terms of Hard Disk Drives (HDDs) and Solid State Drives (SSDs) in Gigabytes (GB).
- Network Unit (NU): The amount of data that travels in and out of storage units or compute units expressed in GB.

> Note: [Resource units](resource_units) are used to calculate SU & CU. Resource Units are used to measure compute and storage capacity produced by hardware.

When a solution is deployed on the ThreeFold Grid, the system automatically gathers the required amount of CU, SU, or NU. It is important to note that users are not billed upon reservation but only when utilizing the actualy CU, SU and NU. TF Certified Farmers can define the price of CU, SU, and NU they make available on the ThreeFold Grid. 

## How is the price of Cloud Units (v4) calculated?

The following tables display how cloud units (v4) are calculated on the ThreeFold Grid. The 4th version of cloud units are used since Grid 2.2+ in mid 2020.

### Compute Capacity

| CU (Compute Unit)           |  Type 1  |  Type 2  |  Type 3   |                 |
|:-------------------------------------:|:---:|:---:|:----:|:---------------:|
| GB Memory                             | 4   | 8   | 2    |                 |
| nr vCPU                               | 2   | 1   | 4    |                 |
| Passmark Minimum (expected is double) | 500 | 250 | 1000 | CPU performance |

The passmark (CPU benchmark or alternative) is not measured on the grid yet. It is used in simulators to check the mechanisms and ensure enough performance per CU is delivered.  

Provisioning vCPU's and memory results in translating the actual cores and memory into one of the three units listed above. The principle used is:
- Calculate the number of CU's based on reserved vCPU and memory for every type of CU (1, 2, and 3).  The number is the maximum (`MAX`) number between the calculated result from vCPU and memory.
- The final number is the the minimum (`MIN`) number of the three types of compute units.



<!--
CRU_type1=1 MRU_type1=8
CRU_type2=2 MRU_type2=4
CRU_type3=4 MRU_type3=2

cu_type1 = MAX(CRU/CRU_type1, MRU/MRU_type1)
cu_type2 = MAX(CRU/CRU_type2, MRU/MRU_type2)
cu_type3 = MAX(CRU/CRU_type3, MRU/MRU_type3)

CU=min(cu_type1, cu_type2, cu_type3)
-->
Example 1: 
- 4 GB memory & 2 virtual CPU (and 50GB of SSD disk space) is exactly 1 type 1 CU.
- Recommended price on TF Grid = 10 USD
- Alternative cloud price = between 40 USD and 180 USD

Example 2:
Provisioning of 6 cores and 20GB of memory.  This provides

| CU (Compute Unit)           |  Type 1  |  Type 2  |  Type 3   |   Total #CU    |
|:-------------------------------------|:---:|:---:|:----:|:---------------:|
|  6 GB Memory                          |  1.5  | 0.75| 3    |                 |
| 20  vCPU                              |  10 | 20  | 5    |                 |
| Maximum value per CU type             | **10**  | **20**  | **5**    |       **5**      |
|            |   |   |     |        **5**        |

See how we compare with the market compute prices [here](pricing).

### Storage Capacity

| SU (Storage Unit)   | HDD  | SSD |
| ------------------- | ---- | --- |
| GB Storage Capacity | 1200 | 200 |

HDD is only usable for Zero Database driven storage (e.g. ThreeFold Quantum Safe Storage). 1.2 TB of HDD is provided following the advised storage policy of 16+4 with 20% overhead. So the net usable storage would be 1TB. In other words, the SU corresponds in that case to 1TB of net usable storage and an extra 200GB for redundancy.

Example of Storage unit:

- 1TB of usable storage as provided by the Zero-DBs (the backend storage systems)
- Recommended price on TF Grid for 1 SU = 10 USD
- Alternative cloud price = between 20 USD and 200 USD

See how we compare with market storage prices [here](pricing).

### Network

| NU (Network Unit = per GB) = NRU per month | GB (NRU) |
| ------------------------------------------ | -------- |
| GB transferred OUT or IN                   | 1        |

> We use SU-month and CU-month to show SU monthly costs. This can be compared to kilowatts (kW) to see electricity usage per month. Learn more about how this is calculated with [Resource units](resource_units), a way to measure the compute and storage capacity produced by hardware.

!!!def alias:cloudunits

