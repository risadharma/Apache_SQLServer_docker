# Apache_SQLServer_docker

Prerequisites :
1. [Docker](https://www.docker.com/) Installed on your system.

Included :
- Php 7.1
- MSSQL Server Driver
- SQL Server Database
- And several php extensions
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

Used for create project that needs SQL  Server as database and needs apache as it webserver
