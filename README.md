# Apache_SQLServer_docker

Used for create project that needs SQL  Server as database and needs apache as it webserver

Prerequisites :
1. [Docker](https://www.docker.com/) Installed on your system.

Included :
- Php 7.1
- MSSQL Server Driver
- SQL Server Database
- And several php extensions
- bash scripts<sup>*</sup>
----

**Make sure you put the PHP projects to www folder**

##### Start Server
```
docker-compose up -d
```

##### Stop Server
```
docker-compose down
or
docker-compose down --rmi local 
```

> create bash script to create `.env` file that used for connecting to sql server database if needed. Last time, my php project need containerID as a host for connect to the database.
