#!/bin/bash
# InfoScan - Al3x

RED='\033[0;31m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'

usage(){
	echo -e "${RED}Usage: $0 <TARGET-IP>"
    echo -e "${RED}Requires:"
    echo -e "{GREEN}https://github.com/21y4d/nmapAutomator"
	exit 1
}

IP = $1

mkdir $IP
mkdir $IP/Exploits $IP/Findings $IP/Scans

cd Scans
nmapAutomator $IP All