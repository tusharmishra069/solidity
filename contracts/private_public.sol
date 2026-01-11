// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {

    uint public  count;   // private variable

    // Increase counter
    function increment() public {
        count += 1;
    }

    // Read counter (controlled access)
    function getCount() public view returns(uint) {
        return count;
    }
}
// [.   not showing the count in the private 
// 	{
// 		"inputs": [],
// 		"name": "getCount",
// 		"outputs": [
// 			{
// 				"internalType": "uint256",
// 				"name": "",
// 				"type": "uint256"
// 			}
// 		],
// 		"stateMutability": "view",
// 		"type": "function"
// 	},
// 	{
// 		"inputs": [],
// 		"name": "increment",
// 		"outputs": [],
// 		"stateMutability": "nonpayable",
// 		"type": "function"
// 	}
// ]


// [
// 	{
// 		"inputs": [],
// 		"name": "count", showing the count in the public 
// 		"outputs": [
// 			{
// 				"internalType": "uint256",
// 				"name": "",
// 				"type": "uint256"
// 			}
// 		],
// 		"stateMutability": "view",
// 		"type": "function"
// 	},
// 	{
// 		"inputs": [],
// 		"name": "getCount",
// 		"outputs": [
// 			{
// 				"internalType": "uint256",
// 				"name": "",
// 				"type": "uint256"
// 			}
// 		],
// 		"stateMutability": "view",
// 		"type": "function"
// 	},
// 	{
// 		"inputs": [],
// 		"name": "increment",
// 		"outputs": [],
// 		"stateMutability": "nonpayable",
// 		"type": "function"
// 	}
// ]