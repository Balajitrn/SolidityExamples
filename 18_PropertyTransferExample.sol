//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract PropertyTransferApp{
    address contractOwner;
    struct Property{
        uint256 id;
        string name;
        address owner;
        uint256 value;
        uint256 area;
    }
    mapping(uint256=>Property) properties;
    function addProperty(uint256 _id,
    string memory _name,
    uint256 _value,
    uint256 _area) public {
        properties[_id].name=_name;
        properties[_id].owner=msg.sender;
        properties[_id].value=_value;
        properties[_id].area=_area;
   }
   function queryPropertybyId(uint256 _id) public view returns(string memory name,
   address owner, uint256 area, uint256 value)
   {
       return (
           properties[_id].name,properties[_id].owner, 
           properties[_id].area, properties[_id].value);
   }
   function transferPropertyOwnership(uint256 _id,address _newowner) public {
       properties[_id].owner=_newowner;
   }
   
}