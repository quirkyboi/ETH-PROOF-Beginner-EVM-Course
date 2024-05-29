# <h1 style="font-size: 2.5em;">MyToken</h1>

<p style="font-size: 1.2em;">This Solidity program is a simple token contract that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how it works.</p>

## <h2 style="font-size: 2em;">Description</h2>

<p style="font-size: 1.2em;">This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract implements a basic token with mint and burn functionalities. This program serves as a simple and straightforward introduction to Solidity programming and can be used as a stepping stone for more complex projects in the future.</p>

## <h2 style="font-size: 2em;">Getting Started</h2>

### <h3 style="font-size: 1.5em;">Executing program</h3>

<p style="font-size: 1.2em;">To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at <a href="https://remix.ethereum.org/">Remix Ethereum</a>.</p>

<p style="font-size: 1.2em;">Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:</p>

```solidity
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
    function mint(address receiver, uint amount) public {
        totalSupply = totalSupply + amount;
        balances[receiver] = balances[receiver] + amount;
    }

    // Burn function
    function burn(address sender, uint amount) public {
        require(balances[sender] >= amount, "Insufficient balance to burn");
        
        totalSupply = totalSupply - amount;
        balances[sender] = balances[sender] - amount;
    }
}
```
<p style="font-size: 1.2em;">To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.7" (or another compatible version), and then click on the "Compile MyToken.sol" button.</p>
<p style="font-size: 1.2em;">Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.</p>
<p style="font-size: 1.2em;">Once the contract is deployed, you can interact with it by calling the <code>mint</code> and <code>burn</code> functions. Click on the "MyToken" contract in the left-hand sidebar, and then use the input fields to specify the parameters for the <code>mint</code> and <code>burn</code> functions. Finally, click on the respective buttons to execute the functions.</p>
<h2 style="font-size: 2em;">Authors</h2>
<p style="font-size: 1.2em;">Nitesh </p>
<h2 style="font-size: 2em;">License</h2>
<p style="font-size: 1.2em;">This project is licensed under the MIT License</p>

