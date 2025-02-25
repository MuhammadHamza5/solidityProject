// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
contract organization{
    struct Campaign{
        uint owner;
        string name;
        string description;
        uint256 fund_required;
        uint256 recive_amount;
        string image;
        uint256 deadLine;
    }
    mapping(uint256 => Campaign) public  Campaigns;
    uint256 public  numOfListCampaign = 0;

    function createCampaign(
        uint _owner,
        string memory _name,
        string memory _description,
        uint256 _fund_required,
        uint256 _recive_amount,
        string memory _image,
        uint256 _deadLine
    ) public  returns (bool){
        Campaign newCampaign = Campaigns[numOfListCampaign];
        
        newCampaign.owner = _owner;
        newCampaign.name=_name;
        newCampaign.description = _description;
        newCampaign.fund_required =  _fund_required;
        newCampaign.recive_amount  = _recive_amount;
        newCampaign.image = _image;
        newCampaign.deadLine=_deadLine;
        Campaigns[numOfListCampaign] =newCampaign;
        numOfListCampaign++;
    }


    }
}