pragma solidity ^0.4.18;

import "./token/Ownable.sol";
import "./token/StandardToken.sol";
import "./token/BurnableToken.sol";

contract SqueezerTestToken20 is Ownable, StandardToken, BurnableToken {

  string public constant name = "SqueezerTestToken20";
  string public constant symbol = "SQZTEST20";
  uint8 public constant decimals = 18;

  uint256 public constant TOKEN_SALE_SUPPLY = 308000000 * (10 ** uint256(decimals));
  uint256 public constant TOKEN_CREATORS_SUPPLY = 77000000 * (10 ** uint256(decimals));
  address constant public CREATORS_WALLET_ADDRESS = 0x494ac40512b42Ab2B9efb8638D44789fc09F9434;

  function SqueezerTestToken20() public {
    totalSupply = TOKEN_SALE_SUPPLY;
    balances[msg.sender] = TOKEN_SALE_SUPPLY;
    balances[CREATORS_WALLET_ADDRESS] = TOKEN_CREATORS_SUPPLY;
  }
}