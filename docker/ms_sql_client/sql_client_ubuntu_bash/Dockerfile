# Use a base image com Ubuntu
FROM ubuntu:oracular-20250225@sha256:aadf9a3f5eda81295050d13dabe851b26a67597e424a908f25a63f589dfed48f

# Defina o modo não interativo para evitar prompts durante a instalação
ENV DEBIAN_FRONTEND=noninteractive

# Instale as ferramentas do SQL Server e bash
RUN apt-get update && apt-get install -y \
    curl \
    apt-transport-https \
    gnupg \
    bash && \
    curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list > /etc/apt/sources.list.d/mssql-release.list && \
    apt-get update && ACCEPT_EULA=Y apt-get install -y mssql-tools unixodbc-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Adicione o sqlcmd ao PATH
ENV PATH="$PATH:/opt/mssql-tools/bin"

# Defina o shell padrão como bash
ENTRYPOINT ["/bin/bash"]