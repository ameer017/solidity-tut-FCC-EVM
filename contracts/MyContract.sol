// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

// smart contracts are codes that get executed on the blockchain.

contract MyContract {
    // data type of variables
    string value;

    // this will run without the get function
    // string public value;

    // this will run without the constructor
    // string public value = "myValue"

    // this will run without the set funtion
    // string public constant stringValue = "myValue"

    constructor() {
        value = "myValue";
    }

    // get value
    // data location must be memory
    function get() public view returns (string memory) {
        return value;
    }

    // update value
    function set(string memory _value) public {
        value = _value;
    }
}
