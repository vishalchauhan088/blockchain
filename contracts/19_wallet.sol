// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Wallet{
    string public name = "Vwallet";
    uint num;
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    function setValue(uint _num)public {
        num = _num;
    }
    function getValue()public view returns(uint){
        return num;
    }

    function sendEthContract()public payable{

    }
    function contractBalance()public view returns(uint){
        return address(this).balance;
    }
    function sendEtherUser(address _user) public payable{
        payable(_user).transfer(msg.value);
    }

    function accountBalance(address _address)public view returns(uint){
        return (_address).balance;
    }
    function withdrawEther(uint _value)public {
        require(msg.sender == owner,"owner only");
        require(address(this).balance >= _value,"insufficient balance");

        payable(owner).transfer(_value);
    }

}