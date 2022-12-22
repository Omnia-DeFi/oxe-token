// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/OXE.sol";

contract DeployOXE is Script {
    address constant oxeOwner = 0x809e995d0F57B7d5E57CAA65a21b889689D06F77;

    function run() external {
        string memory SEED = vm.envString("SEED");
        uint256 privateKey = vm.deriveKey(SEED, 0);
        vm.startBroadcast(privateKey);

        OXE token = new OXE(oxeOwner);

        vm.stopBroadcast();
    }
}

// forge script script/OXE.s.sol:DeployOXE --rpc-url $GOERLI_RPC_URL --broadcast --verify -vvvv
