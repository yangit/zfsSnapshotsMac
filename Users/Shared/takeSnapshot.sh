
if [ $# -eq 0 ]
  then
    echo "No arguments supplied, aborting zfs snapshot"
    exit 1
fi
TYPE=$1
FILESYSTEM=z30/y
SNAPSHOT=$FILESYSTEM@$TYPE-$(date +%Y.%m.%d.%H.%M.%S)
/usr/local/bin/zfs snapshot $SNAPSHOT
echo "snapshot $SNAPSHOT taken"
