# TrImLy
fstrim automator and defrag script for ChomiumOS 

# Function
This is intended as a manually-run replacement for https://chromium.googlesource.com/chromiumos/platform2/+/refs/heads/master/trim/scripts/chromeos-trim/

-ALSO featuring defrag (e4defrag) for people running Chromium OS or derivatives on Hard Drives. ChromeBooks almost universally (except for some very old models) use SSDs, and it only contains code to trim a solid state storage device after one or all of three conditions are met, but sometimes it does not do its job well, and of course has no optimization features for HDDs. This shell script presents the option to defrag your drive, and will trim your SSD (it will also "TRIM" an HDD, but this won't do anything besides zero out deleted files.

This project is FOSS, and is intended to be used with CloudReady https://www.neverware.com/ and Chromium OS https://www.chromium.org/chromium-os/, builds of which can be downloaded here > https://arnoldthebat.co.uk/wordpress/chromiumos-special-builds/

# Usage
-Simply copy trimly.sh to /usr/local/bin, run 'sudo chmod +x trimly.sh' to make it executable, and then run sudo trimly.sh.-
