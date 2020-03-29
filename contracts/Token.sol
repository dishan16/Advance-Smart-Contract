pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol";

contract Token is ERC20 {
  string public name = "DToken";
  string public symbol = "DT";
  uint8 public decimals = 16;

  constructor() public {
    _mint(msg.sender, 10**22);
  }
}