// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

// custom modifier
contract TimeBasedFn {
    uint256 public peopleCount = 0;

    // Person[] public people;
    // instead of having them in an array, mapping method can be used instead.
    //key   //value
    mapping(uint256 => Person) public people;

    //struct is a way to define a custom data type that groups together variables under a single name
    uint256 openingTime = 1706864250;

    modifier onlyWhileOpen() {
        require(block.timestamp >= openingTime);
        _;
    }
    struct Person {
        uint _id;
        string _firstname;
        string _lastname;
    }

    function addPerson(
        string memory _firstname, 
        string memory _lastname
        )
        public
        onlyWhileOpen
    {
        increamentCount();
        people[peopleCount] = Person(peopleCount, _firstname, _lastname);
    }

    function increamentCount() internal {
        peopleCount += 1;
    }
}
