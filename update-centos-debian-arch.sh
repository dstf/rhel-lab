#!/bin/bash
##this script updates my system

cd /etc

## Test if the local host is CentOS

if [ -d /etc/yum ]
then
	## Run the CentOS version of the update command
	sudo yum -y update
fi

## Test if the local host is Debian-based
if [ -d /etc/apt ]
then
	##Run the Debian version of the update command
	sudo apt-get update && sudo apt-get dist-upgrade -y
fi

## Test if the local host is Arch-based
if [ -d /etc/pacman.d ]
then
	##Run the Arch version of the update command
	sudo pacman -Syu
fi
