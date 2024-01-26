// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

// enum - enumerated list that allows us to keep track of a set of listed things in our contract 
contract Enum {
    enum State {Waiting, Ready, Active}
    State public state;

    constructor() {
        state = State.Waiting;
    }

    function activate() public {
        state = State.Active;
    }

    function isActive() public view returns(bool) {
        return state == State.Active;
    }
}