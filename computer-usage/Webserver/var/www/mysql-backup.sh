#!/bin/bash

DBNAME="$1" # Name of SQL database to dump
MAXBACKUPS="${2:-10}" # Number of .sql.tgz files to keep (all .sql files but one ge
t deleted)

read DATE < <(date -Ins)

echo DBNAME $DBNAME

function fail ()
{
        >&2 echo "FAIL $*"
        exit $1
}

cd /var/backups-www || fail 1
DUMP="${DBNAME}-${DATE}.sql" || fail 2

# Create new backup
mysqldump --lock-tables=false --result-file="$DUMP" "$DBNAME" || fail 3
tar czf "$DUMP.tgz" --force-local "$DUMP" || fail 4

# Delete old backups if N > M
M=$((MAXBACKUPS + 1))
ls "$DBNAME-"*".sql" | tail -n+2 | xargs rm
ls "$DBNAME-"*".sql.tgz" | tail -n+${M} | xargs rm
