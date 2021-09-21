# How to boot Zero-OS

## Setup

A typical setup will include a router to which the hosts are connected. Each host/node is connected to a racktivity device for power operations.

A zerotier network needs to be created to access this setup. The user should have access to the network and have the required machines from which to connect joined to this network.


### Setup diagram
![diagram picture](https://docs.google.com/drawings/d/e/2PACX-1vS19x58a_V6ulx1PzdmyrAHqIxnOOrVzNIYji6_CklosivjrZVOkW2534LWgFmTDVAxpq6vmzPeN7Cy/pub?w=960&h=720)
[edit picture](https://docs.google.com/drawings/d/1t5qFq8DfJfLGW-IdeO2llEPwFQc-ckR3RUo2YjxFni4/edit)

### Router

The following router models are supported:

- linksys-wrt1200ac
- linksys-wrt1900acs
- linksys-wrt3200acm

The router should be joined to the zerotier network and all access to the router would be done over that network. The router is connected to the hosts/nodes using a lan network and hosts all the network configuration for these nodes and the DHCP server. It should have [OpenWRT(lede)](https://openwrt.org/) installed.
To setup the router follow the docs [here](https://github.com/Jumpscale/prefab9/blob/development/docs/prefab.zeroboot.md).

For the data to be persisted after an upgrade (the data should survive a reboot due to persistant RAM), a storage device (a small usb stick should suffice) should be mounted on the router on `/opt/storage`.

### Racktivity device

The supported models are:

- PM0816-01
- ES1108-16

The racktivity device will be used to turn off/on the power to the nodes, which is useful for example to apply network configuration on a specific node.
The racktivity device is connected to the same lan network as the router and the nodes.
All the nodes need to be connected to the racktivity device and the port informtaion of each node should be known. The racktivity device can only be reached from within the internal network that includes the router and the nodes.

### Zerotier network

A zerotier network needs to be setup to provide a secure connection to the router from a remote machine. The router needs to be joined to this network as well as any machine that is going to connect to that router for configuration/setup.

The router is joined automatically to the zerotier network during the router setup as explained in the router section.

All relevant users should have access to that network in order to reach the network. Check the zerotier [manual](https://www.zerotier.com/manual.shtml) for more information.

### JS9 host zero-boot client

This is a machine that has a [JumpScale9](https://github.com/Jumpscale/core9/blob/development/README.md) installation and uses the `zeroboot client` to configure the router and the nodes.
It allows several operations:

- Change the lan network subnet
- Addes a route so it is possible to connect to the racktivity device from this machine
- Give static IP leases to the nodes
- Configure the lease expiration time
- Configure the boot of each node
- Power operations like power cycling a list of nodes to re-apply network configuration

Follow the docs [here](https://github.com/Jumpscale/lib9/blob/development/docs/clients/zeroboot_client.md) for more details about how to use the client.


## Getting Started

You can have a working setup by following the following steps:

- Installing the router(Check [here](https://github.com/Jumpscale/prefab9/blob/development/docs/prefab.zeroboot.md))
  - Install lede os
  - Configure router to connect using prefab
  - [Use prefab zeroboot to setup the router](https://github.com/Jumpscale/prefab9/blob/development/docs/prefab.zeroboot.md#install)
- Managing hosts
  - Adding nodes using the [client](https://github.com/jumpscale/lib9/blob/development/docs/clients/zeroboot_client.md#adding-a-host)
  - Controlling node power: powercycle the required nodes to apply the configuration see [here](https://github.com/jumpscale/lib9/blob/development/docs/clients/zeroboot_client.md#power-operations)
  - [configuring boot for a specific host](https://github.com/jumpscale/lib9/blob/development/docs/clients/zeroboot_client.md#configuring-pxe-boot)
  - [Using 0-robot templates to set up services to manage the nodes and set up a reservation system](https://github.com/zero-os/0-boot-templates/blob/master/README.md)

### Managing 0-boot through 0-robot templates

The 0-boot client in Jumpscale does not keep track of which Racktivity device, making the administrator manage and keep track of them manually and create and/or get the correct Racktivity client each time he wants to manage the power of a certain node.

The [0-boot templates](https://github.com/zero-os/0-boot-templates) for the [0-robot](https://github.com/zero-os/0-robot), eliminates the need for the administrator to keep track of all the Racktivity and IPMI clients for each host as the data is managed by [0-robot](https://github.com/zero-os/0-robot). The administrator needs to set up the clients once and provide them to a [`zeroboot_racktivity_host`](https://github.com/zero-os/0-boot-templates#zeroboot_racktivity_host) or [`zeroboot_ipmi_host`](https://github.com/zero-os/0-boot-templates#zeroboot_ipmi_host) template to create a service for each host. Using these services the power of a single host can be managed.

Also a [`zeroboot_pool`](https://github.com/zero-os/0-boot-templates#zeroboot_pool) template is provided to create a service that keeps track of (a pool of) available hosts.  
This pool service can be used for the [`zeroboot_reservation`](https://github.com/zero-os/0-boot-templates#zeroboot_reservation) template which users of the farm/data center can use to reserve one of the hosts.