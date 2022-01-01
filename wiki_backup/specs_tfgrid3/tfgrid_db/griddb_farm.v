//can represent person, company, ...
// anyone using or operating on the TFGrid
pub struct TFGridFarm {
pub mut:
	//to define version of schema used
    version int = 1
	// incremental ID as given by Substrate
    id int
	// name of farm
    name string
    certification_type CertificationType
	// id of the country
    country_id int
	// if of a city
    city_id int
	//available public ipaddr
	public_ips []PublicIP
	//link to twin who owns this farm
	farmtwin int
}

pub struct PublicIP {
pub mut:
	//212.3.247.26
	ip string
	//212.3.247.1
	gateway string
pub:
	//0 means not used
	// if not 0 then, a user has reserved this IP address
	// the id links to a contract as used by the user
	// a contract is X nr of zreservations as done for one specific 3node
	// there is a migration method which allows an existing pubip to go from one 3node to another (gets other nodecontract_id)
	nodecontract_id int = 0
}

pub enum CertificationType{
	diy
	certified
}

fn example(){
	return TFGridFarm{
		id: 999
		name: "Some Name For My Farm"
		certification_type: CertificationType.diy
		country_id: 10
		city_id: 5
		public_ips:[
			{
				ip: "212.3.247.26"
				gateway: "212.3.247.1"
				contract_id: 7648
			}

		]
	}
}









> TODO: pricing policy not linked to farm

