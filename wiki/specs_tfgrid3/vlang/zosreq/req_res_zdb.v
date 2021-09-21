module zosreq

pub struct ReqZDB {
pub mut:
	namespace string
	// size in bytes
	size   u64
	mode      ZDBMode
	password  string
	disk_type DiskType
	public    bool
}

enum DiskType {
	hd
	ssd
}

pub struct ResZDB {
pub mut:
	// name unique per deployment, re-used in request & response
	name      string
	namespace string
	ips       []string
	port      u32
}

pub enum ZDBMode {
	seq
	user
}
