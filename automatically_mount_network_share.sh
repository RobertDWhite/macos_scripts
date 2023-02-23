#!/bin/bash

# Set the network share's name, address, and mount point
SHARE_NAME="Synology"
SHARE_ADDRESS="//10.200.1.100/ShareName"
SHARE_MOUNT_POINT="/Volumes/Synology"

# Check if the network share is already mounted
if [[ $(mount | grep "${SHARE_ADDRESS}") ]]; then
  echo "Network share is already mounted."
else
  # Create the mount point if it doesn't exist
  if [[ ! -d "${SHARE_MOUNT_POINT}" ]]; then
    mkdir "${SHARE_MOUNT_POINT}"
  fi
  
  # Mount the network share
  mount -t smbfs "${SHARE_ADDRESS}" "${SHARE_MOUNT_POINT}"
  
  # Check if the network share was mounted successfully
  if [[ $(mount | grep "${SHARE_ADDRESS}") ]]; then
    echo "Network share mounted successfully."
  else
    echo "Failed to mount network share."
  fi
fi