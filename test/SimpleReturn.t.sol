// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract SimpleReturnTest is Test {
    /// @dev Address of the SimpleStore contract.
    SimpleReturn public simpleReturn;

    /// @dev Setup the testing environment.
    function setUp() public {
        simpleReturn = SimpleReturn(HuffDeployer.deploy("SimpleReturn"));
    }

    /// @dev Ensure that you can set and get the value.
    function testGetOwner(uint256 value) public {
        require(simpleReturn.returnInput(value) == value);
    }
}

interface SimpleReturn {
    function returnInput(uint256) external view returns (uint256);
}
