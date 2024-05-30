// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Voting {
    //
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }

    address  public chairperson;

    // mapping to check if anyone has voted or not
    mapping (address => bool) public voters;

    //mapping all candidates in election
    mapping(uint => address) public candidates;

    // modifers for chairpersonOnly

    modifier chairpersonOnly(){
        require(msg.sender == chairperson,"Not Authorized Person");
        _;
    }

    // add a candidate
    


}