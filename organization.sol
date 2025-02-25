// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
contract organization{
    struct Campaign{
        uint id;
        string name;
        string description;
        string fund_required;
        string recive_amount;
        string image;
    }
    mapping(uint256 => Campaign) public  Campaigns;
    uint256 public  numOfListCampaign = 0;
}