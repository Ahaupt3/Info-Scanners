# Info-Scanners (work in progress)
Info-Gathering Pen-Test Scanners 
  
# Summary
Various scanning scripts built for pen-testing information gathering.

Creates basic directory structure for storing notes during an engagement. Best suited for use in an IDE to quickly review information & updating notes.

# Requires

## InfoScan
* nmapAutomator (included in dependencies)

## DNSScan

## EmailScan
* theharvester

## FTPScan

## HTTPScan
* gobuster

## LinScan

## RPCScan
* rpcclient

## SMBScan
* enum4linux
* nbtscan
* nmap
* nmblookup
* smbclient
* smbmap

## SQLScan

## WinScan

# Setup/Workflow
1) Clone Repo
2) Run 'sudo ./Setup' setup scripts & dependencies.
3) Run 'InfoScan' script.
4) Run additional enumeration scripts dependent on findings. (full-automation planned)

# Script Usage
### InfoScan
InfoScan \<IP\>

### DNSScan
DNSScan \<IP\>

### EmailScan
EmailScan \<domain\>

### FTPScan
FTPScan \<IP\>

### HTTPScan
HTTPScan \<IP\>

### LinScan
LinScan \<IP\>

### RPCScan
RPCScan \<IP\>

### SMBScan
SMBScan \<IP\>

### SQLScan
SQLScan \<IP\>

### WinScan
WinScan \<IP\>

# To-Do
* create global var file for script ref (edit in one place vs multiple)

# Credits
https://github.com/21y4d/nmapAutomator (modified version used)
