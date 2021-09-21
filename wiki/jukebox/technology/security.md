# security

## infrastructure security
the security happens on multiple level

- Physical access to the 3Nodes
    Even that the owners of the 3Nodes have physical access to the nodes, they can't really do anything to the underlying data in the box
- Network is private by default
    The Grid overlay network is private by default, you need to explicitly give access to the others to reach your workload
- The communication over the gateway is TLS encrypted, we don't terminate TLS, you workloads do.
  
Please make sure to visit [grid concepts](grid_concepts) for more information.


## jukebox application

while we make sure the jukebox service is friendly, safe and backed up, we also allow individuals to run their [own version of the jukebox](https://github.com/threefoldtech/tf_jukebox/blob/development/docs/specs/deployment.md) on their own infrastructure too 
