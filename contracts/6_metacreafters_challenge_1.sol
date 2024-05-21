// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Challenge{
    string name;
    uint8 age;
    bool isActive;
    address walletAddr; 
    

    constructor(){
        age = 18;
        isActive = false;
    }



    // setter functions

    function setName(string memory _name) public {
        name = _name;
        
    }
    function setAge(uint8 _age)public {
        age = _age;
    }
    function setAddress(address _walletAddr)public {
        walletAddr = _walletAddr;
    }
    function setIsActive(bool _isActive) public {
        isActive = _isActive;
    }

    //getter functions

    function getName()public view returns(string memory){
        return name;
    }
    function getAge() public view returns(uint8){
        return age;
    }
    function getIsActive() public view returns(bool){
        return isActive;
    }
    function getWalletAddr() public view returns(address){
        return walletAddr;
    }





}