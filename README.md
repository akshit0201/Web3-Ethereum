# Web3-Ethereum
This project contains two different solidity files: [first.sol](./contracts/first.sol) and [Counter.sol](./contracts/Counter.sol).

- `first.sol` is a simple hello world program which prints `Hello, World` in the console through the hardhat server.
- `Counter.sol` is a simple increment program which increments a counter.

The scripts for running these soliditiy files can be found in the [scripts](./scripts/) folder. Additionally, the solidity files can be deployed to the web through a server. The [index.ts](./src/index.ts) may have to be edited suitably.

This project uses [Hardhat](https://hardhat.org), which can be installed through npx: `npx hardhat`
## Deployment instructions
Compile Project:
`npx hardhat compile`

To run test: `npx hardhat test`

Start local node: `npx hardhat node`

Deploy: `npx hardhat run scripts/deploy.ts --network localhost`

This will open a hardhat server on port **8585**.

Additionally, to deploy to website, start web server: `python3 -m http.server 6969`

This will open a web server on port **6969**.

[Metamask](https://metamask.io) is required to connect the local node to the http server. Use any of the 20 guest accounts by linking their private key to metamask. Subsequently, transactions can be made to the smart contract through the local node.



