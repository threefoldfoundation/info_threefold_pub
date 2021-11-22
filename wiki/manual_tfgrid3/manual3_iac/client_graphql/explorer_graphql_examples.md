Info on TFChain is indexed over GraphQL and is available for queries. 
- [Devnet GraphQL](https://tfchain.dev.threefold.io/graphql/graphql)
- [Testnet GraphQL](https://tfchain.test.threefold.io/graphql/graphql)
- Mainnet -not live yet-



##  finding  gateways

gateway typically needs to be a node with public ipv4 or ipv6 and a domain configured otherwise it won't be able to create `NameContracts`
```graphql
 query MyQuery {
  nodes {
    nodeId
    publicConfig {
      domain
      ipv4
    }
  }
}
```

## finding farms with public IPs

```graphql
query MyQuery {
  farms {
    farmId
    name

    publicIPs {
      ip
      
    }
  }
}

```

## finding nodes on a specific farm


```graphql
query MyQuery {
  nodes(where: {farmId_eq: 1}) {
    twinId
  }
}
```

##  finding nodes  with country

```graphql
query MyQuery {
  nodes(where: {country_eq: "BE"}) {
    twinId
  }
}
```

## finding nodes  with capacity

```graphql
query MyQuery {
  nodes() {
    cru,
    hru,
    mru,
    sru,
  }
}

```

##  filtering nodes with capacity

```graphql
query MyQuery {
  nodes(where: {cru_gt: "2", hru_gt: "5000", mru_gt: "500", sru_gt: "1000"}) {
    cru
    hru
    mru
    sru
  }
}

```

> NOTE: most of this is available on [explorer](grid3_explorer)