module zosreq

pub struct ReqIPAddress {
	// no attributes needed, the contract will
	// find the first available free public ip
	// and the node is gonna use it
}

// response from the farmer (digital twin)
pub struct IPAddressReservations {
pub mut:
	// name unique per deployment, re-used in request & response
	name         string
	reservations []IPAddressReservation
	// unique if of dogital twin of farmer/farmer who gave out the ipaddress
}

pub struct IPAddressReservation {
pub:
	// id as given by the user who requests it
	name string
	addr string
	// e.g. 24, default not specified
	mask       int
	port       int
	cat        IpAddressType = IpAddressType.ipv4
	expiration int
}

pub enum IpAddressType {
	ipv4
	ipv6
}
