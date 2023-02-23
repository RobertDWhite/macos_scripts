#/bin/bash

# run as root

## download the .sfl2 file from your storage location ##
# for Google Drive, replace the ID at the end of the URL
# For another storage location, replace the full URL
curl -L -o "com.apple.LSSharedFileList.FavoriteServers.sfl2"  "https://drive.google.com/uc?export=download&id=PUT_FILE_ID_HERE"

# copy the file you just downloaded to the proper location
cp com.apple.LSSharedFileList.FavoriteServers.sfl2 ~/Library/Application\ Support/com.apple.sharedfilelist/

# reboot for changes to take effect
reboot
