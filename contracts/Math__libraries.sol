// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

// Library is used to organize code that can be reused in multiple places.
// DRY - "Don't repeat yourself"
import "contracts/SafeMath.sol";

contract Math__libraries {
    using SafeMath for uint256;
    uint256 public value;

    function calculate(uint _value1, uint _value2) public {
        value = _value1.div(_value2);
    }

    // function addition(uint _value1, uint _value2) public {
    //     value = SafeMath.add(_value1, _value2);
    // }

    // function subtraction(uint _value1, uint _value2) public {
    //     value = SafeMath.sub(_value1, _value2);
    // }

    // function multiply(uint _value1, uint _value2) public {
    //     value = SafeMath.mul(_value1, _value2);
    // }
}