import "@nomiclabs/hardhat-ethers";
import {ethers} from "hardhat";
import {expect} from "chai";
describe("Hero",function (){
    async function ch(){
        const Hero = await ethers.getContractFactory("Hero");
        const h = await Hero.deploy();
        await h.deployed();
        return h;
    }
    let hero;
    before(async function (){
        hero = await ch()
    })
    it("should get zero hero array",async function (){
        expect(await hero.geth()).to.deep.equal([])
    })
    it("should fail due to insufficient funds",async function (){
        let e;
        try{
            await hero.cH(0,{
                value: ethers.utils.parseEther("0.03")
            })
        }
        catch (err){
            e = err;
        }
        expect(e.message.includes("Insufficient")).to.equal(true)
    })
})
