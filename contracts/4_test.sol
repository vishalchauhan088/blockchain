// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.20;

contract HelloWorld{
    string public greeting;

    constructor(){
        greeting = "Hello, World !!!";


    }

    function setGreeting(string memory _message) public {
        greeting = _message;
    }

    function getGreeting() public view returns(string memory){
        return greeting;
    }
}
