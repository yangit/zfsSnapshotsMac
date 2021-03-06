### Automatic zfs snapshot creation and removal for mac

## Features
* Works with High Sierra
* Configurable retention policy
* Handles many file systems separately
* If computer was shutdown when snapshot was due to be taken, snapshot will be taken on restart. (only one of each type even if multiple events passed)

## Installation

* Copy files to destinations as per folder nameh
* Set `FILESYSTEMS` variable in `removeSnapshots.sh` and `takeSnapshot.sh`
* Set `TYPES` and `KEEP_COUNTS` variables in `removeSnapshots.sh`. These 2 variables match one another.
* Open permissions by `sudo chmod +s /usr/local/bin/zfs`
* To re-install `launchctl unload  ~/Library/LaunchAgents/com.zerowidth.launched.*`
* Run `launchctl load -w ~/Library/LaunchAgents/com.zerowidth.launched.*`


Helpful stuff:

    launchctl list | grep zero
    launchctl load -w ~/Library/LaunchAgents/com.zerowidth.launched.zfs15min.plist
    sudo launchctl stop gui/$UID/com.zerowidth.launched.zfs15min.plist
    sudo launchctl start gui/$UID/com.zerowidth.launched.zfs15min.plist

* http://launched.zerowidth.com/
* use mac app Console to see system logs
* stdin/out from tasks are in `/Users/Shared` maybe usefull for debug
* do not run from `sudo su` run with `sudo ${command}` every time.

