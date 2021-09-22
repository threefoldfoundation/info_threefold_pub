## terraform basics

- make a directory for your project `mkdir myfirstproject`
- `cd myfirstproject`
- create `main.tf`  <- creates the terraform main file 

```terraform
terraform {
  required_providers {
    grid = {
      source = "threefoldtech/grid"
      version = "0.1.0"
    }
  }
}

provider "grid" {
    twin_id = FROM THE CREATE TWIN STEP
    mnemonics = "FROM THE CREATE TWIN STEP" 
}

... MORE TO BE ADDED
```

- to initialize the repo `terraform init`
- to execute a terraform file `terraform apply -parallelism=1`
- to see the state `terraform showstate`
- to destroy `terraform destroy`

