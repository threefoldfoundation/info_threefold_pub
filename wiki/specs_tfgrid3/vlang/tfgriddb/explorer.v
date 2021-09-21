module tfgriddb

import net.http
import json

pub struct Explorer {
	ipaddr string
}

pub fn explorer_new() ?Explorer {
	mut explorer := Explorer{
		ipaddr: 'https://explorer.devnet.grid.tf/graphql/'
	}

	return explorer
}

struct GraphqlQuery {
mut:
	query     string
	operation string
}

struct ReqData {
	data Body
}

struct Body {
	entities  []TFGridEntity
	twins     []TFGridTwin
	nodes     []TFGridNode
	farms     []TFGridFarmer
	countries []Country
	cities    []City
}

pub fn (mut explorer Explorer) entity_list() ?[]TFGridEntity {
	mut query := GraphqlQuery{
		query: '{ entities { name, entityId, name, gridVersion, countryId, cityId, address } }'
		operation: 'getAll'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return []TFGridEntity{}
	}
	return data.data.entities
}

pub fn (mut explorer Explorer) entity_by_id(id u32) ?TFGridEntity {
	mut query := GraphqlQuery{
		query: '{ entities(where: {entityId_eq: $id }) { name, entityId, name, gridVersion, countryId, cityId, address } }'
		operation: 'getOne'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return TFGridEntity{}
	}

	if data.data.entities.len > 0 {
		return data.data.entities[0]
	} else {
		eprintln('no entity found')
		return TFGridEntity{}
	}
}

pub fn (mut explorer Explorer) twin_list() ?[]TFGridTwin {
	mut query := GraphqlQuery{
		query: '{ twins { twinId, ip, gridVersion, address } }'
		operation: 'getAll'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return []TFGridTwin{}
	}
	return data.data.twins
}

pub fn (mut explorer Explorer) twin_by_id(id u32) ?TFGridTwin {
	mut query := GraphqlQuery{
		query: '{ twins(where: {twinId_eq: $id }) { twinId, ip, gridVersion, address } }'
		operation: 'getOne'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return TFGridTwin{}
	}

	if data.data.twins.len > 0 {
		return data.data.twins[0]
	} else {
		eprintln('no twin found')
		return TFGridTwin{}
	}
}

pub fn (mut explorer Explorer) nodes_list() ?[]TFGridNode {
	mut query := GraphqlQuery{
		query: '{ nodes { gridVersion, nodeId, farmId, twinId, countryId, cityId, sru, cru, hru, mru, role, location{ latitude, longitude }, publicConfig { ipv4, ipv6, gw4, gw6 }, address } }'
		operation: 'getAll'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return []TFGridNode{}
	}
	return data.data.nodes
}

pub fn (mut explorer Explorer) node_by_id(id u32) ?TFGridNode {
	mut query := GraphqlQuery{
		query: '{ nodes(where: { nodeId_eq: $id }) { gridVersion, nodeId, farmId, twinId, countryId, cityId, sru, cru, hru, mru, role, location{ latitude, longitude }, publicConfig { ipv4, ipv6, gw4, gw6 }, address } }'
		operation: 'getOne'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return TFGridNode{}
	}

	if data.data.nodes.len > 0 {
		return data.data.nodes[0]
	} else {
		eprintln('no node found')
		return TFGridNode{}
	}
}

pub fn (mut explorer Explorer) nodes_by_resources(sru u64, cru u64, hru u64, mru u64) ?[]TFGridNode {
	mut query := GraphqlQuery{
		query: '{ nodes(where: { sru_gt: $sru, cru_gt: $cru, hru_gt: $hru, mru_gt: $mru }) { gridVersion, nodeId, farmId, twinId, countryId, cityId, sru, cru, hru, mru, role, location{ latitude, longitude }, publicConfig { ipv4, ipv6, gw4, gw6 }, address } }'
		operation: 'getAll'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return []TFGridNode{}
	}
	return data.data.nodes
}

pub fn (mut explorer Explorer) nodes_by_location(latitude string, longitude string) ?[]TFGridNode {
	mut query := GraphqlQuery{
		query: '{ nodes(where: {location: { latitude_eq: "$latitude", longitude_eq: "$longitude" }}) { gridVersion, nodeId, farmId, twinId, countryId, cityId, sru, cru, hru, mru, role, location{ latitude, longitude }, publicConfig { ipv4, ipv6, gw4, gw6 }, address } }'
		operation: 'getAll'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return []TFGridNode{}
	}
	return data.data.nodes
}
pub fn (mut explorer Explorer) nodes_by_country_city(geoLocation GeoLocation) ?[]TFGridNode {
	mut sub_query:=""
	if geoLocation.city_name!=""{
		if city := explorer.city_by_name(geoLocation.city_name) {
			sub_query+="cityId_eq: $city.id,"
		}
		else {
			panic("invalid city name")
		}
	}
	if geoLocation.country_name!=""{
		if country := explorer.country_by_name(geoLocation.country_name){
			sub_query+= "countryId_eq: $country.id,"
		}
		else{
			panic("invalid country name")
		}
	}

	mut query := GraphqlQuery{
		query: '{ nodes(where: {$sub_query}) { gridVersion, nodeId, farmId, twinId, countryId, cityId, sru, cru, hru, mru, role, location{ latitude, longitude }, publicConfig { ipv4, ipv6, gw4, gw6 }, address } }'
		operation: 'getAll'
	}
	
	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return []TFGridNode{}
	}
	return data.data.nodes
}

