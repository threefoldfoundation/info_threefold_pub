//can represent person, company, ...
// anyone using or operating on the TFGrid
pub struct TFGridTwin {
pub mut:
	//to define version of schema used
    version int = 1
	// incremental ID as given by Substrate, is unique per twin
    id int
	//SubstrateAccountID = links to wallet as owned by the entity (company or person)
    account_id string
	// planetary network addr
	// can be any ipv6 or ipv4 addr
	// ipv6 example: fe80::9c2e:67ff:fea9:c7fb/64
	// ipv4: 212.3.247.33
	ip string
	entities []EntityRelationshipProof
}

//proofs that a twin is owned by an entity
pub struct EntityRelationshipProof {
pub mut:
	entity_id int
	//signature from entity
	// data signed: entity_id+twin_id = concatination of 2x uint32 in bytearray bigendian
	// ED25519 SIGNATURE
	signature string
}


fn example(){
	return GridEntity{
		id: 999
	}
	//TODO: complete example
}





