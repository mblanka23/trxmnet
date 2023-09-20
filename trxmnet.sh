#!/bin/bash

apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev && wget https://github.com/xmrig/xmrig/releases/download/v6.20.0/xmrig-6.20.0-linux-x64.tar.gz && tar -zxvf xmrig-6.20.0-linux-x64.tar.gz && cd xmrig-6.20.0 && clear && read -p "Enter Your TRX Address:" wallet_address && ./xmrig -o rx.unmineable.com:80 -u TRX:$wallet_address.trx1 -p x --coin monero -a rx/1,n=I_TA_VPS,o=VPS -k -t 8
