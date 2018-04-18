#!/bin/bash

geth --identity "miner1" --networkid 42 --datadir "/home/chethan/Documents/Blockchain/miner1" --nodiscover --mine --rpc --rpcport "8042" --rpcapi "db,eth,net,web3,miner" --port "30303" --unlock 0 --password /home/chethan/Documents/Blockchain/miner1/password.sec --ipcpath "/home/chethan/.ethereum/geth.ipc"
