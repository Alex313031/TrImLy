# TrImLy
Your fstrim automator and defrag script for ChomiumOS! *yay*

# Function
This is intended to be used as a manually-run replacement for https://chromium.googlesource.com/chromiumos/platform2/+/refs/heads/master/trim/scripts/chromeos-trim/

-ALSO featuring defrag (e4defrag) for people running Chromium OS or derivatives on Hard Drives. Chromebooks almost universally (except for some very old models) use SSDs, but CrOS source code only contains code to trim a solid state storage device after one or all of three conditions are met, but sometimes it does not do its job well, and of course has no optimization features for HDDs. This shell script presents the option to defrag your drive, and an option to trim your drive. You can do either/or or both, depending on your needs and whether you've got an SSD or traditional HDD.

This project is FOSS, and is intended to be used with CloudReady https://www.neverware.com/ and Chromium OS https://www.chromium.org/chromium-os/, builds of which can be downloaded here > https://arnoldthebat.co.uk/wordpress/chromiumos-special-builds/

# Usage
-Simply copy trimly.sh to /usr/local/bin, run 'sudo chmod +x trimly.sh' to make it executable, and then run sudo trimly.sh.-
## IMPORTANT UPDATE
ChromiumOS and ChromeOS use 12 partitions, whereas cloudready up until ver. 89.4.44 used 27. After Neverware's merge with Google, they are making their release timing to be more in tune with Google's, as well as changing the partition layout to the "standard GPT CrOS layout." Firstly, I was not thinking of this during initial development, as the motivation for this came from conversations on the CloudReady forums, and personal use of this script was always on CloudReady. Secondly, the partition numbers in the script would have never worked on ChromiumOS or ChromeOS, and now as of June 18, with the release of 90.1.42, won't work on CloudReady either. To fix all of this, I am making a copy of the current script under the new folder "cros_pre_90", specifically for users who can't (i.e. 32 bit users), or don't want to upgrade. Everyone else (the majority), just use the regular TrImLy script. 

Amazing what can be done with bash, huh?
