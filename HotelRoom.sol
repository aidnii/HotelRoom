// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Creating a hotel room smart contract
contract HotelRoom {
    enum Statuses {
        Vacant,
        Occupied
    }
    Statuses public currentStatus;

    address payable owner;

    constructor() {
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }

    function book() {
        currentStatus = Statuses.Occupied;
        (bool sent, bytes memory data) = owner.call{msg.value}("");
        require(sent);
    }
}