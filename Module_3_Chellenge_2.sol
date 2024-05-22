// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Challenge02 {

    uint public initial_amount;

    function deposit(uint amount) public {
        initial_amount = amount;
    }

    function convertToWei() public view returns (uint) {
        return initial_amount * 1 ether;
    }

    function convertToEther() public view returns (uint) {
        return initial_amount / 1 ether;
    }

    function convertToGwei() public view returns (uint) {
        return initial_amount / 1 gwei;
    }
}