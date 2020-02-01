#!/bin/bash
# SMBScan - Al3x

RED='\033[0;31m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'

usage(){
	echo -e "${RED}Usage: $0 <TARGET-IP>"
    echo -e "${RED}Requires:"
    echo -e "${GREEN}nbtscan"
    echo -e "${GREEN}nmblookup"
    echo -e "${GREEN}enum4linux"
    echo -e "${GREEN}smbmap"
    echo -e "${GREEN}smbclient"
    echo -e "${GREEN}rpcclient"
    echo -e "${GREEN}nmap"
	exit 1
}

IP = $1

mkdir $IP/Scans/SMB
cd $IP/Scans/SMB

errCheck(){
    if $? != 0
        echo -e "${RED}Error occurred, moving on..."
    else echo -e "${GREEN}Saved to $filename"
    fi
}

echo -e "${RED}Running nbtscan..."
filename = nbtscan.txt
nbtscan -r $IP/24 >> $filename
errCheck

echo -e "${RED}Running nmblookup..."
filename = nmblookup.txt
nmblookup -A $IP >> $filename
errCheck

echo -e "${RED}Running enum4linux..."
filename = nmblookup.txt
enum4linux -a $IP >> $filename
enum4linux -o $IP >> $filename
errCheck

echo -e "${RED}Running smbmap..."
filename = smbmap.txt
smbmap -H $IP >> $filename
errCheck

echo -e "${RED}Running smbclient..."
filename = smbclient.txt
smbclient -L $IP >> $filename
errCheck

echo -e "${RED}Running rpcclient enumdomusers..."
filename = rpcclient.txt
bash -c "echo 'enumdomusers' | rpcclient -U '' -N $IP" >> $filename
errCheck

echo -e "${RED}Running nmap..."
filename = nmap.txt
nmap --script smb-enum-shares -p 139,445 $IP >> $filename
errCheck

echo -e "${RED}Checking for Vulnerabilities..."
filename = vulns.txt
nmap --script smb-vuln* -p 139,445 $IP >> $filename
echo "*******************************\n" >> $filename
errCheck

echo -e "${GREEN}*** ALL SCANS COMPLETE ***"