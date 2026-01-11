// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.13;

contract gg{
    uint public state_var;

    function setter() public{
        state_var = 2;
    }

    function getter() public view returns(uint){
        return state_var;
    }

    function purefunction() public pure{
        uint local_var;
        local_var = 1;
    }
}