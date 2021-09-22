
# YGGDRASIL

[Yggdrasil](https://yggdrasil-network.github.io) is an early-stage implementation of a fully end-to-end encrypted IPv6 network. It is lightweight, self-arranging, supported on multiple platforms, and allows pretty much any IPv6-capable application to communicate securely with other Yggdrasil nodes. Yggdrasil does not require you to have IPv6 Internet connectivity - it also works over IPv4. For more information

### Install

Yggdrasil is necessary for communication between your local machine and the nodes on the Grid that you deploy to. Binaries and packages are available for all major operating systems, or it can be built from source. Find installation instructions here.

After installation, you'll need to add at least one publicly available peer to your Yggdrasil configuration file. By default on Unix based systems, you'll find the file at `/etc/yggdrasil.conf`. To find peers, check this site, which compiles and displays the peer information available on Github.

Add peers to your configuration file like so:

```
Peers: ["PEER_URL:PORT", "PEER_URL:PORT", ...]
```

please consult [yggdrasil installation page](https://yggdrasil-network.github.io/installation.html) for more information and clients

### Run

#### Linux

On Linux with `systemd`, Yggdrasil can be started and enabled as a service, or run manually from the command line:

```
sudo yggdrasil -useconffile /etc/yggdrasil.conf
```

#### MacOS
The MacOS package will automatically install and start the `launchd` service. After adding peers to your config file, restart Yggdrasil by stopping the service (it will be restarted automatically):

```
sudo launchctl stop yggdrasil
```

### Test Connectivity
To ensure that you have successfully connected to the Yggdrasil network, try loading the site in your browser:

```
http://[319:3cf0:dd1d:47b9:20c:29ff:fe2c:39be]/
```

### Firewalls
Creating deployments on the Grid also requires that nodes can reach your machine as well. This means that a local firewall preventing inbound connections will cause deployments to fail.

#### Linux

On systems using `iptables`, check:
```
sudo ip6tables -S INPUT
```

If the first line is `-P INPUT DROP`, then all inbound connections over IPv6 will be blocked. To open inbound connections, run:

```
sudo ip6tables -P INPUT ACCEPT
```

To make this persist after a reboot, run:

```
sudo ip6tables-save
```

If you'd rather close the firewall again after you're done, use:

```
sudo ip6tables -P INPUT DROP
```

#### MacOS

The MacOS system firewall is disabled by default. You can check your firewall settings according to instructions here.

### Get Yggdrasil IP
Once Yggdrasil is installed, you can find your Yggdrasil IP address using this command on both Linux and Mac:

```
yggdrasil -useconffile /etc/yggdrasil.conf -address
```

You'll need this address when registering your twin on TF Chain in the next step.

> TODO: following seems to be double

# Setup yggdrasil (optional to obtain public Ipv6 address)


- download and install yggdrasil using the following [link](https://github.com/yggdrasil-network/yggdrasil-go/releases/tag/v0.4.0)
- Start it initially to init the configurations:

        systemctl start yggdrasil
    Or using

        yggdrasil -useconffile /etc/yggdrasil.conf
- Add the needed [peers](https://publicpeers.neilalexander.dev/) in the config file generated under Peers.

  **example**:

        Peers:
        [
        tls://54.37.137.221:11129
        ]

- Restart yggdrasil by

        systemctl restart yggdrasil





# Desktop apps
- [yggdrassil connector](https://github.com/MohamedElmdary/yggdrasil-connector)
