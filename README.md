# CPSC 441 - Database

## Running a SQL Server using Docker

```
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=yourStrong(!)Password" -p 1433:1433 -d mcr.microsoft.com/mssql/server:2022-latest
```

When connecting to server:

- User: `SA`
- Password: `yourStrong(!)Password`
