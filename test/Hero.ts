import "@nomiclabs/hardhat-ethers";
import {ethers} from "hardhat";
import {expect} from "chai";
describe("Hero",function (){
    async function ch(){
        const Hero = await ethers.getContractFactory("testhero");
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

    it("should generate the right stats",async function (){
        let e;
        try{
            hero = await ch();
            await hero.setRan(69);
            await hero.cH(0,{
                value: ethers.utils.parseEther("0.06")
            })
            const heros = (await hero.geth())[0];
            // [ S , D , I , M , H]
            // [ S , D , I , M]
            // [ S , M , I , M]
            // [ S , M , I]ro
            expect(await hero.getH(heros)).to.equal(16);
            expect(await hero.getD(heros)).to.equal(2);

        }
        catch (err){
            e = err;
        }
    })
})
