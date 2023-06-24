FROM postgres:15.3


ENV POSTGRES_DB mydatabase
ENV POSTGRES_USER myuser
ENV POSTGRES_PASSWORD mypassword

EXPOSE 5432

COPY ./init/init.sql /docker-entrypoint-initdb.d/
