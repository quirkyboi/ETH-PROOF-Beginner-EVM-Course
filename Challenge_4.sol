// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Challenge4 {
    
    function add(uint a, uint b) external pure returns (uint) {
        return a + b;
    }

    function subtract(uint a, uint b) external pure returns (uint) {
        if(a >= b){
            return a - b;
        } else {
            return 0;
        }
    }

    function multiply(uint a, uint b) external pure returns (uint) {
        return a * b;
    }

    function divide(uint a, uint b) external pure returns (uint) {
        if(a >= b){
            return a / b;
        } else {
            return 0;
        }
    }
}
