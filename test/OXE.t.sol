// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "../src/OXE.sol";

contract OXETest is Test {
    OXE oxe;
    address owner = msg.sender;

    function setUp() public {
        oxe = new OXE(owner);
    }

    /*//////////////////////////////////////////////////////////////
                                 BASIC ATTRIBUTES
    //////////////////////////////////////////////////////////////*/
    function testName() public {
        assertEq(oxe.name(), "Omnia Exchange Token");
    }

    function testSymbol() public {
        assertEq(oxe.symbol(), "OXE");
    }

    function testTotalSupply() public {
        assertEq(oxe.totalSupply(), 10 * 10**6);
        assertEq(oxe.totalSupply(), 10**7);
        assertEq(oxe.totalSupply(), 10000000);
    }

    function testBalanceOfOwner() public {
        assertEq(oxe.balanceOf(owner), 10 * 10**6);
    }
}