pub fn (mut explorer Explorer) farms_list() ?[]TFGridFarmer {
	mut query := GraphqlQuery{
		query: '{ farms { gridVersion, farmId, twinId, name, countryId, cityId, pricingPolicyId, certificationType } }'
		operation: 'getAll'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return []TFGridFarmer{}
	}
	return data.data.farms
}

pub fn (mut explorer Explorer) farm_by_id(id u32) ?TFGridFarmer {
	mut query := GraphqlQuery{
		query: '{ farms(where: { farmId_eq: $id }) { gridVersion, farmId, twinId, name, countryId, cityId, pricingPolicyId, certificationType } }'
		operation: 'getOne'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return TFGridFarmer{}
	}

	if data.data.farms.len > 0 {
		return data.data.farms[0]
	} else {
		eprintln('no farm found')
		return TFGridFarmer{}
	}
}

pub fn (mut explorer Explorer) countries_list() ?[]Country {
	mut query := GraphqlQuery{
		query: '{ countries(limit: 10000) { name, code } }'
		operation: 'getAll'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return []Country{}
	}
	return data.data.countries
}

pub fn (mut explorer Explorer) countries_by_name_substring(substring string) ?[]Country {
	mut query := GraphqlQuery{
		query: '{ countries(where: { name_contains: "$substring" }) { name, code } }'
		operation: 'getAll'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return []Country{}
	}
	return data.data.countries
}
pub fn (mut explorer Explorer) country_by_name(name string) ?Country {
	mut query := GraphqlQuery{
		query: '{ countries(where: { name_eq: "$name" }) { name, code, id } }'
		operation: 'getOne'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return Country{}
	}
	if data.data.countries.len > 0 {
		return data.data.countries[0]
	} else {
		eprintln('no country found with $name name')
		return Country{}
	}
}

pub fn (mut explorer Explorer) country_by_id(id u32) ?Country {
	mut query := GraphqlQuery{
		query: '{ countries(where: { id_eq: $id }) { name, code } }'
		operation: 'getAll'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return Country{}
	}

	if data.data.countries.len > 0 {
		return data.data.countries[0]
	} else {
		eprintln('no country found')
		return Country{}
	}
}

pub fn (mut explorer Explorer) cities_list() ?[]City {
	mut query := GraphqlQuery{
		query: '{ cities(limit: 10000) { name, countryId } }'
		operation: 'getAll'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return []City{}
	}
	return data.data.cities
}

pub fn (mut explorer Explorer) cities_by_name_substring(substring string) ?[]City {
	mut query := GraphqlQuery{
		query: '{ cities(where: { name_contains: "$substring" }) { name, countryId } }'
		operation: 'getAll'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return []City{}
	}
	return data.data.cities
}
pub fn (mut explorer Explorer) city_by_name(name string) ?City {
	mut query := GraphqlQuery{
		query: '{ cities(where: { name_eq: "$name" }) { name, countryId, id } }'
		operation: 'getOne'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return City{}
	}
	if data.data.cities.len > 0 {
		return data.data.cities[0]
	} else {
		eprintln('no city found with $name name')
		return City{}
	}
}

pub fn (mut explorer Explorer) city_by_id(id u32) ?City {
	mut query := GraphqlQuery{
		query: '{ cities(where: { id_eq: $id }) { name, countryId } }'
		operation: 'getAllById'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return City{}
	}

	if data.data.cities.len > 0 {
		return data.data.cities[0]
	} else {
		eprintln('no city found')
		return City{}
	}
}

pub fn (mut explorer Explorer) cities_by_country_id(country_id u32) ?[]City {
	mut query := GraphqlQuery{
		query: '{ cities(where: { countryId_eq: $country_id }) { name, countryId } }'
		operation: 'getAllByCountryId'
	}

	req := make_post_request_query(explorer.ipaddr, query) ?

	res := req.do() ?

	data := json.decode(ReqData, res.text) or {
		eprintln('failed to decode json')
		return []City{}
	}

	return data.data.cities
}

pub fn make_post_request_query(url string, query GraphqlQuery) ?http.Request {
	post := http.method_from_str('POST')
	data := json.encode(query)
	mut req := http.new_request(post, url, data) ?
	req.add_header(http.CommonHeader.content_type, 'application/json')

	return req
}
