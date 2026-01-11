// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract enumdemo{

    enum status{ pending ,  verified, rejected}

    status public st;

    constructor(){
        st = status.rejected;
    }

}