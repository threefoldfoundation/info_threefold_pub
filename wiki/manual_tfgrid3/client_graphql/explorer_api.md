# TF Grid DB client

## Usage

```v
// Create a new instance of the client
mut tfgrid := tfgrid.tfgrid_new() ?
```

## List entities

```v
entities := tfgrid.entity_list()?
println(entities)
```

## Get Entity by ID

```v
entity := tfgrid.entity_get_by_id(1) ?
print(entity)
```

## List twins

```v
twins := tfgrid.twin_list()?
println(twins)
```

## Get Twin by ID

```v
twin := tfgrid.twin_get_by_id(1) ?
print(twin)
```

## List nodes

```v
nodes := tfgrid.nodes_list()?
println(nodes)
```

## Get Node by ID

```v
node := tfgrid.nodes_get_by_id(1) ?
print(node)
```

## Get Nodes by resource values

```v
sru := 150
cru := 2 
hru := 3000
mru := 5

nodes_by_resources := tfgrid.nodes_list_by_resource(sru, cru, hru, mru)?
println(nodes_by_resources)
```

## List farms

```v
farms := tfgrid.farms_list()?
println(farms)	
```

## Get farm by ID

```v
farm := tfgrid.farm_get_by_id(1) ?
print(farm)
```

## List countries

```v
countries := tfgrid.countries_list()?
println(countries)
```

## Get country by substring in name

```v
countries_by_name_substring := tfgrid.countries_by_name_substring("elgium")?
println(countries_by_name_substring)
```

## Get country by ID

```v
country_by_id := tfgrid.country_by_id(65)?
println(country_by_id)
```

## List cities

```v
cities := tfgrid.cities_list()?
println(cities)
```
	
## Get cities by substring in name

```v
cities_by_name_substring := tfgrid.cities_by_name_substring("hent")?
println(cities_by_name_substring)
```

## Get city by ID

```v
city_by_id := tfgrid.city_by_id(65)?
println(city_by_id)
```

## Get city by country_id

```v
cities_by_country_id := tfgrid.cities_by_country_id(65)?
println(cities_by_country_id)
```