# ErrorHandling Contract

This Solidity contract, `ErrorHandling`, demonstrates basic error handling mechanisms in Solidity using `revert`, `assert`, and `require` statements. The contract also includes a simple ownership mechanism to restrict function access.

## Contract Overview

The `ErrorHandling` contract has the following features:
- Two public unsigned integer variables `x` and `y`.
- An ownership mechanism to restrict certain function calls to the contract owner.
- Functions to set the values of `x` and `y`.
- Functions to transfer values between `x` and `y` with error handling.

## Contract Variables

- `uint public x;` - A public unsigned integer variable `x`.
- `uint public y;` - A public unsigned integer variable `y`.
- `address owner;` - An address variable `owner` to store the address of the contract deployer (owner).


