
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleToken{
    string public constant name = "vtoken";
    string public constant abr = "vt";
    uint public totalSupply = 10000;

    mapping(address => uint) public balances;

    address owner;

    constructor(){
        owner = msg.sender;
    }


    function mint(address _adr, uint _val) public {
        require(owner == msg.sender, " only owner can call this function");
        totalSupply += _val;
        balances[_adr] += _val;
    }

    function burn(uint _val) public{
        require(balances[msg.sender] >= _val, "not enough token");
        totalSupply -= _val;
        balances[msg.sender] -= _val;
    }

}