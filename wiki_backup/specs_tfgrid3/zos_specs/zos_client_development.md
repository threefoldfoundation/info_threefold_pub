- need to see types in https://github.com/threefoldtech/zos/tree/zos3/docs/pkg/gridtypes
- can check https://github.com/threefoldtech/vgrid/tree/development/zos for an example client
- to be able to send deployment requests and sign them you need to have an account / mnemonics / seed saved https://polkadot.js.org/apps/?rpc=wss%3A%2F%2Fexplorer.devnet.grid.tf%2Fws#/explorer



## notes

- script to get deployment https://github.com/threefoldtech/vgrid/blob/development/getdeployment.v

- script to create deployment https://github.com/threefoldtech/vgrid/blob/- development/testdeployment.v (this one has wireguard, zmount, zmachine + ssh)
- deleting a deployment can be done by canceling the contract which will get it into state deleted in 5 mins
- you can update deployments by increasing the version of the inner workloads and increase the version on the deployment object as well
- deployment.contract_id is done by
   - getting deployment hash
   - creating contract on substrate with that hash to get a contract_id that you can set on the deployment object that you can sign and submit to the node.

- the workloads needs to be defined in a language that supports something like `json Raw Message` in golang.

- signing requires libsodium and requires saving the mnemonics that got generated on substrate



## vlang issues when communicating on zos level

### couple of things that needs to be worked out
1- the current work needs a patch in v to work
2- the creation of the account, twin is all done using the website https://polkadot.js.org/apps/?rpc=wss%3A%2F%2Fexplorer.devnet.grid.tf%2Fws#/explorer should work from the cli-tool
3- there's a dependency on https://github.com/threefoldtech/tfgrid-substrate/tree/master/cli-tool to create contracts, canceling contracts
4- the loading of the seed isn't that easy, we do it from python to get the secret, pubkey https://github.com/threefoldtech/vgrid/blob/review-types/testdeployment.v#L109 

```python
import sys

from jumpscale.loader import j


def from_seed(seed):
    seed = seed.strip()
    if seed.startswith("0x"):
        seed = seed[2:]

    seed_bytes = bytes.fromhex(seed)
    return j.data.nacl.SigningKey(seed_bytes)


def print_key(key):
    pub_key_bytes = [b for b in key.verify_key.encode()]
    priv_key_bytes = [b for b in key.encode()]

    print("public key: ", pub_key_bytes)
    print("private key: ", priv_key_bytes)


if len(sys.argv) < 2:
    print(f"Usage: {sys.argv[0]} <seed as hex>")
else:
    try:
        print_key(from_seed(sys.argv[1]))
    except Exception as e:
        print(f"Error while loading key: {e}")
{"mode":"full","isActive":false}
```


### what is available
- scripts to query node by location, county https://github.com/threefoldtech/vgrid/tree/main/examples
- script to get deployment https://github.com/threefoldtech/vgrid/blob/review-types/getdeployment.v
- script to create deployment https://github.com/threefoldtech/vgrid/blob/review-types/testdeployment.v (this one has wireguard, zmount, zmachine + ssh)
- deleting a deployment can be done by canceling the contract which will get it into state `deleted` in 5 mins



### note
what is used so far from the tfgrid db cli tool 
```
# create a contract
node cli.js contract create -n 5FTr6w2y8FnZcgXXjiQFrjsxddNURtYrLgVK49wu7TWFdTGW -d '' -h <deployemnt_hash>  -p 0 -j

# cancel a contract
node cli.js contract cancel <contract_id>

# get balance
node cli.js balance get <twin_address>
```