# Release notes ThreeFold Cloud 2.0.5 beta

TF Grid 2.0.5 beta is a minor release which is focus on bug fixing and stability improvement. It also include an update in the way how billing works for reservations.

We have received quite a lot of feedback from the field regarding difficulty of installation and confusion around how identity works.
These concerned have been addressed, documentation improved and 3sdk CLI tool simplified.

- Streamlined installation for normal and expert modes across all supported platforms
- Better visualization of reservations in chatflows and admin panel
- Admin panel components more defensive to help users reach successful reservations
- Customized views for solutions for easier management
- Step-by-step tutorials: a new section has been created into the manual specially for this.

The billing of the reservation has been updated. The amount of token required to make a reservation is now computed per hour. This allows to create very short living reservations. 

## Component versions

- Jumpscale/SDK: `10.5.3`
- [Github project](https://github.com/orgs/Threefoldtech/projects/77)
- [Jumpscale release notes](https://github.com/Threefoldtech/jumpscaleX_core/releases/tag/v10.5.3)
- Zero-OS v2:`0.3.1`
- [Github project](https://github.com/orgs/Threefoldtech/projects/87)
- [Zero-OS release notes](https://github.com/Threefoldtech/zos/releases/tag/v0.3.1)
- [tfexplorer release notes](https://github.com/Threefoldtech/tfexplorer/releases/tag/v0.3.0)

### 3SDK binaries

- Linux: [3sdk_v10.5.3_linux_x86_64](https://github.com/Threefoldtech/jumpscaleX_core/releases/download/v10.5.3/3sdk_v10.5.3_linux_x86_64)
- MacOS: [3sdk_v10.5.3_darwin_x86_64](https://github.com/Threefoldtech/jumpscaleX_core/releases/download/v10.5.3/3sdk_v10.5.3_darwin_x86_64)
- Windows: [3sdk_v10.5.3_windows](https://github.com/Threefoldtech/jumpscaleX_core/releases/download/v10.5.3/3sdk_v10.5.3_windows.exe)

## Known issues

- Impossible to extend or modify a reservation. Research to allow it is ongoing at https://github.com/Threefoldtech/tfexplorer/pull/64
- Improve installer experience
- Inability to go back in chatflows
