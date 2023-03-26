//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Money{
    //Third Account I am considering here
    address balaji=0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
    function getMoney() public payable {} // Temporary Work
    function transferMoney() public{
        payable(balaji).transfer(address(this).balance);
    }
}