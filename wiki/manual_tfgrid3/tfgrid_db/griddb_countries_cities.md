## TFGridDB Countries and Cities

### Datasource

- Countries: https://restcountries.eu/rest/v2/all
- Cities: https://raw.githubusercontent.com/shivammathur/countrycity/master/data/geo.json

### Process

tfgrid_db has a copy of this data which is stored as follows:

```
Country {
    id int
    //name as defined in restcountries api
    name string
    //alpha3Code as used in restcountries api
    code string
    //region as used in restcountries api
    region string
    //subregion as used in restcountries api
    subregion string
}

City {
    id int
    name string
    country_id int
}
```

When transformed, objects are stored in our graphql database.

### Query Countries and Cities

A user can query for Countries and Cities on the graphql database instance


go to https://explorer.devnet.grid.tf/graphql/

Show countries

```graphql
{
  countries{
    id,
    name,
    code
  }
}

```


show countries & cities no limit

```graphql
{
  countries() {
    name,
    code
  },
  cities() {
    countryId,
    name
  }
}
```

show cities, limited to 1 country

```graphql
{
  countries(limit:1) {
    name,
    code
  },
  cities {
    countryId,
    name
  }
}
```

show cites of one country, the country id can be found with first query above

```graphql
{ cities(where: { countryId_eq: 10 }) { name, countryId } }
```

### remarks

This data is loaded when the TFGrid DB is initialized.


