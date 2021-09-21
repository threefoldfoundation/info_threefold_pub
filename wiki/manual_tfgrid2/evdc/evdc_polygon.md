# How to Deploy a Polygon Node on eVDC

[Polygon](https://polygon.technology), formerly called Matic network, is a protocol and a framework for building and connecting Ethereum-compatible blockchain networks.

It uses an adapted version of the Plasma framework that empowers Ethereum-based DApps with the high-speed and extremely low-cost transactions required to achieve mass adoption.

# System/VDC Requirements 

Minimum system requirements for a Matic node are: 
- 16 GiB of memory
- 4 core CPU 
- 60 GB disk space (and extendable)
- 2 different machines for Sentry and Validator node. Having a single machine to run both, the Sentry and Validator nodes will run into issues. 

> Note: The minimum system requirement of 60 GB of hard drive storage is the reason it will only run on a Diamond VDC, or a silver/gold/platinum version that has been upgraded with more storage.


# Get Started

You can deploy a Polygon node on ThreeFold with a few clicks. The widget enables both running a Sentry node, a full node and a validator node. We will explain the different steps to obtain each of these node types. 

First step, find the **Polygon Widget** on the marketplace and click on **'Deploy'** button. You will now will be directed to the chatflow of the deployment process.

![](img/polygon_widget.png ':size=200')

Create a name for your new node deployment. This name will be used to identify your deployment on your 'Deployed Solutions' list.

![](img/polygon_01_name.png ':size=600')

You can choose to create a URL which is part of your domain, or have one auto-generated.

Select the domain type for your Cryptpad:
- For deployment with **random subdomain**, select `Choose subdomain for me on a gateway`. 
- For deployment with a particular **available subdomain**, select `Choose a custom subdomain on a gateway`. 
- To host a blog using **your own domain**, select `choose a custom domain`.

![](img/polygon_02_subdomain.png ':size=600')

Choose the size of the capacity that you want to reserve for this solution, both in terms of compute power and memory capacity. 

![](img/polygon_03_configuration.png ':size=600')

Create a password to access your Polygon node web page.

![](img/polygon_04_accesscode.png ':size=600')

The next field is only needed if you intend to deploy a full node. If so, fill in the RPC URL to Ethereum. 

If you leave this field blank, a Sentry node will be generated. 

![](img/polygon_05_rpcurl_eth.png ':size=600')

Congratulations! you just successfully deployed a Polygon node! 

![](img/polygon_06_success.png ':size=600')

The url that gives access to your Polygon node can be found on the next screen, or in the deployed solutions overview.

When you click it, it will re-direct you to the stats page of your new Polygon Node. There, you can find all the information you need to monitor your node, including the log data showing it's activity. 

The `Refresh` button reloads the webpage. 

![](img/polygon_07_nodestat1.png)
![](img/polygon_07_nodestat2.png)
![](img/polygon_07_nodestat3.png)
![](img/polygon_07_nodestat4.png)

To find and access the Polygon node you just deployed, simply go to the Polygon widget on your Admin Panel. Click on `My Workloads` to go to the list of your successfully deployed DigiByte nodes.

![](img/polygon_myworkload.png) 

The link  to your deployed Polygon Node Stats Page.

![](img/polygon_access.png) 

## Convert your node into a Validator node

> COMING SOON

