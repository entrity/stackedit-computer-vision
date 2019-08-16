#!/bin/bash

DBNAME="$1" # Name of SQL database to dump
MAXBACKUPS="${2:-10}" # Number of .sql.tgz files to keep (all .sql files but one get deleted)
PREFIX=$3 # Blank by default. Allows for the special treatment of 'montly' or 'annual' dumps.

cd /home/backups-agent || fail 1
read DATE < <(date -Idate)

echo DBNAME $DBNAME

function fail ()
{
	>&2 echo "FAIL $*"
	# echo -e "$0 (mysql-backup.sh) FAIL\n$*\n$DATE" | mail
	exit $1
}

DUMP="${PREFIX}${DBNAME}-${DATE}.sql" || fail 2

# Create new backup
mysqldump --lock-tables=false --result-file="$DUMP" "$DBNAME" || fail 3
tar czf "$DUMP.tgz" --force-local "$DUMP" || fail 4

# Send backup to remote storage
scp "$DUMP.tgz" "storage:db-dumps/$DUMP.tgz" || fail 5
ssh storage "./cleanup-backups.sh \"${PREFIX}${DBNAME}\" \"$(( 2 * $MAXBACKUPS ))\"" || fail 6

# Delete old backups if N > M
M=$((MAXBACKUPS + 1))
ls "$DBNAME-"*".sql" | tail -n+2 | xargs rm
ls "$DBNAME-"*".sql.tgz" | tail -n+${M} | xargs rm
