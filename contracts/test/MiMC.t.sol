// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/StdCheats.sol";
import "../src/MiMC.sol";

contract MiMCTest is Test {
    MiMC public mimc;

    function setUp() public {
        address cont;
        mimc = new MiMC(IHasher(cont));
    }

    function testMiMC() public {
        assertEq(
            mimc.hashLeftRight(3, 11), 20873465551905417246270225393360073881989948543683254892256709153974136274798
        );
    }
}
