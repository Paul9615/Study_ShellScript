# !/bin/bash

ROOT_UID=0

if [ "$UID" -eq "$ROOT_UID" ]; then
echo "ROOT"
else
echo "NOT ROOT"
echo "Current your in $UID"
fi
exit 0
