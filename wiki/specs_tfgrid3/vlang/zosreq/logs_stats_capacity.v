module zosreq

pub struct LogDestination {
pub mut:
	// location where the stout is being streamed too (for stdout/stderr)
	// redis://host:port/channel
	// e.g. redis://usrname:password@ipaddress:6379/db_index
	// if empty then not used
	redis_connection string
	// key of list to be used where info comes in (as queue)
	key_stdout string
	key_stderr string
	category   LogDestCategory
}

enum LogDestCategory {
	redis
}

pub struct StatDestination {
pub mut:
	// location where the stats are being streamed too
	// redis://host:port/channel
	// e.g. redis://usrname:password@ipaddress:6379/db_index
	// if empty then not used
	redis_connection string
	// prefix to use for key
	prefix string
	// only one for now, but to be ready for future
	category LogDestCategory
}

pub struct ComputeCapacity {
pub mut:
	// cpu cores, minimal 10 cpu_centi_core
	// always reserved with overprovisioning of about 1/4-1/6
	cpu u8
	// memory in bytes, minimal 100 MB
	// always reserved
	memory u64
	// min disk size reserved (to make sure you have growth potential)
	// when reserved it means you payment
	// if you use more, you pay for it

}
