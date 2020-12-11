#!/bin/bash

#####################################
#                                   #
#        Nautilus SCP Helper        #
#              nscp.sh  	    #
#                                   #
# Maintianed by; hkdb <hkdb@3df.io> #
#                                   #
#####################################

VERSION="v0.02"

if [ ! -f /usr/bin/zenity ]; then
	echo -e "Zenity is not installed... You must first install it for this script to work. To install, execute the following command in termianl:\n\nsudo apt install zenity\n"
fi

POSITIONAL=()

if [ "$#" != 6 ] && [ "$1" != "-h" ]; then
    echo -e '\nSomething is missing... Type "./nscp.sh -h" without the quotes to find out more...\n'
    exit 0
fi

while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -f|--file)
    FILEPATH="$2"
    shift # past argument
    shift # past value
    ;;
    -d|--dest)
    HOST="$2"
    shift # past argument
    shift # past value
    ;;
    -l|--location)
    LOCATION="$2"
    shift # past argument
    shift # past value
    ;;
    -h|--help)
    echo -e "\nnscp.sh $VERSION\n\nOPTIONS:\n\n-f, --file: file to send\n-d, --dest: destination host\n-l, --location: destination path\n\n-h, --help: Help\n\nEXAMPLE:\n\n./nscp.sh -f test.txt -d server.test.com -l ~/\n"
    exit 0
    ;;
esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters

SCP='/usr/bin/scp'

#check whether copying file or directory
if [ -d "$FILEPATH" ]; then
	SCP="$SCP -r "
fi

$SCP $FILEPATH $HOST:$LOCATION
if [ $? -eq 0 ]; then
	zenity --info --text="Successfully SCPed $FILEPATH to $HOST:$LOCATION!"
else
	zenity --error --text="Failed to SCP $FILEPATH to $HOST:$LOCATION!"
	exit
fi


