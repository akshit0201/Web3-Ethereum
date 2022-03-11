pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Counter {
    uint private counter;
    function count() public {
        counter++;
        console.log("counter", counter);
    }

    function getCounter() public view returns (uint){
        return counter;
    }
}
