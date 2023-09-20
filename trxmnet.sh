#!/bin/bash

# Ensure the necessary dependencies are installed
sudo apt update
sudo apt install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev

# Download and extract XMRig
wget https://github.com/xmrig/xmrig/releases/download/v6.20.0/xmrig-6.20.0-linux-x64.tar.gz
tar -zxvf xmrig-6.20.0-linux-x64.tar.gz
cd xmrig-6.20.0

# Prompt the user to enter their Monero wallet address
read -p "Enter Your Monero Wallet Address: " wallet_address
read -p "Enter Your Rig Name:" rig_name

# Run XMRig with user-provided wallet address
./xmrig -o rx.unmineable.com:80 -u $wallet_address.$rig_name -p x --coin monero -a rx/1,n=I_TA_VPS,o=VPS -k -t $(nproc)
