Copy files to desination



launchctl load -w ~/Library/LaunchAgents/com.zerowidth.launched.zfs15min.plist
launchctl load -w ~/Library/LaunchAgents/com.zerowidth.launched.zfshourly.plist
launchctl load -w ~/Library/LaunchAgents/com.zerowidth.launched.zfsdaily.plist
launchctl load -w ~/Library/LaunchAgents/com.zerowidth.launched.zfsweekly.plist
launchctl load -w ~/Library/LaunchAgents/com.zerowidth.launched.zfsmontly.plist
launchctl load -w ~/Library/LaunchAgents/com.zerowidth.launched.removeSnapshots.plist

launchctl list | grep zero
launchctl load -w ~/Library/LaunchAgents/com.zerowidth.launched.zfs15min.plist
sudo launchctl stop gui/$UID/com.zerowidth.launched.zfs15min.plist
sudo launchctl start gui/$UID/com.zerowidth.launched.zfs15min.plist

// http://launched.zerowidth.com/
// mac app Console to see system logs
// stdin/out are in /Users/Shared
