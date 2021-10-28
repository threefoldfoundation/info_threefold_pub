## Booting a node into a farm
This explain the step necessary to boot a `zos` node into a farm

### Requirements
- Farm created on the chain. Please make a node of the `network` [devnet](create_farm_devnet) or [testnet](create_farm_testnet) and  `farm-id`

## Steps
- Visit [bootstrap](https://dev.bootstrap.grid.tf/generate)
- Enter the farm id from the requirement into the `Farmer ID` field
- Under `Which release do you want?` choose the right network
  - Development for `devnet`
  - Testing for `testnet`
- Last step is generate the proper booting image. For simplicity of this walk through we go with `EFI USB` choice

> The farm id must exist on the network of choice

Last step is to write the image to the usb stick, linux user can use `dd` command to fully copy the image to the usb stick. Windows users can use a usb writer app.

## Configuring your machine to boot zos
- ZOS need to have all the physical disks erased. ZOS will not do itself to avoid data loss. Instead for custom builds, you have to make sure the disks don't have a partition table. On linux this can be done `wipefs` command
  - for example a `sudo wipefs -a -f /dev/vdX`
- Once all disks are wiped, you can now boot into ZOS by:
  - Sticking the usb stick into the node
  - The machine need to able to boot from a USB stick. This can be configured in your machine BIOS. Please refer to the motherboard manual for how to configure it to boot from USB stick
- Reboot

## Checking the node console
![zos-screen](img/zos_screen.png)

The screen (eventually) should show similar screen like above. the `farmer` in your case should show the farmer ID you used to build the usb image, and next to it your farm name.

Network setup will also be completely different. also `PUB` will show `not configured` which is normal for a new node.

## Setting up public configuration `PUB`
Nodes don't need `public config` to host workloads, put a node with public config can also do
- Work as an access point for user networks (ipv4 and ipv6)
- Handle gateway workloads (gateway workloads allow users to expose services from their private workloads)

### Requirements
- PolkaDot UI on the desired environment
- A node booted into your farm.
- The node ID shown from your node console (15 in the screenshot above)

### Steps
Open polkadot UI and navigate to `Developer > Extrinsics`

![set public config](img/public_config.png)

You have to set the required values:
- `ipv4` is the public IPv4 assigned to the node in CIDR format (x.x.x.x/mask)
  (for example: 10.20.30.40/24)
- `ipv6` (optional) is the public IPv6 assigned to the node in CIDR format (IP/prefix)
- `gw4` gateway for ipv4
- `gw6` (optional) gateway for ipv6
- `domain` (optional) assign a domain name

Note: For optional value enter the value `0x` for empty.
- `domain` is needed if the node will host named gateway workloads. The domain mut be configured in your name server as
  -

let's assume you own domain `farmer.com` and you wanna name your gateway `gateway.farmer.com` then:
- `A` record `gatway.farmer.com` to node public IPV4
- `CNAME` record `*.gateway.farmer.com` to `gateway.farmer.com`
- `NS` record `_acme-challenge.gateway.farmer.com` to `gateway.farmer.com`
