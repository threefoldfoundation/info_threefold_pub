// ssd mounts under zmachine


module zosreq1

// ONLY possible on SSD
pub struct ReqZmount {
pub mut:
	size u64 // bytes
}

pub fn (mut zmunt ResZmount) challange() string {
	out := []string{}
	out << zmunt.size
	return out.join("")
}

pub struct ResZmount {
pub mut:
	volume_id string
}
