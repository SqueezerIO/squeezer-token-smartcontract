pragma solidity ^0.4.23;

import "./token/StandardToken.sol";
import "./token/BurnableToken.sol";

contract SqueezerToken is StandardToken,BurnableToken {

  string public constant name = "Squeezer"; // solium-disable-line uppercase
  string public constant symbol = "SQR"; // solium-disable-line uppercase
  uint8 public constant decimals = 18; // solium-disable-line uppercase

  uint256 public constant INITIAL_SUPPLY = 187500000 * (10 ** uint256(decimals));

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  constructor() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
  }
}