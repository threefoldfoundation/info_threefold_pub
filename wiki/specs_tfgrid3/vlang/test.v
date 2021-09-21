import zosreq

fn main() {
	mut zosnetwork := zosreq.ReqZnet{
		name: 'core_tf1'
		subnet: ''
		wg_private_key: ''
		wg_listen_port: 0
		peers: []
	}

	println(zosnetwork)

	mut container1 := zosreq.ReqContainer{
		name: 'mycontainer'
		flist: 'http://...'
		hub_url: ''
		entrypoint: ''
		corex_enabled: false
		mounts: []
		networkinterfaces: [zosreq.NetworkInterface{
			name: 'mynet'
			network_name: 'core_tf1' // needs to correspond to network
			ip4_private: ''
			ip4_public: []
			ip6_public: []
			ip6_planetary: false
		}]
		capacity: zosreq.ComputeCapacity{
			cpu_centi_core: 0
			memory_mb: 0
			ssd_size_mb: 0
		}
		log_destinations: []
		stat_destinations: []
	}

	println(container1)

	mut r := zosreq.ReqDeployment{
		version: 1
		originator_twin_id: 0
		originator_deployment_id: 0
		expiration: 0
		deployment_requests: []
		signature_hash: ''
		signature_requirement: zosreq.SignatureRequirement{
			signature_requests: []
			weight_required: 0
			signatures: []
		}
		payment_providers: []
	}

	println(r)
}
