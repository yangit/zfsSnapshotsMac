#Config
FILESYSTEMS=("z30/y")

# TYPES and KEEP_COUNTS have to match one another
# TYPES have to match com.zerowidth.launched.*.plist contents
# KEEP_COUNT is how many most recent snapshots of this type to keep
TYPES=("15min" "hourly" "daily" "weekly" "monthly")
KEEP_COUNTS=("8" "48" "14" "8" "24")


# Check if config is valid
TYPES_LENGTH=${#TYPES[@]}
KEEP_COUNTS_LENGTH=${#KEEP_COUNTS[@]}

if [ $TYPES_LENGTH -ne $KEEP_COUNTS_LENGTH ]
  then
    echo "TYPES and KEEP_COUNTS length do not match"
    exit 1
fi

#Loop over FILESYSTEMS and TYPES
for FILESYSTEM in "${FILESYSTEMS[@]}"
do
   :
   for ((i=0; i<$TYPES_LENGTH; i++))
   do
     TYPE=${TYPES[i]}
     KEEP_COUNT=${KEEP_COUNTS[i]}
     /usr/local/bin/zfs list -t snapshot -o name | grep $FILESYSTEM@$TYPE | tail -r | sed -e '1,'$KEEP_COUNT'd' | xargs -n 1 /usr/local/bin/zfs destroy
   done
done
