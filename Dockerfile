# see https://learn.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver1

# MS SQLServer runs on Linux or windows as 3 separate licenses: server, developer, express
# We run a linux one for now for best portability and stability (TODO check this assumption)
# Microsoft does not currently support running SQLServer on Windows for live production use.

# https://github.com/microsoft/mssql-docker/blob/master/linux/mssql-server-linux/Dockerfile
# https://github.com/microsoft/mssql-docker/tree/master/windows


# SA_PASSWORD environment variable is deprecated. Use MSSQL_SA_PASSWORD instead.
ENV MSSQL_SA_PASSWORD=#ChangeMe1st!


FROM mcr.microsoft.com/mssql/server:2022-latest
   
# Default SQL Server TCP/Port.
EXPOSE 1433

# Copy all SQL Server runtime files from build drop into image.
COPY ./install /

# Run SQL Server process.
CMD [ "/opt/mssql/bin/sqlservr" ]
