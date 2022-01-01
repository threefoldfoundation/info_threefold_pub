import zos
import threefoldtech.rmb.client
import despiegk.crystallib.redisclient

import json

fn main() {
	mut mb :=  client.MessageBusClient{
		client: redisclient.connect('localhost:6379') or { panic(err) }
	}

	payload := json.encode({'contract_id':23})
	println("payload: $payload")
	mut msg := client.prepare("zos.deployment.get", [2], 0, 2)
	mb.send(msg,payload)
	response := mb.read(msg)
	println("Result Received for reply: $msg.retqueue")
	for result in response {
		println(result)
		println(result.data)
	}
}
