# Welcome to Dream Company Net Services default directory!
## /DCNS

### Objectives

The objective of this folder is to bear the network services scripts, source codes, binaries, libraries and related data, to be called by inetd or proprietary daemon of the DCNS individual services

### Directory structure and file rules
1. Each service must have it's own directory
	1. Directory name must be the shortened form of service name
	2. Directory name _must not_ identify the service _version_
2. Each service must be called within an XX1 access mode file, to be called by the DCNSDaemon in the main service directory
	1. The file must be an executable script or binary
	2. The name must _coincide_ the folder name with the _.DCNS_ file extension 
3. Each service directory must have a subdirectory called _"DEV"_, to serve as development environment, containing all source code files and respective dependancies
	1. Dependencies to be shared between DCNS services can be stores in DNCS borne directories
		1. /DCNS/lib	  # Inter-services common libraries, as binaries or as scripts     
		2. /DCNS/var	  # Inter-service data which must subsist in-between server sessions
		3. /DCNS/tmp	  # Inter-service data which can be flushed away on once a regular basis and on each new server session

