#!/bin/bash
### This is a silly script to create a members line for a service group definition ###
### just cd to the directory where the services are defined. 
### Double check this in your configuration. It works in the GASP2 where we have each service in one dir, and one host per file, which contains the service definitions
### Anyway, this only spits the result to the standard output, it's harmless

for host in *; do grep service_description $host |grep -v '#' |sed s/service_description/"$host,"/g |tr -s "\n" "," |sed s/.cfg//g; done
