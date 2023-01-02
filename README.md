<p align="center"> <a href="https://www.ingenieria.unam.mx/unica/"><img src="./public/img/mg-font.png" width="400"></a></p>

# Magestic-DB
Database architecture for the 
[Magestic](https://github.com/MauRamos334455/magestic) system.

## Dependencies
* [Docker]()
## Installation
### Execute the init Docker script 
For PowerShell:
```shell
magestic-db/scripts/docker-init.ps1
```

Make sure you can run scripts in PowerShell.

For bash:
```shell
magestic-db/scripts/docker-init.sh
```

Also you can instead of use Docker install a native PostgreSQL 14 server.

Once in PSQL shell execute:
```shell
\i magestic-db/source/s-00-main.sql
```

Continue with the setup of the [Magestic](https://github.com/MauRamos334455/magestic) system.

## Built with
* [PostgreSQL](https://www.postgresql.org)
* [Docker](https://www.docker.com)

## Credits
<p align="center"> <a href="https://www.ingenieria.unam.mx/unica/"><img src="./public/img/unica.png" width="200"></a></p>