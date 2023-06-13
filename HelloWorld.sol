// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract HelloWorld {
    string greet = "HelloWorld";                    
    

    
    function hello() public view returns (string memory) {

        return greet ; 
    }

    
}