//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Parent{ //First Contract
    string name="Ishu";
    uint id=123;
    string qualification;
    function getId() public view returns(uint) {
    return id;
    }
}
contract child is Parent{
    function getName() public view returns(string memory)
    {
        return name;
    }
}
contract first is child{
    function getName1() public view returns(string memory)
    {
        return name;
    }
}