//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;//Version of Compiler

contract SLParticipants {
    struct Participant{
        string Pname;
        uint Page;
        uint Pphoneno;
        string Pemail;
        string courseenrolled;
        bool feepaid;
}
//mapping(key=>value) mappingname
mapping(uint=>Participant) SParticipants;//Sparticipants is a Object

function addParticipant(uint key,string memory _name,uint _age,uint _phoneno, string memory _email, string memory _courseenrolled, bool _feepaid) public
{
    SParticipants[key].Pname= _name;
    SParticipants[key].Page= _age;
    SParticipants[key].Pphoneno= _phoneno;
    SParticipants[key].Pemail= _email;
    SParticipants[key].courseenrolled= _courseenrolled;
    SParticipants[key].feepaid= _feepaid;
}
function getParticipant(uint key) public view returns (Participant memory)
{
    return(SParticipants[key]);
}
}