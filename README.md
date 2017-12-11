## Generate wallet address

https://iancoleman.io/bip39/#english

## Add wallets

`wallet.js`

```javascript
'use strict';

module.exports = {
  development : {
    mnemonic : 'notice thunder ...',
    address : '0x5d556EF9xxxxxxxxxxxxxxxx'
  },
  live : {
    mnemonic : 'notice cloud ...',
    address : '0x7d556EF9xxxxxxxxxxxxxxxx'
  }
}
```

## Install truffle
`npm i truffle -g`

Tools Used:

https://github.com/OpenZeppelin/zeppelin-solidity

https://github.com/oraclesorg/oracles-combine-solidity/

https://kovan.etherscan.io/

https://metamask.io/

https://gitter.im/kovan-testnet/faucet - ask for free Kether to deploy to Kovan network

https://parity.io/