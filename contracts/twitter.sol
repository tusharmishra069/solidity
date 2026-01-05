// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

 // 1. create a twitter contract
 // 2. create a mapping between user and tweet
 // 3. add function to create a tweet and save it in mapping 
 // 4. create a function to get tweet

 contract Twitter {

    // Mapping to store tweets
    // Key   → user's Ethereum address
    // Value → tweet (string) posted by that user
    mapping(address => string[]) public tweets;

    // Function to create or update a tweet
    // 'public' allows any user to call this function
    // '_tweet' is stored in memory because it is a temporary input
    function createTweet(string memory _tweet) public {

        // msg.sender represents the address of the user calling this function
        // Stores the tweet against the sender's address
        // If the user tweets again, the old tweet is overwritten
        tweets[msg.sender].push(_tweet);
    }

    // Function to read a tweet of any user
    // 'view' means this function does not modify blockchain state
    // Takes a user's address as input
    // Returns the tweet associated with that address
    function getTweet(address _user, uint _i) public view returns (string memory) {

        // Fetches and returns the tweet from the mapping
        return tweets[_user][_i];
    }

    function gettweetall(address _user) public view returns(string[] memory){
        return tweets[_user];
    }
}