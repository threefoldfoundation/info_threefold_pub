In this example we will see how to deploy a single VM on the Threefold grid v3

!!!include terraform_basics


## Deploying a VM with terraform
A complete list of VM workload parameters can be found [here](https://github.com/threefoldtech/terraform-provider-grid/blob/development/docs/resources/deployment.md#nested-schema-for-vms).

!!!code url:'https://github.com/threefoldtech/terraform-provider-grid/blob/development/examples/resources/singlenode/main.tf'

!!!include terraform_outputs