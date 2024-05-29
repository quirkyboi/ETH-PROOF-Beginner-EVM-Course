// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

contract simpleContract {

// Four variables - 
    int public a;
    string public b;
    bool public c;
    address public d;

// get and set functions - 
    function aa(int value_for_a) public returns(int){
        a = value_for_a;
        return a;
    }

    function bb(string memory value_for_b) public returns (string memory){
        b = value_for_b;
        return b;
    }

    function cc(bool value_for_c) public returns (bool){
        c = value_for_c;
        return c;
    }

    function dd(address value_for_d) public returns (address){
        d = value_for_d;
        return d;
    }
}
