## capacity planning

It's almost the same as in [deploying a single VM](grid3_javascript_vm) the only difference is you can automate the choice of the node to deploy on using code. We now support `FilterOptions` to filter nodes based on specific criteria e.g the node resources (CRU, SRU, HRU, MRU) or being part of a specific farm or located in some country, or being a gateway or not 


```
FilterOptions: { accessNodeV4?: boolean; accessNodeV6?: boolean; city?: string; country?: string; cru?: number; farm?: number; gateway?: boolean; hru?: number; mru?: number; sru?: number }
```


!!!code url:https://github.com/threefoldtech/grid3_client_ts/blob/development/scripts/dynamic_single_vm.ts

In this example you can notice the criteria for `server1`

```typescript
    const server1_options: FilterOptions = {
        cru: 20,
        mru: 100, // GB
        country: "BE",
    };

```

Here we want all the nodes with `CRU:20` and `MRU:100` and located in `belgium` with country code `BE`

> Note some libraries allow reverse lookup of countries codes by name e.g [i18n-iso-countries](https://www.npmjs.com/package/i18n-iso-countries)


annd then in the MachineModel, we specified the `node_id` to be the first value of our filteration 


```typescript
    vm.node_id = +(await nodes.filterNodes(server1_options))[0].nodeId;

```