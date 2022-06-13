// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Creating a hotel room smart contract
contract HotelRoom {
    enum Statuses {
        Vacant,
        Occupied
    }
    Statuses public currentStatus;

    event Occupy(address _occupant, uint _value);

    address payable owner;

    constructor() {
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }

    function book() payable {
        currentStatus = Statuses.Occupied;
        (bool sent, bytes memory data) = owner.call{msg.value}("");
        require(sent);
        emit Occupy(msg.sender, msg.value);
    }
}