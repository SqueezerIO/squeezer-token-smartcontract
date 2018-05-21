'use strict';

const HDWalletProvider = require('truffle-hdwallet-provider');
const Web3 = require("web3");
const wallet = require('./wallet');
const web3 = new Web3();

module.exports = {
  networks: {
    development: {
      gas: 4000000,      
      provider: new HDWalletProvider(wallet.development.mnemonic, 'https://ropsten.infura.io/' , wallet.development.address),      
      network_id: "*" // Match any network id
    },
    live: {
      provider: new HDWalletProvider(wallet.live.mnemonic, 'https://mainnet.infura.io/' , wallet.live.address),      
      network_id: "*",
      gas: 5000000,
      gasPrice: web3.toWei("60", "gwei")  
    },
  }
};