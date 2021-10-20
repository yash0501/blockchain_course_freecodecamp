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
    uint256 favouriteNumber;
    
    
    
    // now we want to assosiate a favourite number to a person or similar thing
    // to do so we use struct to define a new data structure
    // in storage all the state variables are declared with a 
    struct People{
        uint256 favouriteNumber;
        string name;
    }
    
    People public person = People({
        favouriteNumber: 54,
        name: "Lekh"
    });
    
    // array are declared in the similar way like we declare in any other programming language
    People[] public people;
    
    
    // now we want to retrieve the favouriteNumber of a specific person
    // for this we will use mapping
    // we create a new data structure like dictionary in python
    // this function will map my name to the favouriteNumber and if we search for a name, it will return that number from the mapping
    mapping(string => uint256) public nameToFavouriteNumber;
    
    
    // now we will create a function to add to our array dynamically
    // use array.push() to append to the array
    // to use a string as parameter, add memory after string because string is an object
    
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People({favouriteNumber: _favouriteNumber, name: _name}));
        // now we call the mapping to store the name and its corresponding favourite number
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
    
    
    // now we create functions to add power to our contract
    
    // creating a public funtion to change the value of stored integer
    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }
    
    // now create a function to retrieve value of variable
    // retrieve function is a view only function which will return a variable of type uint
    
    // view means we want to just view the state of the blockchain
    // pure functions do not read or modify the state of blockchain
    function retrieve() public view returns(uint){
        return favouriteNumber;
    }
}
