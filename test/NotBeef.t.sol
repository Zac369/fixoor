// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract NotBeefTest is Test {
    /// @dev Address of the SimpleStore contract.
    NotBeef public notBeef;

    /// @dev Setup the testing environment.
    function setUp() public {
        notBeef = NotBeef(HuffDeployer.deploy("NotBeef"));
    }

    /// @dev Ensure that you can set and get the value.
    function testGetOwner() public {
        require(notBeef.owner() == address(0xdeadbeef));
    }
}

interface NotBeef {
    function owner() external view returns (address);
}
