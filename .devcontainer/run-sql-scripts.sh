#!/bin/bash
set -eu

# Runs all .sql files under /workspace/scripts/sql-server (recursively) when the dev container starts.
# Requires sqlcmd in the PATH (provided by mcr.microsoft.com/mssql-tools image) and access to the MSSQL server.

# Config
MSSQL_HOST="127.0.0.1"
MSSQL_PORT="1433"
MSSQL_USER="sa"
SA_PASSWORD="yourStrong(!)Password"
SQL_ROOT_DIR="/workspace/scripts/sql-server"

# sqlcmd should already be installed in the devcontainer image (mssql-tools18)
SQLCMD=${SQLCMD:-sqlcmd}
SQLCMD_TRUST_FLAG=${SQLCMD_TRUST_FLAG:--C} # Use -C to trust server certificate by default

# If the directory doesn't exist, nothing to do.
if [ ! -d "$SQL_ROOT_DIR" ]; then
  echo "No SQL scripts directory found at $SQL_ROOT_DIR. Skipping."
  exit 0
fi


echo "Waiting for SQL Server to be ready at ${MSSQL_HOST}:${MSSQL_PORT}..."
ATTEMPTS=60
SLEEP_SECS=2
i=1
while [ $i -le $ATTEMPTS ]; do
  if "$SQLCMD" -S "${MSSQL_HOST},${MSSQL_PORT}" -U "$MSSQL_USER" -P "$SA_PASSWORD" $SQLCMD_TRUST_FLAG -Q "SELECT 1" >/dev/null 2>&1; then
    echo "SQL Server is ready."
    break
  fi
  if [ $i -eq $ATTEMPTS ]; then
    echo "SQL Server did not become ready in time." >&2
    exit 1
  fi
  i=$((i+1))
  sleep "$SLEEP_SECS"
done

# Check if there are any files to run
if ! find "$SQL_ROOT_DIR" -type f -name "*.sql" -print -quit | grep -q .; then
  echo "No .sql files found under $SQL_ROOT_DIR."
  exit 0
fi

# Find and run all .sql files in sorted order for determinism
echo "Running SQL scripts from $SQL_ROOT_DIR..."

# Use find with null delimiters to be safe with spaces; sort -z for null-separated sort
find "$SQL_ROOT_DIR" -type f -name "*.sql" -print0 | sort -z | while IFS= read -r -d '' file; do
  echo "- Executing: $file"
  # -b: terminate batch job if an error occurs, non-zero exit code
  # -l 30: login timeout seconds
  if ! "$SQLCMD" -S "${MSSQL_HOST},${MSSQL_PORT}" -U "$MSSQL_USER" -P "$SA_PASSWORD" $SQLCMD_TRUST_FLAG -l 30 -b -i "$file"; then
    echo "Execution failed for $file" >&2
    exit 1
  fi
done

echo "All SQL scripts executed successfully."
