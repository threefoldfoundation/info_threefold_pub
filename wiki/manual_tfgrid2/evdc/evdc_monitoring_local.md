# Monitor Kubernetes Clusters Locally

There are different IDEs you can use to monitor your VDC locally. The most powerful and most widely used IDE is [Lens](https://k8slens.dev/) IDE. 

Lens is an IDE for people who need to deal with Kubernetes clusters on a daily basis. It is a standalone application for MacOS, Windows and Linux operating systems. 

- It ensures your clusters are properly setup and configured. 
- It gives increased visibility, real time statistics, log streams and hands-on troubleshooting capabilities. 

## Pre-requirements
- First, you have to [Deploy your VDC](evdc_deploy). 
- Download Lens IDE from their [official website](https://k8slens.dev/). It can be used on MacOS, Windows and Linux.  

## Getting Started

### Configure your TFGrid Kubernetes cluster in Lens 

To configure the K8S into Lens, you need to download the VDC `Kubeconfig` file: 
- First, go to `My VDC`.
- Then click on the `KUBECONFIG` button in the upper right corner.

![](img/evdc_k8s_monitoring_12_kubeconfig.png)

Import this file into the IDE and proceed.

![](img/evdc_k8s_monitoring_13_lens_kubeconfig.png)

And that's it! You now have Lens running the monitoring of your Kubernetes clusters.

![](img/evdc_k8s_monitoring_14_lens.png)

Lens gives insight in what is running in the Kubernetes cluster, with their state. 

Through the built-in terminal, there is also a way to access the nodes, pods, deployments, and more in a command-based way using `kubectl`.

![](img/31_vdc_terminal_k8s_nodes.png)
![](img/32_vdc_terminal_k8s_pods.png)

More info:

- For the installation of Kubernetes Monitoring Stack on the Marketplace, see [here](evdc_monitoring_stack).
- Go back to [Kubernetes Actions](kubernetes_deploy).

