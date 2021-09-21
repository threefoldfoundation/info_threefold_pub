# Deploy an ETCD key-value database in your eVDC

[etcd](https://etcd.io/) is a distributed, reliable key-value store for the most critical data of a distributed system, with a focus on being :

- Simple: well-defined, user-facing API (gRPC)
- Secure: automatic TLS with optional client cert authentication
- Fast: benchmarked 10,000 writes/sec
- Reliable: properly distributed using Raft

## Get Started

When logged in to eVDC, find the `ETCD` widget in Marketplace, on your admin panel and click on the `Deploy` button.

![](img/02_evdc_etcd_widget.png ':size=200')

Create a name for your ETCD instance. This name will be used to identify your deployment on your `Deployed Solutions` list.

![](img/03_evdc_etcd_name.png ':size=600')

You can choose to create a URL which is part of your domain, or have one auto-generated.

Select the domain type for your Cryptpad:
- For deployment with **random subdomain**, select `Choose subdomain for me on a gateway`. 
- For deployment with a particular **available subdomain**, select `Choose a custom subdomain on a gateway`. 
- To host a blog using **your own domain**, select `choose a custom domain`.

![](img/04_evdc_etcd_subdomain.png ':size=600')

Choose the size of the capacity that you want to reserve for this solution, both in terms of compute power and memory capacity. 

![](img/05_evdc_etcd_config.png ':size=600')

Congratulations! you just successfully hosted an ETCD instance ThreeFold Grid!

![](img/06_evdc_etcd_success.png ':size=600')

The url that gives access to your ZeroCI instance can be found on the next screen, or in the deployed solutions overview.

