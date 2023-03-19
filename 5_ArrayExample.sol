pragma solidity ^0.8.0;//Version of Compiler

contract Test { // Name of Contract
    string ins_name;//
    bool registered;
    string[] name;
    uint[] age;
    function setInstDetails(string memory _ins_name,bool _registered) public {
        ins_name= _ins_name;
        registered =_registered;
    }// First Function
    function setStudentDetails(string memory _name, uint _age) public{
        name.push(_name);
        age.push(_age);
    }// 2nd Function
    function getStudentDetails(uint _index) public view returns(string memory, uint)
    {
        return (name[_index], age[_index]);
    }//3rd Function


}