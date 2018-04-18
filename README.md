# Viriya
### Smart solution to energy sharing
#### Chethan KP, Manjunath Jakaraddi, Rahul M Patil

## Abstract
Transactive energy paradigms will enable the exchange of energy from a distributed set of prosumers. While
prosumers have access to distributed energy resources, these
resources are intermittently available. There is a need for distributed
markets to enable the exchange of energy in transactive
environments, however, the large number of potential prosumers
introduces challenges in the establishment of trust between
prosumers. Markets for transactive environments create other
challenges, such as establishing clearing prices for energy and
exchanging money between prosumers.
A transactions based model will enable the exchange of energy in a completely distributed set of consumers. In today's world, the consumers have access to this energy, but everything is centralized and there is need to approach and interact with centralized authorities in order to facilitate these transactions. These are both a waste of an individual's energy and finances. So establishing a sort of distributed market for these consumers that is trustworthy is the problem that we are aiming to solve using Blockchain.
Blockchains provide a
unique technology to address this distributed trust problem
through the use of a distributed ledger, cryptocurrencies, and
the execution of smart contracts. We propose a solution using smart contract written in Solidity for Ethereum.

## Running the code and the application
We have 2 miners running on the host machine, that mine from the Blockchain. Both these miners have the same genesis.
To start the mining for both the miners, execute the following commands after making those files executable with:
`chmod 777 command1.sh` and `chmod 777 command2.sh`

We must also run the `geth attach` and `geth attach ipc:./miner2/geth.ipc` to activate the geth JS consoles for both the miners.
Here we can create various user accounts, check account addresses, coinbase values and also execute transactions to and from the different accounts of the miners.
1. Coinbase value: `eth.coinbase`
2. Address: `eth.accounts[i]`
3. New account: `geth --datadir ~/Directory/miner2 account new`
4. Get balance: `eth.getBalance(eth.coinbase)`
5. Send Transaction same miner: `eth.sendTransaction({from: eth.accounts[0], to: eth.accounts[1], value: web3.toWei(10, "ether")})`
6. Diff Miner: `eth.sendTransaction({from: eth.accounts[0], to: 0x4ed5ef14cb5df5069059ac201a7294d810b89dcc05c0f60f970b87bff7faa5b6, value: web3.toWei(10, "ether")})`

Finally an almost similar process must be followed to set up the R Pi as a node, which basically collects the data from the renewable energy source and executes functions of the smart contract.
Truffle framework has been used to execute (compile and migrate) the Smart Contract that has been written in Solidity for Ethereum. The file is SmartEnergy.sol.

## Mist browser
We have used the mist browser to facilitate the simulation of transactions between the Pis and the BC.
The browser can be run by executing below command after entering the required wd.
`./mist`
