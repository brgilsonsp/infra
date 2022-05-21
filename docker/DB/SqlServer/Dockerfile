FROM mcr.microsoft.com/mssql/server:2019-CU15-ubuntu-20.04

USER root

RUN mkdir -p /home/db
RUN mkdir -p /home/db/script

COPY . /home/db

RUN chmod +x /home/db/run-initialization.sh
RUN chmod +x /home/db/entrypoint.sh


ENV SA_PASSWORD W1n1xStrong(!)Password
ENV ACCEPT_EULA Y
ENV MSSQL_PID Express

EXPOSE 1433

CMD /bin/bash /home/db/entrypoint.sh