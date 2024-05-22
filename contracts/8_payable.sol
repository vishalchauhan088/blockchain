// SPDX-License-Identifier: MIT
pragma solidity^ 0.8.0;

contract pay{
    address owner ;
    address payable user = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    constructor(){
        owner = msg.sender;
    }

    function payEther()public payable{

    }
    function getBalance()public view returns (uint){
        return address(this).balance;
    }
    function sendBalance() public {
        require(msg.sender == owner , "not owner");
        user.transfer(1 ether );
    }
   
}