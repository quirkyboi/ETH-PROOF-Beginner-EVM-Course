// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyToken {

    // Public variables
    string public name = "MyToken";
    string public symbol = "TOK";
    uint public totalSupply = 0;

    // Mapping of addresses to balances
    mapping(address => uint) public balances;

    // Mint function
    function mint(address receiver, uint amount) public {          // accepts two parameters that are 'address' & 'amount' to be added to respective account/address.
        totalSupply = totalSupply + amount;
        balances[receiver] = balances[receiver] + amount;
    }

    // Burn function
    function burn(address sender, uint amount) public {            // accepts two parameters that are 'address' & 'amount' to burn from respective account/address.
        require(balances[sender] >= amount, "Insufficient balance to burn");            // this require condition checks if sender has enough money to share.
        
        totalSupply = totalSupply + amount;
        balances[sender] = balances[sender] - amount;
    }
}
