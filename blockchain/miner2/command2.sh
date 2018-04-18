#!/bin/bash

geth --identity "miner1" --networkid 42 --datadir "/home/chethan/Documents/Blockchain/miner2" --nodiscover --mine --rpc --rpcport "8043" --rpcapi "db,eth,net,web3,miner" --port "30304" --unlock 0 --password /home/chethan/Documents/Blockchain/miner2/password.sec
