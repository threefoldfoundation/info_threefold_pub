## Minio deployment
Minio is an object storage server with a nice ui and S3 APIs.
This solution will help create a Minio deployment in a Single or PRimary/secondary mode.

## Steps

#### Choose Name
![minio_1](img/minio_1.jpg)

#### Setup Type
![minio_2](img/minio_2.jpg)

#### Choose Storage Type
![minio_3](img/minio_3.jpg)

#### Set Container Resources
![minio_4](img/minio_4.jpg)

#### Specify Number of Shards
![minio_5](img/minio_5.jpg)

#### Select pool you wish to distribute ZDB workloads on
![minio_6](img/minio_6.jpg)

#### Select pool for Primary
![minio_7](img/minio_7.jpg)

#### Select node for Primary. You can choose to be selected automatically
![minio_8](img/minio_8.jpg)

#### Choose Network
![minio_9](img/minio_9.jpg)

#### Set Credentials (AK/SK)
![minio_10](img/minio_10.jpg)

#### Optional Container Logs
![minio_11](img/minio_11.jpg)

#### Add you SSH Key
![minio_12](img/minio_12.jpg)

### Deploying your solution
![minio_13](img/minio_13.jpg)

#### Select IP
![minio_14](img/minio_14.jpg)

### Choose whether you want to assign a global Ipv6 address for your container or not
![minio_15](img/minio_15.jpg)

#### Confirmation
![minio_16](img/minio_16.jpg)

#### ZDB Reservation
The solution does two reservations, one for ZDB which will be used as backend for Minio and the next for Minio containers.
![minio_17](img/minio_17.jpg)

#### Success
![minio_18](img/minio_18.jpg)

#### Access your Solution
![minio_19](img/minio_19.jpg)
