// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StringText{
    string s;

    constructor(){
        s = "hello world";
    }
    function getString() public view returns(string memory){
        return s;
    }
}