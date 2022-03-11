pragma solidity ^0.8.0;

contract Hero {
    enum Class {Mage,Barb,Heal}
    function cH(Class cl) public payable{
        require(msg.value >= 0.05 ether,"Insufficient funds");
    }
}
