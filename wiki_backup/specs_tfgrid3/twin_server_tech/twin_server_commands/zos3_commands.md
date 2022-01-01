
# zos.deployment.deploy

deploys a deployment on a specific node

## args

deployment instance
```
type Deployment struct {
	Version              int                  `json:"version"`
	TwinID               uint32               `json:"twin_id"`
	DeploymentID         uint32               `json:"deployment_id"`
	Metadata             string               `json:"metadata"`
	Description          string               `json:"description"`
	Expiration           Timestamp            `json:"expiration"`
	SignatureRequirement SignatureRequirement `json:"signature_requirement"`
	Workloads            []Workload           `json:"workloads"`
}
```

# zos.deployment.update
updates deployment

## args

deployment instance
```
type Deployment struct {
	Version              int                  `json:"version"`
	TwinID               uint32               `json:"twin_id"`
	DeploymentID         uint32               `json:"deployment_id"`
	Metadata             string               `json:"metadata"`
	Description          string               `json:"description"`
	Expiration           Timestamp            `json:"expiration"`
	SignatureRequirement SignatureRequirement `json:"signature_requirement"`
	Workloads            []Workload           `json:"workloads"`
}
```

# zos.deployment.get

gets the deployment by id 

### args
- deployment_id: int (same as contract id)

# zos.deployment.delete


# zos.statistics.get
Gets node statistics in terms of capacity used


```
type result struct {
		Total gridtypes.Capacity `json:"total"`
		Used  gridtypes.Capacity `json:"used"`
	}
```
Where capacity is defined as follows

```
type Capacity struct {
	CRU   uint64 `json:"cru"`
	SRU   Unit   `json:"sru"`
	HRU   Unit   `json:"hru"`
	MRU   Unit   `json:"mru"`
	IPV4U uint64 `json:"ipv4u"`
}
```

# zos.network.list_wg_ports
lists wireguard ports

# zos.network.list_public_ips
list network public IPs




# zos.network.public_config_get

returns node's public config

```

type PublicConfig struct {
	Type IfaceType `json:"type"`
	// Vlan int16     `json:"vlan"`
	// Macvlan net.HardwareAddr

	IPv4 gridtypes.IPNet `json:"ipv4"`
	IPv6 gridtypes.IPNet `json:"ipv6"`

	GW4 net.IP `json:"gw4"`
	GW6 net.IP `json:"gw6"`

}

```
