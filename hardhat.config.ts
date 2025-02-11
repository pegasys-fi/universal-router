import 'hardhat-typechain'
import '@nomiclabs/hardhat-ethers'
import '@nomicfoundation/hardhat-chai-matchers'
import '@nomiclabs/hardhat-etherscan'
import dotenv from 'dotenv'
dotenv.config()

const DEFAULT_COMPILER_SETTINGS = {
  version: '0.8.17',
  settings: {
    viaIR: true,
    evmVersion: 'istanbul',
    optimizer: {
      enabled: true,
      runs: 1_000_000,
    },
    metadata: {
      bytecodeHash: 'none',
    },
  },
}

export default {
  paths: {
    sources: './contracts',
  },
  networks: {
    hardhat: {
      allowUnlimitedContractSize: false,
    },
    rollux: {
      url: `https://rpc.rollux.com`,
    },
  },
  etherscan: {
    // Your API key for Etherscan
    // Obtain one at https://etherscan.io/
    apiKey: {
      rollux: "abc"
    },
    customChains: [
      {
        network: "rollux",
        chainId: 570,
        urls: {
          apiURL: "https://explorer.rollux.com/api",
          browserURL: "https://explorer.rollux.com"
        }
      }
    ]
  },
  namedAccounts: {
    deployer: 0,
  },
  solidity: {
    compilers: [DEFAULT_COMPILER_SETTINGS],
  },
  mocha: {
    timeout: 60000,
  },
}
