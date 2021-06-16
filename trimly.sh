#!/bin/bash

# trimly.sh

printf "\n"

# constants
RED='\033[0;31m'
YEL='\033[1;33m'
NC='\033[0m' # No Color

printf "${RED}==TrImLy - Your fstrim automator and defrag script for ChomiumOS==${NC}\n"
printf "\n"
printf "Note: This script must be made placed in /usr/local/bin,\n made executable with 'sudo chmod +x trimly.sh',\n and run with sudo (root) priveleges.\n"
printf "\n"
# conditional defrag (will not work entirely on bind mounts used on /)

printf "You may optionally run e4defrag -v on the stateful_partition and root (/), note this will take some time, and\n is not needed very often on SSDs, but one should use this if installed to an HDD, as ChromiumOS has no auto-defrag. \nPlease answer 1 or 2.▼\n"
printf "\n"
	select yn in "Yes" "No"; do
    case $yn in
    	Yes ) e4defrag -v /dev/sda16; echo "Continuing..."; break;;
        No ) echo "Continuing..."; break;;
    esac
done

printf "\n"
printf "${YEL}==TRIMming of SSD...==${NC}\n"
printf "\n"

# run fstrim on all relevant partitions and mount points.

fstrim -v /mnt/stateful_partition/encrypted
fstrim -v /usr/share/oem
fstrim -v /mnt/stateful_partition
fstrim -v /
# mount rootfs to temp dir and fstrim them
mkdir /tmp_mnt
mount /dev/sda18 /tmp_mnt
fstrim -v /dev/sda18
umount /tmp_mnt
mount /dev/sda20 /tmp_mnt
fstrim -v /tmp_mnt
umount /dev/sda20
# exit 
printf "\n"
printf "Done.\n"
printf "\n"
printf "${YEL}TrImLy has optimized your storage device(s) for faster I/O operations!${NC} *yay*\n"
printf "\n"
exit


