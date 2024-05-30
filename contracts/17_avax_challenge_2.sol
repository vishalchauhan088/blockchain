// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ModiferUse{
    uint x = 10;

    address public owner;

    constructor(){
        owner = msg.sender;
    }

    function get() public view returns(uint){
        return x;
    }
    function set(uint _x) public adminOnly {
        x = _x;
    }

    modifier adminOnly(){
        require(msg.sender == owner, "Admin can call only");
        _;
    }
}