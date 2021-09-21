## TFGrid DB Twin

Twins are digital avatars who behalf of an tfgrid_entity

Twins are needed to operate amongs others:

- Node
- Farm

!!!include:griddb_twin.v

The address (SubstrateAccountID) is set on the moment the Twin is created. It extracts the substrate account ID from the signed request and assigns it to the Twin object. From that moment, only the keypair that created this twin can edit or delete this object afterwards.

Twins must set an IP field, this field can either be ipv4/ipv6. Be setting this value, Twins can talk to other remote Twins over a [RMB](https://github.com/threefoldtech/rmb/).

A twin is an anonymous entity in substrate, if a twin wishes to make himself a known enitity he can link up with an Entity. Since an Entity has a `name` field and is linked to a user.


To link an Entity to a Twin object, the Twin object must call `add_twin_entity(..)` on chain. The input being, the target entity and the signature of the entity with message (entity_idTwin_id).

Example:

Twin with ID 1 wants to link up with Entity with ID 5. The target Entity must agree this link, he will have to sign with his ed25519 keypair the following message:

- signEd25519(05)

When this is submitted on chain, the chain will check reconstruct the message and verify the signature with the target entity address.

!!!def alias:griddb_twin