#!/bin/bash

# Inicia o serviço SQL Server
/opt/mssql/bin/sqlservr &

# Aguarda o SQL Server ficar pronto para conexões
echo "Aguardando o SQL Server ficar pronto para conexões..."
sleep 30s

# Cria o banco de dados diretamente usando o comando sqlcmd
echo "Criando o banco de dados 'totvs'..."
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Totvs@12 -Q "CREATE DATABASE totvs"

# Mantém o container em execução
tail -f /dev/null
