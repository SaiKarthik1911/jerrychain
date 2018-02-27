#!/usr/bin/env bash


# Node identity
identity = $1

# Node's database
data-dir = $2

# Private network id
network_id = $3

# Create a brew tap
brew tap ethereum/ethereum

# Install the geth client for the Ethereum platform
brew install ethereum


# Initialize the geth client
geth -identity ${identity}  -init JerryGenesis.json -datadir ${data-dir}

# Create a private network that will share the blockchain
geth --datadir ${data-dir} --networkid ${network_id}


