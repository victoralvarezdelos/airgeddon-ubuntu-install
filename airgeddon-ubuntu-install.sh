#!/bin/bash

echo "Cloning repository"
git clone --depth 1 https://github.com/v1s1t0r1sh3r3/airgeddon.git
cd airgeddon

echo "Installing essential dependencies"


sudo apt-get install net-tools iw aircrack-ng iproute2 pciutils wireless-tools xterm tmux procps gawk
echo
echo "Would you also like to install the optional tools?"
echo "*Required for certain features."
read -p  "Press Y to install or N to end: " -n 2 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo apt-get install openssl crunch sslstrip
	exit 1
fi

if [[ $REPLY =~ ^[Nn]$ ]]
then 
	exit 1
fi
