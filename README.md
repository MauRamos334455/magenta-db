<p align="center"> <a href="https://www.ingenieria.unam.mx/unica/"><img src="./public/img/mg-font.png" width="400"></a></p>

# Magenta-DB
Database architecture for the 
[Magenta](https://github.com/MauRamos334455/magenta) system.

## Dependencies
* [Docker]()
## Installation
### Execute the init Docker script in main folder
For PowerShell:
```shell
./scripts/docker-init.ps1
```

Make sure you can run scripts in PowerShell.

For bash:
```shell
./scripts/docker-init.sh
```

Also you can instead of use Docker install a native PostgreSQL 14 server.

Once in PSQL shell execute:
```shell
\i s-00-main.sql
```

Continue with the setup of the [Magenta](https://github.com/MauRamos334455/magenta) system.

## Built with
* [PostgreSQL](https://www.postgresql.org)
* [Docker](https://www.docker.com)

## Credits
<p align="center"> <a href="https://www.ingenieria.unam.mx/unica/"><img src="./public/img/unica.png" width="200"></a></p>