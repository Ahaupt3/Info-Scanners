# Info-Scanners
Info-Gathering Pen-Test Scanners 
  
# Summary
Various scanning scripts built for pen-testing information gathering.

Creates basic directory structure for storing notes during an engagement. Best suited for use in an IDE to quickly review information & updating notes.

# Requires

## InfoScan
* nmapAutomator (included in dependencies)

## SMBScan
* enum4linux
* nbtscan
* nmap
* nmblookup
* rpcclient
* smbclient
* smbmap

# Setup/Workflow
1) Clone Repo
2) Run 'sudo ./Setup' setup scripts & dependencies.
3) Run 'InfoScan' script.
4) Run additional enumeration scripts dependent on findings. (full-automation planned)

# Script Usage
## InfoScan
InfoScan \<IP\>

## SMBScan
SMBScan \<IP\>

# Credits
https://github.com/21y4d/nmapAutomator (modified version used)
