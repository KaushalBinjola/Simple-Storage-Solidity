// SPDX-Liscence-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage{

    uint256 someNumber;

    struct People{
        uint256 numAssigned;
        string name;
    }

    People[] public people;
    mapping(string=>uint256) public mapPersons;

    function store(uint256 _assignedNum) public {
        someNumber = _assignedNum;
    }

    function retrieve() public view returns(uint256) {
        return someNumber;
    }

    function addPeople(string memory _name, uint256 _num) public{
        people.push(People(_num,_name));
        mapPersons[_name] = _num;
    }
}
