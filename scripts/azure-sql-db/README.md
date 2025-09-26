# Azure SQL Database

These scripts are designed to work using a single database named `cpsc441`. Tables from each script are organized into schemas instead of separate databases. This is intentionally done to align with the free database offer from Azure (there is a limit to the number of free databases).

When querying, make sure to fully qualify the table you want data from.

Instead of this:

```sql
SELECT * FROM CUSTOMER;
```

Do this:

```sql
SELECT * FROM cpsc441.c7_saleco.CUSTOMER;
```
