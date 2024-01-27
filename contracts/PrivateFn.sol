// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

// custom modifier
contract PrivateFn {
    //struct struct is a way to define a custom data type that groups together variables under a single name
    
    address owner;
    modifier onlyOwner() {
        require( msg.sender == owner, "Only the owner can add person");
        _;
    }    
    struct Person {
        uint _id;
        string _firstname;
        string _lastname;
    }

    uint256 public peopleCount = 0;

    // Person[] public people;
    // instead of having them in an array, mapping method can be used instead.
            //key   //value
    mapping (uint => Person) public  people;
    
    constructor() {
        owner = msg.sender;
    }

    function addPerson(string memory _firstname, string memory _lastname) public onlyOwner {
        increamentCount();
        people[peopleCount] = Person(peopleCount, _firstname, _lastname);
    }

    function increamentCount() internal {
        peopleCount += 1;

    }

} 