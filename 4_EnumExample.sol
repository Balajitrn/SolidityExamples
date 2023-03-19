pragma solidity ^0.8.0;//Version of Compiler

contract Test {
    enum PizzaSize {SMALL, MEDIUM, LARGE}
    PizzaSize choice;
    PizzaSize constant defaultChoice = PizzaSize.MEDIUM;

    function setSmall() public {
        choice = PizzaSize.SMALL;
    }

        function getChoice() public view returns (PizzaSize)
    {
        return choice;
    }
    
    function getDefaultChoice() public pure returns(uint)
    {
        return uint(defaultChoice);
    }
   
}