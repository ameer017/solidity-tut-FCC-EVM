// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

// smart contracts are codes that get executed on the blockchain.

contract MyContract {
    // data type of variables
    string value;

    constructor() {
        value = "myValue";
    }

    // get value
    function get() public view returns(string memory){
        return  value;
    }

    // update value
    function set(string memory _value) public {
        value = _value;
    }
}