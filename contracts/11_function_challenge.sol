// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Calculation{
    
    function add(uint _x, uint _y)public pure returns (uint){
        return _x + _y;
    }

    function sub(uint _x, uint _y) public pure returns(uint){
        return _x - _y;
    }

    function mul(uint _x, uint _y) public pure returns(uint){
        return _x * _y;
    }

    function div(uint _x , uint _y) public pure returns(uint){
        require(_y != 0, "divide by zero error");
        return _x / _y;
    }

}


