//can represent person, company, ...
// anyone using or operating on the TFGrid
pub struct TFGridEntity {
pub mut:
	//to define version of schema used
    version int = 1
	// incremental ID as given by Substrate
    id int
    name string
	//SubstrateAccountID = links to wallet as owned by the entity (company or person)
    account_id string
	// id of the country
    country_id int
	// if of a city
    city_id int
}

fn example(){
	return GridEntity{
		id: 999
		name: "Some Name"
		address: "5FX45JeA5Z1F4fJBJwyWcZvyi7XU51ggqJREjM2e4wYRiuj6"
		country_id: 10
		city_id: 5
	}
}

