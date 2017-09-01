![License](https://img.shields.io/badge/License-MIT-blue.svg)

# geth

Run a Go Ethereum node via Docker.

## Setup

**Requirements**

- Docker

**Configuration**

For use with Docker,

```
docker run -p 8545:8545 -p 30303:30303 \
    -v /home/<user>/.ethereum/:/root/.ethereum:rw \
    --restart=always --name=geth \
    -d datitect/geth:latest \
    geth --fast --cache=256 --rpc --rpcaddr '0.0.0.0' \
    --rpccorsdomain '<host>' \
    --ipcpath /tmp/geth.ipc
```

and Docker Compose:

```
  geth:
    image: datitect/geth
    container_name: geth
    command: geth --fast --cache=256 --rpc --rpcaddr '0.0.0.0'
      --rpccorsdomain '<host>'
      --ipcpath /tmp/geth.ipc
    restart: always
    volumes:
      - /home/<user>/.ethereum/:/root/.ethereum:rw
    ports:
      - 8545:8545
      - 30303:30303
```
