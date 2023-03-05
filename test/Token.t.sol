// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "forge-std/Test.sol";
import {Token} from "../src/Token.sol";

contract TokenTest is Test {
    Token token;

    function setUp() public {
        // deploy your contract here
        token = new Token("TestToken", "TT", 1, 1000000000000000000000);
    }

    function testName() public {
        assertEq(token.name(), "TestToken");
    }
}
