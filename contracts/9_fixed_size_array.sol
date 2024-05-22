// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Array{
    uint[4] public arr= [10,20,30,40];

    function getArr(uint8 index) public view returns(uint){
        return arr[index];
    }
    function setArr(uint8 index, uint _val) public {
        arr[index] = _val;
    }
    function len() public view returns(uint){
        return arr.length;
    }
}