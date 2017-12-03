'use strict';

const HDWalletProvider = require('truffle-hdwallet-provider');
const wallet = require('./wallet');

module.exports = {
  networks: {
    development: {
      gas: 4000000,      
      provider: new HDWalletProvider(wallet.development.mnemonic, 'https://kovan.infura.io/' , wallet.development.address),      
      network_id: "*" // Match any network id
    },
    live: {
      provider: new HDWalletProvider(wallet.live.mnemonic, 'https://mainnet.infura.io/' , wallet.live.address),      
      network_id: "*" // Match any network id
    },
  }
};