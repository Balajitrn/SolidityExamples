pragma solidity ^0.8.0;//Version of Compiler

contract Test { // Name of Contract
    address public addblock;

    function setAddres(address _addblock) public{
        addblock =_addblock;
    }

    function getBalanceOfAccount() public view returns(uint){
        return addblock.balance;
    }
}