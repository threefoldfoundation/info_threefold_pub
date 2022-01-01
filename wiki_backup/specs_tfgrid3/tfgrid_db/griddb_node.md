## TFGrid DB Node

A Node creates a twin object to make it’s connection information publicly visible. There always has to be a digital reprentation of a physical Node that belongs to a Farmer. A Twin is created for a Node because the [RMB](https://github.com/threefoldtech/rmb/) lets Nodes communicate with eachother over the Yggdrasil network. The Node will create a Twin with his Yggradrasil ipv6 address so that other Nodes can lookup this IP and send messages to eachother over the RMB.

Before a Node object can be registered, the node's keypair must be activated on chain. This is done by executing a Transfer from an existing wallet to the Node's Substrate address. Right now, the Nodes call a remote activation service that activates their wallet by sending 500 tokens to it's wallet. When the wallet is activated a Twin object must be created. Zero-OS running on the Node will be responsible for this. On boot, Zero-OS will generate a keypair for this Node, with that keypair it will register a Twin object on chain. It registers a Twin object with a public ipv4 (if it has that), otherwise an Ygradrasil ipv6 will be used.

With this Twin's keypair a Node object should be registered, again Zero-OS is responsible for this. On boot Zero-OS will create a Node object on chain with the proper Farm ID, resources, public config and location. This way Twin and a Node will be linked to eachother.

This Farm ID is passed as a kernel argument on the boot process. When a Farm ID is set, only the Farm with that ID can manage this Node.

When all object are properly registered on chain (Twin and Node). The Node can accept workloads and bill the consumer's wallet accordingly.

A Node object has following fields:

!!!include:griddb_node.v

!!!def alias:griddb_node