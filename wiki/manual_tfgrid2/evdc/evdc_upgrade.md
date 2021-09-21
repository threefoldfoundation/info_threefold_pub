# How to Upgrade eVDC Compute Capacity

To upgrade your eVDC compute capacity, you can extend your kubernetes cluster by adding additional worker nodes.

On your `Compute Nodes` page, click on the `Add Node` button on the top right corner of the page.

![](img/addnode.png)

Select the preferred node size you would like to add onto your Kubernetes Cluster and and click `Next`.

![](img/nodesize.png ':size=600')

On the next page you will be asked whether you would like to use your existing TFT balance within your eVDC Wallet, or transfer TFT exclusively to pay for the new nodes. 

You can either scan the QR code or transfer the requested amount of TFTs to the indicated wallet address 

> Note: You also need to copy the `Memo Text (Message)`. 

On this tutorial we assume that you use the QR scan option.

![](img/paymethod.png ':size=600') 

On the payment page, you will be instructed to transfer TFT in order to pay for your new node. This can be done by sending your TFT from the ThreeFold Connect App or an external Stellar wallet to your eVDC Wallet. 

> Note: We do not guarantee that external Stellar Wallets will be able to scan the QR Code.

In this tutorial we use the ThreeFold Connect Mobile App as our medium of transfer.

![](img/paynode.png ':size=600')

Scan the QR Code by using ThreeFold Connect app on your phone and confirm the payment. 

![](img/scanqr.jpeg ':size=400')

The payment screen will automatically reload itself when the payment is successful and the new node will be deployed immediately. 

> Note: The new node deployment will take a few minutes, please do not close this deployment window while it loads.

![](img/extendnodeprocess.png ':size=600')

Once the new node deployment is finished, you will be directed to the final screen that will show that your VDC has been extended / upgraded successfully. 

You can then go back to your `Compute Nodes` section and it will display the new nodes added to your VDC.

![](img/newnode.png)

## More info:

- Go back to the [Compute Nodes Management](evdc_compute) section.
- Learn how to [Downgrade your eVDC](evdc_downgrade) compute capacity by removing worker nodes.
- How to [Manage your Kubernetes Cluster](evdc_k8s).
