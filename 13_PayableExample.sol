//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Money{//First Contract
    address ishu=0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    function getMoney() public payable {} // Example of payable

    function transferMoney() public{
        payable(ishu).transfer(address(this).balance);
    }
}
contract Parent{ //Second Contract
    string internal name="Ishu";
    uint id=123;
    string private qualification;

    function getId() public view returns(uint ) {//Example of View
    return id;
    }
    function add(uint _a,uint _b) public pure returns(uint){
        return _a+_b;
    }
    function happy() public pure returns(string memory){
        return "Happy Happy";
    }
}