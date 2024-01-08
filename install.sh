#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

## Create primary data hostpaths
mkdir -p /data/pufferpanel/servers
mkdir -p /data/pufferpanel/binaries
mkdir -p /data/pufferpanel/logs
mkdir -p /data/pufferpanel/config
mkdir -p /data/pufferpanel/modules


ln -s /data/pufferpanel/servers /var/lib/servers
ln -s /data/pufferpanel/binaries /var/lib/binaries


