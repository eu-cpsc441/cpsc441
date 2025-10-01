# Devcontainer app image with sqlcmd installed
FROM mcr.microsoft.com/devcontainers/base:ubuntu-20.04

USER root

ENV DEBIAN_FRONTEND=noninteractive

# Install Microsoft repo and mssql-tools18 + ODBC driver
RUN apt-get update \
    && apt-get install -y --no-install-recommends curl apt-transport-https gnupg2 ca-certificates \
    && curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor -o /usr/share/keyrings/microsoft-prod.gpg \
    && echo "deb [arch=amd64,arm64,armhf signed-by=/usr/share/keyrings/microsoft-prod.gpg] https://packages.microsoft.com/ubuntu/20.04/prod focal main" > /etc/apt/sources.list.d/microsoft-prod.list \
    && apt-get update \
    && ACCEPT_EULA=Y apt-get install -y --no-install-recommends msodbcsql18 mssql-tools18 \
    && ln -s /opt/mssql-tools18/bin/sqlcmd /usr/local/bin/sqlcmd \
    && ln -s /opt/mssql-tools18/bin/bcp /usr/local/bin/bcp \
    && rm -rf /var/lib/apt/lists/*

# Ensure tools are on PATH for all shells
ENV PATH=/opt/mssql-tools18/bin:${PATH}

# Switch back to the non-root user provided by the devcontainers base image
USER vscode
