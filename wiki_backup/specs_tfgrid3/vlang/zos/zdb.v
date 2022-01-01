module zos

type ZdbMode = string

pub struct ZdbModes {
pub:
	seq string = "seq"
	user string = "user"
}

pub const zdb_modes = ZdbModes{}

type DeviceType = string

pub struct DeviceTypes {
pub:
	hdd string = "hdd"
	ssd string = "ssd"
}

pub const device_types = DeviceTypes{}

pub struct Zdb {
pub mut:
	namespace string
	// size in bytes
	size      u64
	mode      ZdbMode
	password  string
	disk_type DeviceType
	public    bool
}

pub fn(mut z Zdb) challenge() string {

	mut out := ""
	out += '$z.size'
	out += '$z.mode'
	out += z.password
	out += '$z.disk_type'
	out += '$z.public'

	return out

}

pub struct ZdbResult {
pub mut:
	name      string
	namespace string
	ips       []string
	port      u32
}
