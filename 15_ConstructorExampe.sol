//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SLParticipants {
    address public owner;
    constructor() public{
        owner=msg.sender;
    }
    modifier OnlySL()
    {
        require(msg.sender==owner);
        _;
    }

    struct Participant{
        string Pname;
        uint Page;
        uint Pphoneno;
        string Pemail;
        string courseenrolled;
        bool feepaid;
}
mapping(uint=>Participant) SParticipants;//Sparticipants is a Object

function addParticipant(uint key,string memory _name,uint _age,uint _phoneno, 
string memory _email, string memory _courseenrolled, bool _feepaid) public OnlySL
{
    SParticipants[key].Pname= _name;
    SParticipants[key].Page= _age;
    SParticipants[key].Pphoneno= _phoneno;
    SParticipants[key].Pemail= _email;
    SParticipants[key].courseenrolled= _courseenrolled;
    SParticipants[key].feepaid= _feepaid;
}

}