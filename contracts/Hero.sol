pragma solidity ^0.8.0;

contract Hero {
    enum Class {Mage,Barb,Heal}

    mapping(address => uint[]) hadd;

    function generateRandom() public virtual view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp)));
    }
    function getS(uint hero) public pure returns (uint){
        return (hero<<2) & 0x1F;
    }
    function getH(uint hero) public pure returns (uint){
        return (hero<<22) & 0x1F;
    }
    function getD(uint hero) public pure returns (uint){
        return (hero<<7) & 0x1F;
    }
    function getI(uint hero) public pure returns (uint){
        return (hero<<12) & 0x1F;
    }
    function getM(uint hero) public pure returns (uint){
        return (hero<<17) & 0x1F;
    }
function geth() public view returns (uint[] memory){
return hadd[msg.sender];
}
    function cH(Class cl) public payable{
        require(msg.value >= 0.05 ether,"Insufficient funds");
        uint[] memory stats = new uint[](5);
        stats[0] = 2;
        stats[1] = 7;
        stats[2] = 12;
        stats[3] = 17;
        stats[4] = 22;

        uint l = 5;
        uint hero = uint (cl);

        do{
            uint pos = generateRandom()%l;
            uint val = generateRandom()%(13+l) +1;

            hero |= val<<stats[pos];
            l--;
            stats[pos] = stats[l];
        }
        while(l>0);
        hadd[msg.sender].push(hero);
    }
}
