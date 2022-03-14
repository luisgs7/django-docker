FROM postgres:13.1-alpine
LABEL maintainer "luisgs7 github.com/luisgs7"

ENV POSTGRES_USER=db_ser
ENV POSTGRES_PASSWORD=1234
ENV POSTGRES_DB=app_dj

EXPOSE 5432