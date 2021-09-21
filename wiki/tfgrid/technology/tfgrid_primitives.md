# Zero-OS Primitives

<!-- !!!include:zos_intro_text

![](img/zos_overview_compute_storage.png)

![](img/zos_network_overview.png)

## Primitive Functions -->

ThreeFold has defined cloudunits to allow people to order the low level primitive functions of the TFGrid.

Cloud_units are like kwatth for a electricity grid.

You need TFT to buy cloudunits.

Through the smartcontract_it concept you deploy your primitive workloads.

### Compute (uses CU)

- [ZKube](zkube) : kubernetes deployment
- [ZMachine](zmachine) : the container or virtual machine running inside ZOS
- [CoreX](corex) : process manager (optional), can be used to get remote access to your zmachine

### Storage (uses SU)

- [ZOS Filesystem](zos_fs) : deduped imutable filesystem
- [ZOS Mount](zmount) : a part of a SSD (fast disk), mounted underneith your zmachine
- [Quantum Safe Filesystem](qsfs) : unbreakable storage system (secondary storage only)
- [Zero-DB](zdb) : the lowest level storage primitive, is a key value stor, used underneith other storage mechanisms typically
- [Zero-Disk](zdisk) : OEM only, virtual disk format

### Network (uses NU)

- [Zero-NET](znet) : private network between zmachines
- [Planetary Network](planetary_network) : peer2peer end2end encrypted global network
- [Zero-NIC](znic) : interface to planetary network
- [WebGateway](webgw) : interface between internet and znet
<!-- - [Peer2Peer Agent](p2pagent) : p2p agent terminates the traffic coming from the webgw. -->

## Zero-OS Advantages

!!!include:zos_advantages


!!!def alias:tfgrid_primitives,grid_primitives



