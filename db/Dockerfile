FROM alpine:3.5

ENV LANG en_US.utf8
ENV PGDATA=/var/lib/postgresql/data


RUN apk add --no-cache postgresql

COPY . /var/lib/gordon

USER postgres
VOLUME /var/lib/postgresql

EXPOSE 5432
CMD ["postgres", "-h", "*"]
