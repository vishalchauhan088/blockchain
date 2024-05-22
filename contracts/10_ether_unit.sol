// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Unit{

    function payEther() public payable{
        // any logic here
        // this function can now capable of taking ether
    }
    function getContractBalance() public view returns(uint){
        return address(this).balance ;// by default in wei
    }
    function balanceGwei() public view returns(uint){
        return address(this).balance /  1e9 ;
    }
    function balanceEther() public view returns(uint){
        return address(this).balance / 1e18;
    }
}