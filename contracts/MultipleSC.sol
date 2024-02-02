// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

// Inheritance - parent/child smart contract

contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;

    function mint() public {
        // buy a token
        balances[tx.origin]++;
    }
}

contract MultipleSC {
    address payable wallet; //keep track of th e wallet
    
    address public token;

    constructor(address payable _wallet, address _token) {
        wallet = _wallet;
        token = _token;
    }

    // fallback() external payable {
    // }

    receive() external payable {
        buyToken();
    }

    function buyToken() public payable {
       ERC20Token(address(token)).mint();
        // send ether to the wallet;
        wallet.transfer(msg.value);
    }
}
