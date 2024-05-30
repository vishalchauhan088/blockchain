// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VToken{
    string public constant tokenName = "VToken";
    string public constant tokenSymbol = "VT";
    uint8 public constant decimal = 18;
    uint   tokenTotalSupply = 100000e18;

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);


    // balance
    mapping(address => uint) public balances;

    //allowance
    mapping(address => mapping(address =>uint)) public allowances;


    constructor(){
        balances[msg.sender] += tokenTotalSupply;
    }

    function name() public pure returns (string memory){
        return tokenName;
    }
    function symbol() public pure returns (string memory){
        return tokenSymbol;
    }
    function decimals() public pure returns (uint8){
        return decimal;
    }
    function totalSupply() public view returns (uint256){
         return tokenTotalSupply;
    }
    function balanceOf(address _owner) public view returns (uint256 balance){
        return balances[_owner];
    }
    function transfer(address _to, uint256 _value) public returns (bool success){
        require(_value <= balances[msg.sender],"Not sufficient balance");
        require(_to != address(0),"not valid address");
        balances[msg.sender] -= _value;
        balances[_to] += _value;

        emit Transfer(msg.sender, _to, _value);

        return true;
    }
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool ){
        require(allowances[_from][msg.sender] >= _value, "Not sufficient allowance");
        require(balances[_from] >= _value,"Not sufficient balance");
        require(_to != address(0),"not valid address");
        allowances[_from][msg.sender] -= _value;
        balances[_from] -= _value;
        balances[_to] += _value;
        emit Transfer(_from, _to, _value);

        return true;

    }
    function approve(address _spender, uint256 _value) public returns (bool success){
        require(balances[msg.sender] >= _value, "Not sufficient balance for approval");
        allowances[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
    function allowance(address _owner, address _spender) public view returns (uint256 remaining){
        return allowances[_owner][_spender];
    }


}