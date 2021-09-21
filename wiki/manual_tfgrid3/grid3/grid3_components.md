## Components Interaction

### 3Node
On first boot the node needs to create a “twin” on the grid, a twin associated with a public key. Hence it can create verifiable signed messages.
Then, a node will then register itself as a “node” on the grid, and links this twin to the node object.

Once the node is completely up, a user can reach out to the node to submit workload requests.
Responses from the node **must** be signed with the twin secret key, a user then can verify it against the node public key.

Node uses the same verification mechanism against requests from twins.

### TFGrid-DB

#### Definitions
- `entity`: this represents a legal entity or a person, the entity is the public key of the user associated with name, country, and a unique identifier.
- `twin`: represents the management interface that can be accessed over the yggdrasil ipv6 address. A twin is associated also with a single public key.

On the grid, we build on top of the above concepts a more sophisticated logic to represent the following: (note, full types specifications can be found here)
- farm: a farm is associated
  - `entity-id`: this defines the entity of the farm itself, so it holds information about the country, city, etc and public key.
  - `twin-id`: the communication endpoint for this farm.
- node:  associated with
  - `entity-id`: defines the entity of the node itself, (pubkey, city, country, etc…)
  - `twin-id`: defines the peer information (peer-id and public ipv6)
  - `farm-id`: unique farm id this node is part of.

The grid database is a decentralized blockchain database that leverages on substrate to provide an API that can be used to
- Create Entities
- Create Twins
- Add / Remove entities from twins
- Create Nodes
- Create Farms
- Create Pricing policies for farms
- Create Certification Codes
- Query information about  entities (find node, or verify identities)

A farm has one twin, through this twin the peer_id and entity can be requested. This is also the case for nodes as they have one farm.

### Public IPs
Public IPs are assigned by the grid database from the farmer IPs pool. For this to be possible, on contract creation the user need to specify how many IPs he requires.

If the contract creation is successful it means the contract managed to acquire the required number of Ips. The IPs are going to be available for this specific node.

Once the contract is terminated, the Ips are returned back to the farmer pool.

### Pricing
Each farmer object is assigned a Pricing Policy object:
The pricing policy defines:
- Currency (TFT, USD, etc…) _we will probably drop that_
- SU
- CU
- NU

#### General notes:
- Each price defines a price for a single UNIT/SECOND. So for example SU is the price of a single Storage Unit per second where a Storage Unit can be 1 Gigabyte
- The price is defined as `mil` of the currency. 1 UNIT = 10,000,000 mil

Example:

Currency: TFT
SU: 1000 (mil tft)

(Price for 1 Gigabyte of ssd storage costs 1000 / 10 000 000  TFT per second)

So let's assume capacity is created at **Time = T**
- Node send first report at **T+s** with SU consumption C = (10 gigabytes)
- price = C/(1024*1024*1024) * s * SU
- price = 10 * s * SU
- Assume s is 5 min (300 seconds)
- Then price = 10 * 300 * 1000 = 3000000 mil = 3 TFT

Same for each other unit EXCEPT the NU. The NU unit is incremental. It means the node will keep reporting the total amount of bytes consumed since the machine starts. So to correctly calculate the consumption over period S it has to be `now.NU - last.NU`