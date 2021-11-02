## terraform basics

please make sure to read [What you need to know before getting started](grid3_developer_basics)

- make a directory for your project `mkdir myfirstproject`
- `cd myfirstproject`
- to initialize the repo `terraform init`

- create `main.tf`  <- creates the terraform main file 

```terraform
terraform {
  required_providers {
    grid = {
      source = "threefoldtech/grid"
    }
  }
}

provider "grid" {
    twin_id = FROM THE CREATE TWIN STEP
    mnemonics = "FROM THE CREATE TWIN STEP"
    rmb_proxy_url="https://rmbproxy1.devnet.grid.tf/"
    substrate_url="wss://tfchain.dev.threefold.io/ws"
    graphql_url="https://tfchain.dev.threefold.io/graphql/graphql/"
}

... MORE TO BE ADDED
```

- capitalized environment variables can be used instead of writing them in the provider (e.g. TWIN_ID)
- the provided urls are for devnet, you can probably guess for testnet or consult the docs.
- to execute a terraform file `terraform apply -parallelism=1`
- to see the output `terraform output`
- to see the state `terraform showstate`
- to destroy `terraform destroy -parallelism=1`

