pragma solidity ^0.4.23;

import './StandardToken.sol';
import './Ownable.sol';

/**
 * @title Burnable Token
 * @dev Token that can be irreversibly burned (destroyed).
 */
contract BurnableToken is Ownable, StandardToken {

  event Burn(address indexed from, uint256 value);

  /**
    * @dev burns all remaining token supply
    */
  function burnRemainingTokens() onlyOwner public {
    address burner = msg.sender;

    emit Burn(burner, balances[burner]);
    balances[burner] = 0;
    totalSupply_ = 0;
  }
}