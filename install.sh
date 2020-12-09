#!/bin/bash

echo -e "Checking dependencies...\n"

if [ ! -f /usr/bin/zenity ]; then
	echo -e "Zenity is not installed... installling..."
	sudo apt install zenity
fi

echo -e "Checking HomeDir for previous Nautilus SCP...\n"

if [ ! -f ~/.scp_hosts ]; then
	echo -e "Creating scp_hosts file...\n"
	cp scp_hosts ~/.scp_hosts
fi

if [ ! -f ~/.scp_locations ]; then
	echo -e "Creating scp_locations file...\n"
	cp scp_locations ~/.scp_locations
fi

echo -e "Installing Nautilus SCP...\n"
cp SCP\ To... ~/.local/share/nautilus/scripts/

if [ ! -d ~/.local/bin ]; then
	echo -e "No ~/.local/bin... creating..."
	mkdir -p ~/.local/bin
fi

cp nscp.sh ~/.local/bin
