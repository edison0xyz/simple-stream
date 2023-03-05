// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

// import {ERC20} from "openzeppelin-contracts/token/ERC20/ERC20.sol";
import {ERC20} from "solmate-contracts/tokens/ERC20.sol";

contract Token is ERC20 {
    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint256 initialSupply
    ) ERC20(name, symbol, decimals) {
        _mint(msg.sender, initialSupply);
    }
}
