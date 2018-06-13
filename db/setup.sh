#!/bin/sh

db="gordon"
user="gordon"
password="some_password"

pg_ctl initdb || exit 0

pg_ctl start -w
psql -d template1 -v ON_ERROR_STOP=1 <<- EOSQL
	CREATE USER ${user} PASSWORD '${password}';
	CREATE DATABASE ${db};
	GRANT ALL PRIVILEGES ON DATABASE ${db} TO ${user};
EOSQL
psql -d "${db}" -U ${user} -f "/var/lib/gordon/schema.sql"
pg_ctl stop -w

cat > "${PGDATA}/pg_hba.conf" <<- EOF
	local   all             all                                     trust
	host    all             all             ::1/128                 trust
	host    all             all             0.0.0.0/0               md5
EOF
