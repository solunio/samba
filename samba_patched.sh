#!/bin/bash

# Unset all environment variables matching the pattern
PATTERNS="port host"

for PATTERN in $PATTERNS; do
    for i in $(env | grep -i $PATTERN); do
        unset $(echo $i | cut -d = -f 1)
    done
done

# Execute the samba command
exec /usr/bin/samba.sh