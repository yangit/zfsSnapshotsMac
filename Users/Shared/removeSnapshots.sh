#Config
FILESYSTEMS=("z30/y")
TYPES=("15min" "hourly" "daily" "weekly" "monthly")
DURATIONS=("8" "48" "14" "8" "24")


# Check if config is valid
TYPES_COUNT=${#TYPES[@]}
DURATIONS_COUNT=${#DURATIONS[@]}

if [ $TYPES_COUNT -ne $DURATIONS_COUNT ]
  then
    echo "TYPES and DURATIONS length do not match"
    exit 1
fi

#Loop over FILESYSTEMS and TYPES
for FILESYSTEM in "${FILESYSTEMS[@]}"
do
   :
   for ((i=0; i<$TYPES_COUNT; i++))
   do
     TYPE=${TYPES[i]}
     DURATION=${DURATIONS[i]}
     /usr/local/bin/zfs list -t snapshot -o name | grep $FILESYSTEM@$TYPE | tail -r | sed -e '1,'$DURATION'd' | xargs -n 1 zfs destroy
   done
done
