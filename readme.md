### Automated zfs snapshot creation and removal for mac

## Installation

* Copy files to destinations as per folder name
* Set config in /Users/Shared/removeSnapshots.sh
* Open permissions by `sudo chmod +s /usr/local/bin/zfs`

Run:

    launchctl load -w ~/Library/LaunchAgents/com.zerowidth.launched.zfs15min.plist
    launchctl load -w ~/Library/LaunchAgents/com.zerowidth.launched.zfshourly.plist
    launchctl load -w ~/Library/LaunchAgents/com.zerowidth.launched.zfsdaily.plist
    launchctl load -w ~/Library/LaunchAgents/com.zerowidth.launched.zfsweekly.plist
    launchctl load -w ~/Library/LaunchAgents/com.zerowidth.launched.zfsmontly.plist
    launchctl load -w ~/Library/LaunchAgents/com.zerowidth.launched.removeSnapshots.plist

Helpfull stuff:

    launchctl list | grep zero
    launchctl load -w ~/Library/LaunchAgents/com.zerowidth.launched.zfs15min.plist
    sudo launchctl stop gui/$UID/com.zerowidth.launched.zfs15min.plist
    sudo launchctl start gui/$UID/com.zerowidth.launched.zfs15min.plist

* http://launched.zerowidth.com/
* use mac app Console to see system logs
* stdin/out from tasks are in `/Users/Shared` maybe usefull for debug
* do not run from `sudo su` run with `sudo ${command}` every time.

