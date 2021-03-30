#!/bin/bash

#---------- About ----------
# Setup a Raspberry Pi with SSH and WPA
#
#---------- Variables ----------
# $1        disk where the image will be written
# $2        image to be written
# $3        wpa_supplicant.conf file to copy into the pi
#
#---------- References ----------
# Helpful: https://zedt.eu/tech/linux/how-to-pre-configure-raspberry-pi-for-remote-ssh-and-wifi/




# What disk will the image be written to?
DISK=$1
IMAGE=$2
WPA_conf=$3

echo "Disk being written:               $1"
echo "Image being written:              $2"
echo "WPA Supplicant being written:     $3"






# Explicit confirmation
echo "If this is correct enter '1' otherwise press any key"
read CONTINUE

if [ $CONTINUE = 1 ]
then
    echo "Proceeding to write"
else
    echo "Exiting"
    exit
fi





# unmount the disk before writing.
# NOTE: the following is for OSx
diskutil unmountDisk /dev/$DISK
echo "Unmounted /dev/$DISK"

# Write the image to
sudo dd if=$IMAGE of=/dev/r$DISK conv=sync bs=4m
echo "dd'd $IMAGE to /dev/r$DISK"


# Copy the wpa_supplicant.conf you created above
sudo cp $WPA_conf /Volumes/boot/wpa_supplicant.conf
echo "Copied $WPA_conf to the pi"

# Enable incoming SSH connections by creating an empty ssh file.
sudo touch /Volumes/boot/ssh
echo "Enabled SSH"

# Eject the SD card properly
sudo diskutil eject /dev/r$DISK
echo "Ejected /dev/r$DISK"
