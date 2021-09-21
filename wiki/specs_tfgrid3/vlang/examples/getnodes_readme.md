## script examples

### - Get nodes by location

This script is used to get the nodes by location which include the latitude and longitude

#### Args

```
--help  for more information about the command
--latitude value (required)

--longitude value (required)
```

##### The `latitude` and `longitude` are required arguments

### Examples

- Execute

```bash
v run examples/get_nodes_by_location.v --latitude 50.85 --longitude 4.35
```

- Help `--help`

```
v run examples/get_nodes_by_location.v --help
```

```bash
This method to get nodes by location including latitude and longitude

  --latitude value (required)

  --longitude value (required)
```

### - Get nodes by country or city

This script is used to get the nodes by country or city or even both

#### Args

This method to get nodes by city or country or both

```bash
  --help        get information about the command

  --city 	name of the city  (optional)

  --country 	name of the country (optional)
```

##### You have to specify at least a city or country

- Execute
  - Use country only
    ```bash
    v run examples/get_nodes_by_city_country.v   --country Albania
    ```
  - Use city only
    ```bash
    v run examples/get_nodes_by_city_country.v --city  Douzy
    ```
  - Use both city and country
    ```bash
    v run examples/get_nodes_by_city_country.v --country Albania --city Douzy
    ```
- Help `--help`

  ```bash
  v run examples/get_nodes_by_city_country.v --help
  ```

  ```
  This method to get nodes by city or country or both

    --city 	name of the city  (optional)

    --country 	name of the country (optional)

  ```

  ### - Get nodes by capacity

  This script is used to get the nodes by capacity
  including ssd resource unit `sru`, core resource unit `cru`, hd resource unit `hru` and memory resource unit `mru`

  #### Args

  This method to get nodes by capacity (sru, cru, hru, mru)

  ```bash
  --help          get   information about   the command

  --sru 		nodes   selected should   have a minumum  value of sru (ssd  resource unit)   equal to this   (optional)

  --cru 		nodes   selected should   have a minumum  value of cru (core   resource unit)  equal to this    (optional)

  --hru 		nodes   selected should   have a minumum  value of hru (hd   resource unit)  equal to this    (optional)

  --mru   	nodes   selected should   have a minumum  value of mru   (memory resource  unit) equal to this  (optional)
  ```

- Execute

  - Use (sru, cru, hru, mru)

    ```bash
    v run examples/get_nodes_by_capacity.v --sru 512110190591 --cru 23 --hru 9001778946047 --mru 202875789311
    ```

  - Use single argument
    ```bash
    v run examples/get_nodes_by_capacity.v --sru 512110190591
    ```
  - Use no arguments in this case will list all the nodes

    ```bash
    v run examples/get_nodes_by_capacity.v
    ```

  - Help `--help`

    ```bash
    This method to get nodes by city or country or both

    --sru 		nodes selected should have a minumum value of sru (ssd resource unit) equal to this  (optional)

    --cru 		nodes selected should have a minumum value of cru (core resource unit) equal to this  (optional)

    --hru 		nodes selected should have a minumum value of hru (hd resource unit) equal to this  (optional)

    --mru   	nodes selected should have a minumum value of mru (memory resource unit) equal to this (optional)
    ```
