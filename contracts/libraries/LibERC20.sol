// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
library LibERC20 {
    struct Layout {
        address owner;
        address to;
        uint256 value;
        address from;
        address spender;
        uint256 balance;
        uint256 remaining;
        address account;
        
    }
}
