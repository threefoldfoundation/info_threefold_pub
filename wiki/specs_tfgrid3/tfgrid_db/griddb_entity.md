## TF GridDB Entity

Entities are links to physical human beings. Only one entity object per person can or must be created in the database. A person will register himself on substrate through the Threefold Connect application.

An Entity object has following fields:

!!!include:griddb_entity.v

The Entity's name is the physical user's chosen name.

The address (SubstrateAccountID) is set on the moment the Entity is created. It extracts the substrate account ID from the signed request and assigns it to the Entity object. From that moment, only the keypair that created this Entity can edit or delete this object afterwards.

Country and City id's are the id's of the country and city that the person lives in. A lookup for these id's can be done on the [Graphql](griddb_graphql) instance.

!!! def alias:griddb_entity