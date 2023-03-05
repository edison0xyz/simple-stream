// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "forge-std/Test.sol";
import {Stream} from "../src/Stream.sol";
import {Token} from "../src/Token.sol";

contract StreamTest is Test {
    Token token;
    Stream stream;
    address user1 = address(0x1);
    address user2 = address(0x2);
    address user3 = address(0x3);

    function setUp() public {
        token = new Token("TestToken", "TT", 18, 1000000000000000000000);
        token.transfer(user1, 1_000);
        assertEq(token.balanceOf(user1), 1_000);

        // deploy the stream contract
        stream = new Stream(address(token));
    }

    function testCreateStream() public {
        assertEq(token.balanceOf(user1), 1000000000000000);

        // create a stream
        vm.startPrank(user1);
        stream.deposit(10000000000000);
        stream.createStream(user2, 100); // 1 token per second
        assertEq(token.balanceOf(address(stream)), 10000000000000);
    }

    function testName() public {
        assertEq(token.name(), "TestToken");
    }
}
