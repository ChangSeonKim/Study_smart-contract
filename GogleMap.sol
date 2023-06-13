// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.6 <0.9.0; 




contract  LocationPath { 

     struct Path {
        int lat;
        int lon;
    }

    
    


    mapping(string => Path[]) public myMap;
    mapping(bytes32 =>uint[]) public nested;




    function push(string memory _id, int _lat, int _lon, uint _grade) public returns (uint) {
        // 3 ways to initialize a struct
        // - calling it like a function

        bytes32 hash = keccak256(abi.encodePacked(_lat, _lon));
        
        nested[hash].push(_grade);

        myMap[_id].push(Path(_lat,_lon));

        return nested[hash].length;

    
    }

    function get( int _lat, int _lon) public view returns (uint) {

         bytes32 hash = keccak256(abi.encodePacked(_lat, _lon));

        uint sum =0;

        for(uint a ; a < nested[hash].length ; a++) {
            sum += nested[hash][a];
        }

        uint avg = sum / nested[hash].length ;

        return avg;


    }


    function remove(string memory _addr1) public {
        delete myMap[_addr1];
    }



}