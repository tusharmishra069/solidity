// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract AgeVerification {

    function verifyAge(uint age) public pure returns (string memory) {
        require(age >= 18, "Access denied: Age must be 18+");
        return "Access granted";
    }
}
