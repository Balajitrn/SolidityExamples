//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract funding{
    //My Own Address 3rd Account 4th Account
    address owner=0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
    function getMoney() public payable{}
    function checkContractBalance() public view returns(uint){
        return address(this).balance;
    }
    function transfertoAddress() public {
        payable(owner).transfer(address(this).balance);
    }
    function checkAddressBalance() public view returns(uint) {
       return owner.balance;
    }

}