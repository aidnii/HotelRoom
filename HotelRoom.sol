// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Creating a hotel room smart contract
contract HotelRoom {
    address payable owner;

    constructor() {
        owner = msg.sender;
    }

    function book() {
        owner.transfer(msg.value);
    }
}