// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "../src/OXE.sol";

contract OXETest is Test {
    OXE oxe;

    string public SEED = vm.envString("SEED");
    uint256 public privateKey = vm.deriveKey(SEED, 0);
    address public owner = msg.sender;

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
        assertEq(oxe.totalSupply(), 10 * 10**6 * 1 ether);
        assertEq(oxe.totalSupply(), 10**7 * 1 ether);
        assertEq(oxe.totalSupply(), 10000000 * 1 ether);
    }

    function testBalanceOfOwner() public {
        assertEq(oxe.balanceOf(owner), 10 * 10**6 * 1 ether);
    }
}
