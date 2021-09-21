# TFGrid DB Substrate remarks

This pallet does not support the use of any keys other than ed25519 to sign extrinsics. This is because we are using ed25519 keypairs on Zero-OS and we want to make this consistent on chain as well.

Every `address` field noted below in this document describes an ed25119 Public Key in [SS58](https://substrate.dev/docs/en/knowledgebase/advanced/ss58-address-format) format. We use this encoding since it's the Substrate standard.

All the objects depicted in this document are linked to an ed25519 Keypair. Once an object is created with a keypair, only the owner of the Keypair can make changes or delete that object. This way we can be sure that a user cannot change details for an object that does not belong to him.

An exception is made for Nodes; we allow Farmers to change the settings of their Node, since they own the physical hardware and must also be able to change it's digital representation.


> TODO: put extrinsics in blockchain defs (DYLAN)
> TODO: put ed25119 in blockchain defs (DYLAN)
> TODO: SS58 as def (DYLAN)





## Creating / updating / deleting objects

A user can create / update / delete objects on substrate by calling `Extrinsics` on the TfgridModule. Every extrinsic costs some amount of tokens.

Following extrinsics are exposed:

Entities:

- createEntity(..)
- updateEntity(..)
- deleteEntity(..)

Twins:

- create_twin(..)
- update_twin(..)
- delete_twin(..)

Entity-Twin Relation:

- addTwinEntity(..)
- removeTwinEntity(..)

Nodes:

- createNode(..)
- updateNode(..)
- deleteNode(..)

Farms:

- createFarm(..)
- updateFarm(..)
- deleteFarm(..)
- addFarmIp(..)
- removeFarmIp(..)

Every extrinsic must by signed by the user / digital twin that owns or will own the object.

A [cli-tool](https://github.com/threefoldtech/tfgrid-substrate/blob/master/cli-tool/readme.md) can be used to call the extrincis

Or you could use the polkadot UI apps to call extrinsics from the browser:

https://polkadot.js.org/apps/?rpc=wss%3A%2F%2Fexplorer.devnet.grid.tf%2Fws#/extrinsics

## Graphql

We store every creation / update / deletion of above objects in a graphql database. An end user of any other application can query the objects from the substrate database without having to talk to the substrate nodes. 

[example](griddb_graphql)


## Diagram

In this Diagram we can see that a Node and a Farm have a Twin object. An Entity can link to a Twin given that there is a proof that this Entity agreed on that link.


