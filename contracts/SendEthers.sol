// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

contract SendEthers {
    mapping(address => uint256) public balances;

    address payable wallet;
    

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
    }
}
