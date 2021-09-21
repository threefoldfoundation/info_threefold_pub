# Manage Storage Nodes

Storage Nodes contain the disk storage (HDD and SSD) capacity that can be used to store your workloads. 

Data is stored in Zero-DB's. Zero-DB (ZDB) is a very fast and efficient key-value store that is redis-protocol (mostly) compatible. This makes data persistent inside and always appends datafile namespaces support.

Update of storage is done in an automated way in your VDC. 
The rule applied for this is the following: ZDBs grow based on the usage. Once you reach 70% of your plan, it will reserve more storage capacity to a degree where usage is reset 30% after the extension. 

![](img/evdc_k8s_storage_zdbs_button.png ':size=400')

### ZDBS INFO

The button `ZDBS INFO` contains all the info of ZDBs set-up. 

It contains meta-information about the stored data in the following format: 

![](img/evdc_k8s_storage_zdb.png ':size=400')

With the button `Z-STOR CONFIG`, you can download the configuration (in `.toml` format) of Z-STOR. It describes how data is split-up in the ZDB back-end. 

### Z-STOR CONFIG 

![](img/evdc_k8s_storage_zstor_config_button.png ':size=200')

Z-STOR encrypts the data using a selected algorithm and stores the results in multiple shards (chunks) on ZDBs back-end. Data is then retrieved using the path and the metadata store only.

ZDBs can be removed as long as enough are left to recover the data.
Z-STOR also allows the reconstruction of the data, loading existing data (as long as sufficient ZDBs are left), re-encoding it, and storing it in (new) ZDBs according to the current configuration.

In the below configuration, data is sharded (chunked) into three pieces (each hosted on a different node with indicated IPv6 address), with two shards being sufficient to recompose the data. 

![](img/evdc_k8s_storage_zstor_config2.png ':size=400')

## More Info:

  - [Back-up and Restore](evdc_backup_restore) - An introduction to how to create and restore back-ups.
 