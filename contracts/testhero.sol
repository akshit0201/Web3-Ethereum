pragma solidity ^0.8.0;
import "./Hero.sol";

contract testhero is Hero{
    uint random;
    function generateRandom() public override view returns (uint) {
        return random;
    }
    function setRan(uint r) public {
        random = r;
    }
}
