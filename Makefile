#!/usr/bin/make -f
##########################################
# Main Makefile
##########################################

.PHONY: all ssh_gen_key ssh_add_key_to_server connect list_vnc vnc screen kill_ssh_tunnel get_all_ssh_process mount unmount shutdown help clean

.DEFAULT_GOAL := help


#### SYSTEM CONFIGURATION. ####

include ./scripts/Make.conf


#### CONNECTION CONFIGURATION. ####

USER      = pi
TARGET    = 0.0.0.0
GEOMETRY  = 1920x1080
DISPLAY   = 1


#### SSH port local forwarding for SSH Tunneling. ####

HOST_PORT   = $$(( $(VNC_PORT_OFFSET)+ $(DISPLAY) ))
LISTEN_PORT = 5910


#### To Mount Volume through SSH. ####

VOL_MOUNT = /Path/to/volume/to/mount


#### COMMAND CONFIGURATION. ####
	
include ./scripts/Make.core

