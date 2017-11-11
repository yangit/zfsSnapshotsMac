#Config
FILESYSTEMS=("z30/y")

# Abort if no argument given
if [ $# -eq 0 ]
  then
    echo "No arguments supplied, aborting zfs snapshot"
    exit 1
fi
TYPE=$1


#Loop over FILESYSTEMS and take snapshots
for FILESYSTEM in "${FILESYSTEMS[@]}"
do
   :
   SNAPSHOT=$FILESYSTEM@$TYPE-$(date +%Y.%m.%d.%H.%M.%S)
   /usr/local/bin/zfs snapshot $SNAPSHOT
   echo "snapshot $SNAPSHOT taken"
done

