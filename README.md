<img align="right" width="150" height="150" top="100" src="./assets/blueprint.png">

# fixoor • ![license](https://img.shields.io/github/license/huff-language/huff-project-template.svg) ![solidity](https://img.shields.io/badge/solidity-^0.8.15-lightgrey)

A collection of huff contracts that currently do not work as intended. 

The goal is to fix them and learn about common mistakes in the process.

This project is aimed at new huffoors and is meant to be a learning experience. Most of the challenges will be very easy to solve for experienced huffoors.

## Recommended Solve Order

1. SimpleReturn
2. Missing
3. SolidityString
4. SomeArray
5. NotBeef

## How To Play Example

Go to [SimpleReturn.huff](https://github.com/Zac369/fixoor/blob/main/src/SimpleReturn.huff) in the src folder and edit the RETURN_INPUT macro as follows

```c
#define macro RETURN_INPUT() = takes (0) returns (0) {
    0x04 calldataload // [input]

    0x00 mstore

    // Return value
    0x20 0x00 return
}
```

Then run the test with

    forge test -vvv --mc SimpleReturnTest

You should see something like this

    Running 1 test for test/SimpleReturn.t.sol:SimpleReturnTest
    [PASS] testGetOwner(uint256) (runs: 256, μ: 5312, ~: 5312)
    Test result: ok. 1 passed; 0 failed; 0 skipped; finished in 1.16s

## Getting Started

### Requirements

The following will need to be installed in order to use this template. Please follow the links and instructions.

-   [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)  
    -   You'll know you've done it right if you can run `git --version`
-   [Foundry / Foundryup](https://github.com/gakonst/foundry)
    -   This will install `forge`, `cast`, and `anvil`
    -   You can test you've installed them right by running `forge --version` and get an output like: `forge 0.2.0 (92f8951 2022-08-06T00:09:32.96582Z)`
    -   To get the latest of each, just run `foundryup`
-   [Huff Compiler](https://docs.huff.sh/get-started/installing/)
    -   You'll know you've done it right if you can run `huffc --version` and get an output like: `huffc 0.3.0`

### Quickstart

1. Clone this repo or use template

Click "Use this template" on [GitHub](https://github.com/Zac369/fixoor) to create a new repository with this repo as the initial state.

Or run:

```
git clone https://github.com/Zac369/fixoor
cd fixoor
```

2. Install dependencies

Once you've cloned and entered into your repository, you need to install the necessary dependencies. In order to do so, simply run:

```shell
forge install
```

3. Build & Test

To build and test your contracts, you can run:

```shell
forge build
forge test
```

For more information on how to use Foundry, check out the [Foundry Github Repository](https://github.com/foundry-rs/foundry/tree/master/forge) and the [foundry-huff library repository](https://github.com/huff-language/foundry-huff).


## License

[The Unlicense](https://github.com/Zac369/fixoor/blob/main/LICENSE)


## Acknowledgements

- [huff-project-template](https://github.com/huff-language/huff-project-template)
- [forge-template](https://github.com/foundry-rs/forge-template)
- [femplate](https://github.com/abigger87/femplate)


## Disclaimer

_These smart contracts are being provided as is. No guarantee, representation or warranty is being made, express or implied, as to the safety or correctness of the user interface or the smart contracts. They have not been audited and as such there can be no assurance they will work as intended, and users may experience delays, failures, errors, omissions, loss of transmitted information or loss of funds. The creators are not liable for any of the foregoing. Users should proceed with caution and use at their own risk._