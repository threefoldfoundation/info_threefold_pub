## TF GridDB Farms

A Farm is a nr of 3Nodes as hosted on the TFGrid.

A Farm is owned by a digital_twin.

>TODO: Kristof change

With this Twin's keypair a Farm should be created, this way a Twin and a Farm will be linked to eachother.

!!!include:griddb_farm.v

A Farmer thus has a digital representation on chain of his physical Farm and Nodes in real life. 

If a Farmer has the capability to provide public ip's to his consumers, he can provide a list of ips that are available to any consumer. Public IP's can be added on Farm creation and through `addFarmIp` and `removeFarmIp`. 

These extrinsics again can only be called by the Farmer's keypair.

A Farm object looks like following on chain:

>TODO:

!!!def alias:griddb_farm