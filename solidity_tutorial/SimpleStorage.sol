// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.6.0 <0.9.0;

// pragma solidity ^0.6.0; it declares that any solidity version greater than 0.6.0 but less than 0.7.0 will be able to run this code.
// contract keyword is used to define a smart contract

// next we create contract
// similar to class in any object oriented lang
// write contract identifier first and then write the name of the contract

/*
contract SimpleStorage {
    
    uint256 favouriteNumber = 5; // declares a variable of type unsigned integer
    int256 favNumber = 10; // Declares a variable of type integer
    bool favouriteBool = true; // declares variable of type boolean
    string favouriteString = "Hello World!"; // declares variable of type string
    address favouriteAddress = 0xa1b3C856db93B4409C34e9C0e2317BAD9EBCbf73 // account address
    bytes32 favouriteBytes = "cat" // declares a variable of size 32 bytes
    
}
*/

contract SimpleStorage {
    // by default a variable is of the type of internal
    // there are 4 types of variable declaration in solidity
    // public, internal, external, private
    // public defines that the values stored in a variable can be assessed even outside the blockchain
    //uint256 favouriteNumber; // initialises null to variable
    uint256 public favouriteNumber;
    
    // now we create functions to add power to our contract
    
    // creating a public funtion to change the value of stored integer
    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }
    
    
}
