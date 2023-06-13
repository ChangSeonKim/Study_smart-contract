// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract StringArray {
    // Several ways to initialize an array
    string[] public array = ["A","B","C","D","F"];

     function set(string memory _word) public{
        array.push(_word);
        }
    function get(uint _i) public view returns (string memory) {
        return array[_i];
    }

    
}

