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
      version = "0.1.8"
    }
  }
}

provider "grid" {
    twin_id = FROM THE CREATE TWIN STEP
    mnemonics = "FROM THE CREATE TWIN STEP" 
}

... MORE TO BE ADDED
```

- to execute a terraform file `terraform apply -parallelism=1`
- to see the state `terraform showstate`
- to destroy `terraform destroy`

