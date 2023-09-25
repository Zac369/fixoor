// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract MissingTest is Test {
    /// @dev Address of the SimpleStore contract.
    Missing public missing;

    /// @dev Setup the testing environment.
    function setUp() public {
        missing = Missing(HuffDeployer.deploy("Missing"));
    }

    /// @dev Ensure that you can set and get the value.
    function testGetOwner() public {
        missing.claimOwnership();
        require(missing.owner() == address(this));
    }
}

interface Missing {
    function owner() external view returns (address);
    function claimOwnership() external;
}
