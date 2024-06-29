// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ErrorHandling{
    uint public x;
    uint public  y;
    address owner;

    constructor(){
       owner = msg.sender;
    }
    function setX(uint _x)public OwnerOnly{
        x = _x;
    }
    function setY(uint _y)public OwnerOnly{
        y = _y;
    }

    function transfer(uint val) public OwnerOnly{
        if(val>x){
            revert("not sufficient value in x");
        }
        uint valX = x;
        uint valY = y;

        x = x-val;
        y = y+val;

        assert(valX + valY == x + y);
    }

    function transferError(uint val) public OwnerOnly{
        if(val>x){
            revert("not sufficient value in x");
        }
        uint valX = x;
        uint valY = y;

        x = x-val;
        y = y+val+1;

        assert(valX + valY == x + y);
    }
   

    modifier OwnerOnly(){
        require(msg.sender == owner,"Only Owner can call this function");
        _;
    }
}