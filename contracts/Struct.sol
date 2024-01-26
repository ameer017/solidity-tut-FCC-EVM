// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

contract NewContract {
    //struct struct is a way to define a custom data type that groups together variables under a single name
    
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

    function addPerson(string memory _firstname, string memory _lastname) public {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstname, _lastname);
    }


} 