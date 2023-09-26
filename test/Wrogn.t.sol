// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract WrognTest is Test {
    /// @dev Address of the SimpleStore contract.
    Wrogn public wrogn;

    /// @dev Setup the testing environment.
    function setUp() public {
        wrogn = Wrogn(HuffDeployer.deploy("Wrogn"));
    }

    /// @dev Test when the number is even.
    function testEvenNumber(uint256 value) public {
        vm.assume(value % 2 == 0);
        require(wrogn.calculation(value) == value / 2 + 1);
    }

    /// @dev Test when the number is odd and greater than 100.
    function testOddNumber(uint256 value) public {
        vm.assume(value % 2 == 1);
        vm.assume(value > 100);
        require(wrogn.calculation(value) == value / 10 + 7);
    }

    // @dev Test when the number is odd and less than 100 and a multiple of 3.
    function testOddNumberLessThan100(uint256 value) public {
        vm.assume(value % 2 == 1);
        vm.assume(value < 100);
        vm.assume(value % 3 == 0);
        require(wrogn.calculation(value) == value / 3 + 3);
    }

    // @dev Test when the number is odd and less than 100 and not a multiple of 3.
    function testOddNumberLessThan100NotMultipleOf3(uint256 value) public {
        vm.assume(value % 2 == 1);
        vm.assume(value < 100);
        vm.assume(value % 3 != 0);
        require(wrogn.calculation(value) == value);
    }
}

interface Wrogn {
    function calculation(uint256) external view returns (uint256);
}
