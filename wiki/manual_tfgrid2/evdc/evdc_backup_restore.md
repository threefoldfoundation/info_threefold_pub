# eVDC Backup and Restore

Each eVDC is backed-up at regular intervals (for now, daily). Next to these regular backups, manual back-ups can also be made. 

Back-ups remain available for a month and are then deleted automatically. 

![](img/evdc_backup_restore.png)

Two types of back-ups are available: 
- entries starting with `config` represent the backups of the cluster configurations and secrets
- entries starting with `vdc` represent the back-ups of the data on the deployed solutions. 

> Note: the backups only refer to the eVDC data, not to the persistent storage volumes that are part of the deployed solutions. If these volumes are backed up and recovered, they require specific action within the deployed solution.

!!!include:evdc_manual_backup

!!!include:evdc_restore

!!!include:evdc_backup_delete