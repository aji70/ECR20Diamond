// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {LibERC20} from "../libraries/LibERC20.sol";

contract AjidokwuFaucet {
    LibERC20.Layout ajidokwu;

    function mint(address to, uint256 amount) public onlyOwner {
        ajidokwu.to = to;
        ajidokwu.amount = amount;
        _mint(ajidokwu.to, ajidokwu.amount);
    }

    function balanceOf(address account) public view virtual returns (uint256) {
        ajidokwu.account = account;
        return _balances[ajidokwu.account];
    }

    // function getLayout() public view returns (LibAppStorage.Layout memory l) {
    //     l.currentNo = layout.currentNo;
    //     l.name = layout.name;
    // }
}




contract Ajidokwu is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("Ajidokwu", "AJI")
        Ownable(initialOwner)
    {
        _mint(msg.sender, 10000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
