# ErrorCodes Contract

This is a README for the `errorCodes` contract written in Solidity version 0.8.18.

## Overview

The `errorCodes` contract is a simple Solidity contract that contains two public state variables, `a` and `b`, and three functions: `storeA`, `storeB`, and `add`.

## State Variables

- `a`: A public state variable of type uint.
- `b`: A public state variable of type uint.

## Functions

### storeA(uint _a)

This function allows you to store a value in `a`. It has a requirement that `_a` must be greater than zero. If `_a` is zero, the transaction will be reverted with the message "you can only set a to a number larger than zero".

### storeB(uint _b)

This function allows you to store a value in `b`. It has an assertion that `_b` must be greater than `a`. If `a` is zero, the transaction will be reverted with the message "you can only set b after you have set a".

### add()

This function returns the sum of `a` and `b`.

## Notes

Please note that this contract does not have a constructor, so the state variables `a` and `b` will be initialized to zero. Also, keep in mind that the `storeB` function may not work as expected because it asserts that `_b > a` before it checks if `a` is zero. You might want to consider changing the order of these operations.
