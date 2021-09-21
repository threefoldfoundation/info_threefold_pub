# How to Downgrade your eVDC Capacity

To downgrade your VDC compute capacity, you can simply remove a worker node from your Kubernetes cluster.

On your `Compute Nodes` page, click on the `Red Trash` button in the actions column.

![](img/trashbutton.png)

You should see a pop-up that will confirm the node deletion. Type the numerical value shown on the pop-up window and click `Confirm` to finalize your node removal, or click `Close` to cancel. 

> Note: Please keep in mind that there is no way to recover a node once it's removed from your eVDC.

![](img/confirmdelete.png)

More Info:
- Go back to the [Compute Nodes Management](evdc_compute) section.
- [Upgrade your eVDC](evdc_upgrade) compute capacity by adding worker nodes.
- How to [Manage your Kubernetes Cluster](evdc_k8s).
