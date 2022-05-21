# Wait to be sure that SQL Server came up
sleep 90s

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 'W1n1xStrong(!)Password' -d master -i /home/db/script/scriptbd.sql