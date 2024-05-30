// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//For this challenge, write a smart contract that uses view, pure, and payable functions. 
//Ensure that the functions are accessible within the contract and derived contracts as well.

contract Visibility{

    uint public totalSupply;

    constructor(){
        totalSupply = address(this).balance;
    }

    function checkBalance()internal view returns(uint){
        return totalSupply;
    }

    function sayHii() internal pure returns(string memory){
        return "hiii !";
    }

    function payEther() public payable {
        totalSupply += msg.value;
    }

    function balance() public view returns(uint){
        return checkBalance();
    }
    function greet() public pure returns(string memory){
        return sayHii();
    }


}