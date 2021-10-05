## Grid3 Functions Overview

A list of functions available on TFGrid 3.0 are available in the extrinsics section for developers. 

Once you have created an account, you are able to execute these functions. Only the entities (Farms, nodes, ...) under your control can be updated. 

Important for users now : 

| Function | Description | Example |
|------|-------|----------|
| Part of extrinsic __tfgridModule__ | 
| `addFarmIP(id, ip, gateway)` | Add a public IPv4 address for the farmer | 
| `addStellarPayoutV2Address(farmID, stellarAddress)` | Link the Stellar wallet address to the farmID. This is the address that will be used in the minting process. |
| `createFarm(name, publicIps)` | Create 
| `createTwin(ip)` | Create a Twin with an IP address where the twin can be found in the planetary network |  
| `deleteFarm(id)` | Delete a farm with the specified id | 
| `deleteNode(id)` | Delete the node with the specified id |
| `deleteTwin(TwinId)` | Delete a Twin with the specified TwinID | 
| `removeFarmIp(id, ip)` | 
| `setFarmCertification(farmId, certificationType)` |
| `updateFarm(id, name, pricingPolicyId)` | 
| `updateNode(nodeId, farmId, resources, location, country, city, publicConfig)` | 
| `updateTwin(ip)` | 

Other functions : 

| Function | Description | Example |
|------|-------|----------|
| Part of extrinsic __tfgridModule__ | 
| `addTwinEntity(twinID, entityID, signature)` | 
| `createCertificationCode(name, description, certificationCodeType)` | 
| `createEntity(target, name, country, city, signature)` | Create user of the Twin |  
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




