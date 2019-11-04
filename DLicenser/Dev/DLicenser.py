# DLicenser.py
# V 0.1
#
# AUTHOR: Eduardo Zucarato, 2019 Nov 01
#
# PURPOSE:
# Main scrpit run in Dream License Service
# Receives a datagram as trade request 
# Checks if datagram is valid
# Checks if client is able to trade
# Responds a datagram with authorization 
# to trade
#
# VERSION PARTICULARITY:
# Simplified version which considers clients.list text file
# as source database
# Record fields are separatede by ';'
# List of fields:
#	client_id;
#	client name;
#	active/inactive status;

