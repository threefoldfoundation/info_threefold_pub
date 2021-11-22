Supported flists

## alpine
- [Alpine](https://hub.grid.tf/tf-official-apps/base:latest.flist)
### entrypoint

`/sbin/zinit init`

### env vars
- `SSH_KEY`

## ubuntu
- [Ubuntu](https://hub.grid.tf/omar0.3bot/omarelawady-ubuntu-20.04.flist)

### entrypoint
`/init.sh`

### env vars
- `SSH_KEY`

## k3s
- [K3s](https://hub.grid.tf/ahmed_hanafy_1/ahmedhanafy725-k3s-latest.flist) 

### entrypoint
 
 `/sbin/zinit init`

### env vars
- `SSH_KEY`
- `K3S_TOKEN`
- `K3S_DATA_DIR`
- `K3S_FLANNEL_IFACE`
- `K3S_NODE_NAME`
- `K3S_URL` `https://${masterIp}:6443`

TODO:  promote ubuntu and k3s images to official.