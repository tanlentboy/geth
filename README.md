![License](https://img.shields.io/badge/License-MIT-blue.svg)

# geth

Run a Go Ethereum node via Docker.

## Setup

**Requirements**

- Docker

**Configuration**

For use with Docker compose:

```
  ethereum:
    build: ethereum
    container_name: ethereum
    command: geth --fast --cache=256 --rpc --rpcaddr '0.0.0.0'
      --rpccorsdomain '<host>'
      --ipcpath /tmp/geth.ipc
    restart: always
    privileged: true
    volumes:
      - ./ethereum/.ethereum/:/root/.ethereum:rw
    ports:
      - 8545:8545
      - 30303:30303
```
