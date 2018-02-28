#!/usr/bin/env bash


#########################################################################################
# Purpose: This script will initialize and get your private blockchain up and running
#
# Script execution: sh tom.sh <data_dir> <network_id> <port_number>
#
# Example: sh tom.sh testdir 1234 30300
#########################################################################################

if [ "$#" -ne 3 ]; then
  echo "ERROR: Please provide the correct number of arguments!"
  echo "Usage: sh tom.sh <data_dir> <network_id> <port_number>"
  echo "Example: sh tom.sh testdir 1234 30300"
  exit 1
fi

# Node's database directory
data_dir=$1

# Private network id
network_id=$2

# Port number
port_number=$3

echo ${data_dir}
echo ${network_id}
echo ${port_number}


# Initialize the geth client
geth init JerryGenesis.json --datadir ${data_dir}

# Create a private network that will share the blockchain
geth --datadir ${data_dir} --networkid ${network_id} --port ${port_number}