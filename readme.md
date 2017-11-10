### Automatic zfs snapshot creation and removal for mac

## Features
* Works with High Sierra
* Configurable retention policy
* If computer was shutdown when snapshot was due to be taken, snapshot will be taken on restart. (only one of each type even if multiple events passed)

## Installation

* Copy files to destinations as per folder name
* Set config in /Users/Shared/removeSnapshots.sh
* Open permissions by `sudo chmod +s /usr/local/bin/zfs`
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

