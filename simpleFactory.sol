// SPDX-Liscence-Identifier: MIT

pragma solidity ^0.6.0;

import "./simpleStorage.sol";

// 'is' - inherit 
contract StorageFactory is SimpleStorage{
    
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    
    function sfStore(uint256 _arrIndex, uint256 _numToStore) public {
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_arrIndex]));
        simpleStorage.store(_numToStore);
    }

    function retrieve(uint256 _arrIndex) public view returns(uint256){
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_arrIndex]));
        return simpleStorage.retrieve();
    }
}
