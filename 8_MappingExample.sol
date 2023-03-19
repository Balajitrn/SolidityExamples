pragma solidity ^0.8.0;//Version of Compiler

contract Test { // Name of Contract
    //key-value Relationship
    mapping (address =>uint256) private favNumbers;

    // First function reading the data
    function getmyFavNumber() external view returns(uint256){
        return favNumbers[msg.sender];
    }

    //Second function writing the data
    function setmyFavNumber(uint256 num) external {
    require(num!=13,"Change the number");
    favNumbers[msg.sender]=num;
    }
}