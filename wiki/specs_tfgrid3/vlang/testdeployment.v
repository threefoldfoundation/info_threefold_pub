import zos
import threefoldtech.rmb.client
import despiegk.crystallib.redisclient

import libsodium
import json
import time

fn main() {
	zmount_size := i64(1024)*1024*1024*10 
	mut zmount := zos.Zmount{
		size: zmount_size,
	}

	mut zmount_workload := zos.Workload{
		version: 0,
		name: "zmountiaia",
		type_: zos.workload_types.zmount,
		data: json.encode(zmount),
		metadata: "zm",
		description: "zm test",
	}

	mut network := zos.Znet{
		subnet: "10.242.1.0/24",
		ip_range: "10.242.0.0/16",
		wireguard_private_key: "SDtQFBHzYTu/c7dt/X1VDZeGmXmE7TD6nQC5tp4wv38=",
		wireguard_listen_port: 7821,
		peers:[zos.Peer{
			subnet: "10.242.2.0/24",
			wireguard_public_key: "cEzVprB7IdpLaWZqYOsCndGJ5MBgv1q1lTFG1B2Czkc=",
			allowed_ips: ["10.242.2.0/24","100.64.242.2/32"],
		}],
	}
	println(">>>>>>>>>")
	println(network.challenge())
	mut znet_workload := zos.Workload{
		version: 0,
		name: "testznetwork",
		type_: zos.workload_types.network,
		data: json.encode(network),
		metadata: "zn",
		description: "zn test",
	}


	zmachine := zos.Zmachine{
		flist:"https://hub.grid.tf/tf-official-apps/base:latest.flist",
		network: zos.ZmachineNetwork{
			public_ip:"",
			interfaces:[
				zos.ZNetworkInterface{
					network:"testznetwork",
					ip:"10.242.1.5",
				}
			],
			planetary: true,
		},
		size:1,
		compute_capacity: zos.ComputeCapacity{
			cpu: 1,
			memory: i64(1024)*1024*1024*2
		},
		mounts: [
			zos.Mount{
				name:"zmountiaia",
				mountpoint:"/mydisk"
			}
		],
		entrypoint:"/sbin/zinit init",
		env: map{
			"SSH_KEY": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCkg3GPooZdQbeexFkNKyHjgYF1rIov7RmiQr8JR8PLIJWH3biheosCHbtfInH5pXHCMVwm6F9GLk3PXfpxW5vOan7FmmQHWRYARNIp5L+6+B+EKaJKMo6HX1QPakb2IO9az5G+KUxwRwiyVa7brblzp8DGbjcMbEz+HEF4y9r/sOIxxL3kHt1eHNEAVZlUWc0gFkleZC8zsTwWsCir4s52XC4N++Bk79DMw3Fv3WK71qN/3oXeuVoWYwvacV0lvBQfeDMArOIRnK0yA91rsPY/pwP7qmUgewnBX6+k0lvJ5JDTD1nfv/jLJwqb0KBtMZf5e8/zHhz5CvujLNZJu2pGiR5vn5q1RExWh+gJ23AxsAf1uDMJUk5miNLHDMkBzi2PEYbxxPAbleNqxMKzZ7EuLgFnwJ8wB5pCiYRMStZIDkmrgDu20Vu2/4hX7WgPveDDTvm92d/jlVHmqcftkBXSxiiYuRDT9nU+WgtBKzZByil7vTSbxxmvY/Cz6Q10QLk= ayoub@ayoub"
		}
	}

	mut zmachine_workload := zos.Workload{
		version: 0,
		name: "testzmachine",
		type_: zos.workload_types.zmachine,
		data: json.encode(zmachine),
		metadata: "zmachine",
		description: "zmachine test",
	}

	mut deployment := zos.Deployment{
		version: 0,
		twin_id: 17,
		expiration:  1626394539,//time.now().unix_time() + 11111,
		metadata: "zm dep",
		description: "zm test",
		workloads: [zmount_workload, znet_workload, zmachine_workload],
		signature_requirement : zos.SignatureRequirement{
			weight_required: 1,
			requests:[
				zos.SignatureRequest{
					twin_id: 17,
					weight: 1,
				}
			]
		}
	}


	challenge := deployment.challenge()
	hash := deployment.challenge_hash()
	hex_hash := hash.hex()
	deployment.contract_id = 23

	mut secret := [byte(219), 120, 183, 9, 60, 120, 110, 229, 150, 193, 97, 28, 106, 64, 87, 94, 218, 17, 197, 254, 230, 176, 61, 228, 195, 57, 141, 200, 121, 7, 236, 205]!
	mut pubkey := [byte(82), 166, 112, 158, 150, 59, 177, 127, 129, 35, 152, 163, 70, 192, 182, 10, 176, 223, 203, 45, 3, 52, 154, 156, 191, 172, 91, 253, 189, 16, 186, 29]!
	key := libsodium.new_signing_key(pubkey, secret)

	// println('deployment challenge: "$challenge"')
	println("deployment hash: $hex_hash")
	deployment.sign(17, key)
	payload := json.encode(deployment)
	// println("payload: $payload")
	
	// do msgbus call
	mut mb :=  client.MessageBusClient{
		client: redisclient.connect('localhost:6379') or { panic(err) }
	}

	
	mut msg := client.prepare("zos.deployment.deploy", [2], 0, 2)
	mb.send(msg,payload)
	response := mb.read(msg)
	println("Result Received for reply: $msg.retqueue")
	for result in response {
		println(result)
		println(result.data)
	}
}
