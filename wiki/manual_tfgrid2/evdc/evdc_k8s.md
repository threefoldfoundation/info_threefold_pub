# The solutions architecture: Kubernetes and Docker

The IT industry is used to standard toolings for the deployment of their IT workloads: 

- Docker is the main industry standard for containers.
- Kubernetes is the industry standard for container orchestration.

With ThreeFold P2P Cloud, you can deploy a Kubernetes orchestrator out of the box. [K3S](https://k3s.io) was implemented, which is a full-blown kubernetes offering.  It is packaged as a single binary and is much more lightweight (half the memory footprint of what kubernetes usually consumes), enabling it to run in resource-constrained locations (perfect fit for IoT, edge workloads, ARM etc). 

## What are Docker Containers?

Docker is a set of platform as a service (PaaS) products that use OS-level virtualization to deliver software in packages called containers. Containers are isolated from one another and bundle their own software, libraries and configuration files; they can communicate with each other through well-defined channels. Because all of the containers share the services of a single operating system kernel, they use fewer resources than virtual machines.

## Docker on VDC

It is supported on the ThreeFold Grid through the Kubernetes orchestrator layer or directly through conversion into a flist on the ThreeFold Hub. 

- Extensive Docker documentation can be found [here](https://docs.docker.com/).
- You can see how to deploy Docker containers using YAML files and Kubectl, learn more [here](https://docs.docker.com/get-started/kube-deploy/).

## What is a Kubernetes Cluster?

A Kubernetes cluster is a set of node machines for running containerized applications. If you’re running Kubernetes, you’re running a cluster.

At a minimum, a cluster contains a control plane and one or more compute machines, or nodes. The control plane is responsible for maintaining the desired state of the cluster, such as which applications are running and which container images they use. Nodes actually run the applications and workloads.

The cluster is the heart of Kubernetes’ key advantage: the ability to schedule and run containers across a group of machines, be they physical or virtual, on premises or in the cloud. Kubernetes containers aren’t tied to individual machines. Rather, they’re abstracted across the cluster.

## More info on Kubernetes

The deployed Kubernetes instance is a lightweight K3S Kubernetes implementation in Zero-OS.

**Perfect for Edge:** K3s is a highly available, certified Kubernetes distribution designed for production workloads in unattended, resource-constrained, remote locations or inside IoT appliances.

**Simple and Secure:** K3s is packaged as a single <40MB binary that reduces the dependencies and steps needed to install, run and auto-update a production Kubernetes cluster.

It also eliminates the need to expose a port on Kubernetes worker nodes for the kubelet API by exposing this API to the Kubernetes control plain nodes over a websocket tunnel. 

**Add support to storage:**  - It adds support to sqlite3 as default storage. Etcd3, MySQL and Postgres are also supported. 

**Optimized for ARM:** Both ARM64 and ARMv7 are supported with binaries and multiarch images available for both. K3s works great from something as small as a Raspberry Pi to an AWS a1.4xlarge 32GiB server.

You can find more info about K3S [here](https://github.com/rancher/k3s)

### Kubernetes Cluster on VDC

The Compute part of the VDC is in essence a Kubernetes environment with a master node and different worker nodes. It comes with an IP address to expose the workloads to the public internet. 

In the screenshot below, the VDC contains 1 master node and 2 worker nodes. 

![](img/evdc_compute_nodes.png)

### A complete Kubernetes suite

Any tooling to manage your Kubernetes cluster (both for workload provisioning and monitoring) can be found in the ThreeFold Marketplace. 

- Get Started with Kubernetes on VDC and see how to deploy Docker containers [here](kubernetes_deploy]
- Deploy and manage applications in your Kubernetes cluster with [Kubeapps](evdc_kubeapps). 
- Deploy monitoring tools (Grafana and Prometheus) on your Kubernetes cluster with [Monitoring Stack](evdc_monitoring_stack).

The `Marketplace` widgets are created with the help of Helm Charts, which can be found [here](https://github.com/threefoldtech/vdc-solutions-charts). 

Of course, you can also create your own Helm Charts and deploy them onto your Kubernetes cluster. 

