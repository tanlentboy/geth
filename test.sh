#!/bin/bash

curl -X POST --data \
     '{"jsonrpc":"2.0","method":"web3_clientVersion","params":[],"id":1}' \
     http://192.168.99.100:8545
