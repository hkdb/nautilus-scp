# Nautilus SCP Helper
maintained by @hkdb

![screenshot.png](readme/screenshot.png)

## SUMMARY

A Nautilus script designed for and tested on Gnome 3.36 to enable right click action to directly scp a file or directory to a remote host via a little GUI interaction.

## WHY

I am normally doing most of this in a terminal but once in a while, someone will send me something to upload to a server and I will somehow decide to look for the file with Files (nautilus) at which point, I would have to open a terminal at that location to type a scp command. With this nautilus script, I am able to instead just right click on any file or directory, select the script which initiates dialogs to select a remote host and location (path) for me to accomplish the same thing.

## CHANGE LOG

- 12102020 - Fixed permissions of scripts and bumped to v0.02
- 12102020 - Fixed potential permissions issues in install.sh & added open scripts folder after install
- 12092020 - Added auto add custom input to .scp_hosts and .scp_locations
- 12092020 - initial commit

## DEPENDENCIES

- Gnome
- Nautilus
- SCP
- Zenity

## LIMITATIONS

Currently, this script does not account for custom ssh ports.

## INSTALLATION

1. `git clone https://github.com/hkdb/nautilus-scp.git`
2. `cd nautilus-scp`
3. `./install.sh`

If the "Scripts" menu item does not appear when you left click files, you may need to manually right click "SCP To..." in ~/.local/share/nautilus/scripts within Nautilus and add executable permissions. Some times the terminal perms are not good enough.

## CONFIGURATIONS

- ~/.scp_hosts | list of often used hosts (FQDN) separated by newlines | WARNING: DO NOT DELETE THE LINE "Specify a Custom Host..."
- ~/.scp_locations | list of often used destination paths separated by newlines | WARNING: DO NOT DELETE THE LINE "Specify a Custom Location..."

## USAGE

[![Demo Video](readme/nautilus-scp.gif)](https://youtu.be/nXQ54ffyrTI)
Click on the animated GIF above to see it in high-res with YouTube.

![flow.png](readme/flow.png)

## DISCLAIMER

This repo is sponsored by 3DF OSI and is maintained by volunteers. 3DF Limited, 3DF OSI, and its volunteers including the author in no way make any guarantees. Please use at your own risk!

To Learn more, please visit:

https://osi.3df.io

https://3df.io                              
