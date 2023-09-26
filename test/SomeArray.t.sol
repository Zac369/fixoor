// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract SomeArrayTest is Test {
    /// @dev Address of the SimpleStore contract.
    SomeArray public someArray;

    /// @dev Setup the testing environment.
    function setUp() public {
        someArray = SomeArray(HuffDeployer.deploy("SomeArray"));
    }

    /// @dev Ensure that you can set and get the value.
    function testSum() public {
        // sum 100 numbers
        uint256[] memory values = new uint256[](1000);
        for (uint256 i = 0; i < 1000; i++) {
            values[i] = i + 1;
        }
        assertEq(someArray.sum(values), 500500);
    }
}

interface SomeArray {
    function sum(uint256[] memory) external view returns (uint256);
}
