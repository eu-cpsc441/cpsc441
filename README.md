# CPSC 441 - Database

## Running a SQL Server using Docker

### Option 1: Use `docker compose`

- Install Docker Desktop.
- Navigate to the directory [sql-server-docker](./sql-server-docker/) in a terminal window.
- Execute `docker compose up -d`.

### Option 2: Use `docker run`

Docker Compose is the preferred way, but you can create the container directly with the following command:

```
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=yourStrong(!)Password" -p 1433:1433 -d mcr.microsoft.com/mssql/server:2022-latest
```

### Connecting to the server

When connecting to server:

- User: `SA`
- Password: `yourStrong(!)Password`
