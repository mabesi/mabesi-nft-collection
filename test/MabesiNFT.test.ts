import { loadFixture } from "@nomicfoundation/hardhat-toolbox/network-helpers";
import { expect } from "chai";
import { ethers } from "hardhat";

describe("MabesiNFT", function () {

  async function deployFixture() {
    const [owner, user] = await ethers.getSigners();
    const MabesiNFT = await ethers.getContractFactory("MabesiNFT");
    const cc = await MabesiNFT.deploy();
    return { cc, owner, user };
  }

  it("Should... ", async function () {
    const { cc, owner, user } = await loadFixture(deployFixture);

    //expect().to.equal();
  });

}); // End Describe
