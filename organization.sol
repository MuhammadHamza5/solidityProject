// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Organization {
    struct Campaign {
        address owner;
        string name;
        string description;
        uint256 fund_required;
        uint256 recive_amount;
        string image;
        uint256 deadLine;
    }

    mapping(uint256 => Campaign) public Campaigns;
    uint256 public numOfListCampaign = 0;

    event campaignCreateSuccess  (string _message , address _owner );

    // Function to create a new campaign
    function createCampaign(
        address _owner,
        string memory _name,
        string memory _description,
        uint256 _fund_required,
        uint256 _recive_amount,
        string memory _image,
        uint256 _deadLine
    ) public returns (bool) {

        require(_fund_required > 0,"Fund required must be greater than 0");
        require(_deadLine > block.timestamp,"Deadline must be after current time");

        Campaign memory newCampaign = Campaign({
            owner: _owner,
            name: _name,
            description: _description,
            fund_required: _fund_required,
            recive_amount: _recive_amount,
            image: _image,
            deadLine: _deadLine
        });

        Campaigns[numOfListCampaign] = newCampaign;
        numOfListCampaign++;
        emit campaignCreateSuccess("Campaign Create Successfully" , _owner);
        return true; // Returning true upon successful campaign creation
    }
}
