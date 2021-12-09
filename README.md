# Private Ethereum testnet

Create private Ethereum testnet using docker

## Installation

Edit .env file



Create private testnet (bootnode, miner)

```bash
sh chain.sh
```

## Usage

Create fullnode with rpc support

```bash
sh fullnode.sh
```

or
```bash
docker-compose up -d
```

References:

https://medium.com/scb-digital/running-a-private-ethereum-blockchain-using-docker-589c8e6a4fe8

https://geth.ethereum.org/docs/interface/command-line-options

https://github.com/ethereum/go-ethereum/blob/master/Dockerfile

