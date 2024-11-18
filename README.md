# docker-sqlserver-sa

Dockerised SqlServer 16 2022 - Linux Standalone

[TOC]

# Installation

* Start the db container

  docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=<YourStrong@Passw0rd>" \
     -p 1433:1433 --name sql1 --hostname sql1 \
     -d \
     mcr.microsoft.com/mssql/server:2022-latest

# Configuration

* Change the root password

  docker exec -it sql1 /opt/mssql-tools18/bin/sqlcmd \
     -S localhost -U SA \
     -P "$(read -sp "Enter current SA password: "; echo "${REPLY}")" \
     -Q "ALTER LOGIN SA WITH PASSWORD=\"$(read -sp "Enter new SA password: "; echo "${REPLY}")\""

* Create the schema if absent

* Create and entitle users


# Operation

* Expose the service

//TODO

# License

(c) Copyleft 2024 CC-BY-NC-SA Creative Commons 

https://creativecommons.org/licenses/by-nc-sa/4.0/deed.en

