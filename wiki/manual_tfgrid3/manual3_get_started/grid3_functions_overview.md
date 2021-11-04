## Grid3 Functions Overview

A list of functions available on TFGrid 3.0 are available in the extrinsics section for developers. 

Once you have created an account, you are able to execute these functions. Only the entities (Farms, nodes, ...) under your control can be updated.

Important for users now :

| Function | Description | Example |
|------|-------|----------|
| Part of extrinsic __tfgridModule__ |
| `addFarmIP(id, ip, gateway)` | Add a public IPv4 address offered by the farmer on the TFGrid. |
| `addStellarPayoutV2Address(farmID, stellarAddress)` | Link the Stellar wallet address to the farmID. This is the address that will be used in the minting process. |
| `createFarm(name, publicIps)` | Create a new farm |
| `createTwin(ip)` | Create a Twin with an IP address where the twin can be found in the planetary network |  
| `deleteFarm(id)` | Delete a farm with the specified id |
| `removeFarmIp(id, ip)` | Remove IP address from a farm. |
| `setFarmCertification(farmId, certificationType)` |
| `updateFarm(id, name, pricingPolicyId)` | Update farm variables |
| `updateTwin(ip)` | Update the IP address of the Twin on Planetary Network |
| `deleteTwin(TwinId)` | Delete a Twin with the specified TwinID |


Other functions (not to be used manually, or for later usage): 

| Function | Description | Example |
|------|-------|----------|
| Part of extrinsic __tfgridModule__ |
| `createNode(farmId, resources, location, country, city, interfaces)` | Create a node linked to the farmID. __Remark__: this function is done during the node boodstrap process, no value in adding a node manually as node will be considered as 'down' |
| `updateNode(nodeId, farmId, resources, location, country, city, publicConfig)` | Update node variables |
| `deleteNode(id)` | Delete the node with the specified id |
| `addTwinEntity(twinID, entityID, signature)` |
| `createCertificationCode(name, description, certificationCodeType)` |
| `createEntity(target, name, country, city, signature)` |
| `createFarmingPolicy(name, su, cu, nu, ipv4, certificationType)` |
| `createPricingPolicy(name, su, cu, nu, ipu, uniqueName, domainName, foundationAccount, certifiedSalesAccount)` | 
| `deleteEntity()` |  
| `deleteTwinEntity(twinId, entityId)` |
| `reportUptime(uptime)` | 
| `setFarmCertification(farmId, certificationType)` |
| `updateEntity(name, country, city)` |
| `updatePricingPolicy(id, name, su, cu, nu, ipu, foundationAccount, certifiedSalesAccount)` |

| Function | Description | Example |
|------|-------|----------|
| Part of __smartContractModule__
| `addReports(reports)` |
| `cancelContract(contractID)` |
| `createNameContract(name)` |
| `createNodeContract(nodeID, data, deploymentHash, publicIps)` |  
| `updateNodeContract(contractId, data, deploymentHash)` |
