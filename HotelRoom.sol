// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Creating a hotel room smart contract
contract HotelRoom {
    enum Statuses {
        Vacant,
        Occupied
    }

    address payable owner;

    constructor() {
        owner = msg.sender;
    }

    function book() {
        (bool sent, bytes memory data) = owner.call{msg.value}("");
        require(sent);
    }
}