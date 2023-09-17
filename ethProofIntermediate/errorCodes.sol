// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract errorCodes {
    uint public a;
    uint public b;

    // assert
    // revert
    // require

    function storeA(uint _a) public {
        require(_a != 0, "you can only set a to a number larger than zero");
        a = _a;
    }

    function storeB(uint _b) public {
        assert(_b > a);

        if (a == 0) {
            revert(" you can only set b after you have set a");
        }

        b = _b;
    }

    function add() public view returns (uint result) {
        result = a + b;
    }
}

