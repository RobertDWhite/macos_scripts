#/bin/bash

# run as root

## download the .sfl2 file from your storage location ##
# for Google Drive, replace the ID at the end of the URL
# For another storage location, replace the full URL
curl -L -o /tmp/com.apple.LSSharedFileList.FavoriteServers.sfl2  "https://drive.google.com/uc?export=download&id=PUT_FILE_ID_HERE"

# move sfl2 to correct directory
for i in $(ls /Users | grep -v "^_"); do mkdir -p /Users/$i/Library/Application\ Support/com.apple.sharedfilelist/ && cp -f /tmp/com.apple.LSSharedFileList.FavoriteServers.sfl2 /Users/$i/Library/Application\ Support/com.apple.sharedfilelist/ && chmod 775 /Users/$i/Library/Application\ Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.FavoriteServers.sfl2;done

# reboot for changes to take effect
reboot

