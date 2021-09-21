# ThreeFold Grid 2.2.0

![](img/releasenotes.jpg)

Release notes TF Grid 2.2.0 

TF Grid 2.2.0 describes the current setup on the grid.

It introduces the threefold_now running on js-ng

## Component versions

- Jumpscale/SDK: `js-ng 11.0.0-alpha.2`
- [Github project](https://github.com/orgs/Threefoldtech/projects/104)
- Zero-OS v2:`0.3.3`:
- [Github project](https://github.com/orgs/Threefoldtech/projects/89)
- [Zero-OS release notes](https://github.com/Threefoldtech/zos/releases/tag/v0.3.3)
- [tfexplorer release notes](https://github.com/Threefoldtech/tfexplorer/releases/tag/v0.3.1)


### Zero-OS Upgrades

* Hard drive disk are now automatically shutdown when not used. This feature should greatly improve the power consumption of servers with a lot of disks but few actual usage.
* A new networking option is available for your container. You can now ask a container to have an extra interface that is connected to  the [Yggdrasil network](https://yggdrasil-network.github.io). This allow you to seamlessly expose service on Yggdrasil


## Highlights

- Build in support for restic, an incredible backup tool
- Support our next version of Jumpscale called Jumpscale-next gen (js-ng)
- More user friendly wizards how to deploy workloads on the grid
- Integration with ipv4/6

## Components used

Below are linked to some main component projects

- ZeroOS 0.4 (is a 2.x release) = our operating system
- Jumpscale 11 = js-ng = our automation framework


## Timing

Release to public

- Code has been created (end aug 2020)
- testing ongoing with public
