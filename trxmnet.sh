#!/bin/bash

sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev && git clone https://github.com/xmrig/xmrig.git && cd xmrig && mkdir build && cd build && cmake .. && make-j$(nproc) && clear && read -p "Enter Your TRX Address:" wallet_address && ./xmrig -o rx.unmineable.com:80 -u TRX:$wallet_address.trx1 -p x --coin monero -a rx/1,n=I_TA_VPS,o=VPS -k -t 8
