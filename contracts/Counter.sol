pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Counter {
    uint private counter;
    event cI(uint counter);
    function count() public {
        counter++;
        console.log("counter", counter);
        emit cI(counter);
    }

    function getCounter() public view returns (uint){
        return counter;
    }
}
