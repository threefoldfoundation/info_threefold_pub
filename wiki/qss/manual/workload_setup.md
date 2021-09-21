- Create Pool
<img width="1201" alt="Screen Shot 2021-05-11 at 11 45 40 AM" src="https://user-images.githubusercontent.com/13523434/117797466-5a79ed80-b250-11eb-932b-a0856d81cd6f.png">

- Create private Network, which will host our kubernetes vm and the 3 etcd containers.

<img width="569" alt="Screen Shot 2021-05-11 at 11 47 36 AM" src="https://user-images.githubusercontent.com/13523434/117797469-5b128400-b250-11eb-8a7c-f335b0577111.png">

  - Getting more access to the new network.

<img width="903" alt="Screen Shot 2021-05-10 at 2 53 57 PM" src="https://user-images.githubusercontent.com/13523434/117797458-58179380-b250-11eb-8299-5a2c99ca21d8.png">

- Create Kubernetes VM.

<img width="569" alt="Screen Shot 2021-05-11 at 11 49 02 AM" src="https://user-images.githubusercontent.com/13523434/117797472-5c43b100-b250-11eb-9d32-70d32faa0358.png">

- Make sure to enable ipv4 for public access to the kubernetes VM.
<img width="992" alt="Screen Shot 2021-05-11 at 11 52 13 AM" src="https://user-images.githubusercontent.com/13523434/117797474-5cdc4780-b250-11eb-93d6-0300e5443213.png">

- Create 3 etcd containers 
  - [Flist](https://hub.grid.tf/essam.3bot/bitnami-etcd-latest.flist).
  - Attach 25 ssd Volume with mount point ```/bitnami```

<img width="992" alt="Screen Shot 2021-05-11 at 11 56 36 AM" src="https://user-images.githubusercontent.com/13523434/117797486-5e0d7480-b250-11eb-9d42-8ba57c9d1d5b.png">
<img width="992" alt="Screen Shot 2021-05-11 at 11 57 07 AM" src="https://user-images.githubusercontent.com/13523434/117797490-5f3ea180-b250-11eb-9aad-c527b6c630bd.png">
<img width="992" alt="Screen Shot 2021-05-11 at 11 57 32 AM" src="https://user-images.githubusercontent.com/13523434/117797497-5fd73800-b250-11eb-98db-6e47b690e817.png">
