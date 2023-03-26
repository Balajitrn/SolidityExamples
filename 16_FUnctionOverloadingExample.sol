pragma solidity ^0.8.0;

contract errorhandling { 
    uint public balance =100;
    function withdrawmoney(uint _amount) public returns(uint)
    {
        require(_amount<balance,"Not Allowed");
        balance =balance -_amount;
        return balance;
     
    }
}
contract errorhandlingrevert{
    uint public balance=100;
    function withdrawmoney(uint _amount) public returns(uint){
        if(_amount<balance){
            balance =balance-_amount;
        }
        else
        {
            revert("Not Allowed");
        }
        return balance;
    }
}