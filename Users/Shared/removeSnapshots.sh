K15MIN=8
KHOURLY=48
KDAILY=14
KWEEKLY=8
KMONTLY=24

zfs list -t snapshot -o name | grep @15min | tail -r | sed -e '1,'$K15MIN'd' | xargs -n 1 zfs destroy
zfs list -t snapshot -o name | grep @hourly | tail -r | sed -e '1,'$KHOURLY'd' | xargs -n 1 zfs destroy
zfs list -t snapshot -o name | grep @daily | tail -r | sed -e '1,'$KDAILY'd' | xargs -n 1 zfs destroy
zfs list -t snapshot -o name | grep @weekly | tail -r | sed -e '1,'$KWEEKLY'd' | xargs -n 1 zfs destroy
zfs list -t snapshot -o name | grep @monthly | tail -r | sed -e '1,'$KMONTLY'd' | xargs -n 1 zfs destroy
