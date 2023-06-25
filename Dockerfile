FROM postgres:15.3

# 作成用の環境変数
ENV POSTGRES_DB mydatabase
ENV POSTGRES_USER myuser
ENV POSTGRES_PASSWORD mypassword

# クライアントで接続するための環境変数
ENV PGDATABASE mydatabase
ENV PGUSER myuser
ENV PGPASSWORD mypassword


EXPOSE 5432

COPY ./init/init.sh /docker-entrypoint-initdb.d/init.sh

#COPY ./init/init.sql /docker-entrypoint-initdb.d/
COPY ./init/ /tmp/init_data/

#CMD psql -U myuser -d mydatabase -f /tmp/init_data/ddl.sql \
#    && psql -f /tmp/init_data/initial_data_insert.sql

