// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

contract SendEthers {
    mapping(address => uint256) public balances;

    address payable wallet; //keep track of th e wallet
    
    event Purchase(
        address indexed  _buyer,
        uint256 _amount
    );

    constructor(address payable  _wallet) {
        wallet = _wallet;
    }

    // fallback() external payable {
    // }

    receive() external payable { 
        buyToken();

    }

    function buyToken() public payable  {
        // buy a token
        balances[msg.sender] += 1;
        // send ether to the wallet;
        wallet.transfer(msg.value);
        emit Purchase(msg.sender, 1);
    }
}
