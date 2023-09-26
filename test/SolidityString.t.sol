// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract SolidityStringTest is Test {
    /// @dev Address of the SimpleStore contract.
    SolidityString public solidityString;

    /// @dev Setup the testing environment.
    function setUp() public {
        solidityString = SolidityString(HuffDeployer.deploy("SolidityString"));
    }

    /// @dev Ensure that you can set and get the value.
    function testHello() public {
        console.log(solidityString.hello());
        assertEq(solidityString.hello(), "Hello World");
    }
}

interface SolidityString {
    function hello() external view returns (string memory);
}
