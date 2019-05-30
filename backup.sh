
WIP

#!/bin/ruby

# ask sudo for the whole script session
echo '\n👨‍🚀 For actions requiring sudo right, please provide sudo password now :'
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#sauvgarde du trousseau
mkdir /keybase/private/pierreem/backup
security dump-keychain > /keybase/private/pierreem/backup/trousseau.mac
security find-generic-password -ga "YOUR-ROUTER" |grep "password:"
defaults read /Library/Preferences/SystemConfiguration/com.apple.airport.preferences |grep SSIDString
