pragma solidity ^0.4.18;

import "./token/StandardToken.sol";
import "./token/BurnableToken.sol";

contract SqueezerToken is StandardToken, BurnableToken {

  string public constant name = "Squeezer Token";
  string public constant symbol = "SQZR";
  uint8 public constant decimals = 18;

  uint256 public constant TOKEN_SALE_SUPPLY = 308000000 * (10 ** uint256(decimals));
  uint256 public constant TOKEN_CREATORS_SUPPLY = 77000000 * (10 ** uint256(decimals));
  address constant public CREATORS_WALLET_ADDRESS = 0x2FCA908cc4Ab3bD8684A1c55d24D6EFA3A02d8c1;

  function SqueezerToken() public {
    totalSupply = TOKEN_SALE_SUPPLY;
    balances[msg.sender] = TOKEN_SALE_SUPPLY;
    balances[CREATORS_WALLET_ADDRESS] = TOKEN_CREATORS_SUPPLY;
  }
}