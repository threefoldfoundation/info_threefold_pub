!!!include:grid3_javascript_loadclient

## Deploying ZDB

### Example code

!!!code url:https://github.com/threefoldtech/grid3_client_ts/blob/development/scripts/zdb.ts


### Detailed explanation

#### Getting the client

```javascript
const grid3 = getClient();
```

#### Building the model

```javascript
// create zdb object
const zdb = new ZDBModel();
zdb.name = "hamada";
zdb.node_id = 18;
zdb.mode = ZdbModes.user;
zdb.disk_size = 9;
zdb.public = false;
zdb.password = "testzdb";
```

Here we define a `ZDB model` and setting the relevant properties e.g 
- name
- node_id : where to deploy on
- mode: `user or seq`
- disk_size: disk size in GB
- public: public ipv6
- password: namespace password


#### preparing ZDBs collection
```javascript
// create zdbs object
const zdbs = new ZDBSModel();
zdbs.name = "tttzdbs";
zdbs.zdbs = [zdb];
zdbs.metadata = '{"test": "test"}';

```
you can attach multiple ZDBs innto the collection nand send it for deployment



#### Deployment


```javascript
    const res = await grid3.zdbs.deploy(zdbs);
    console.log(JSON.stringify(res));
```


#### Get Deployment information

`getObj` gives detailed information about the workload.
```javascript
    // get the deployment
    const l = await grid3.zdbs.getObj(zdbs.name);
    console.log(l);
```


#### Deleting a deployment

`.delete` method helps cancelling the relevant contracts related to that ZDBs deployment
```javascript
    // delete
    const d = await grid3.zdbs.delete({name:zdbs.name});
    console.log(d);
```
