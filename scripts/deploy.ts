import { ethers } from "hardhat";

async function main() {

  const MabesiNFT = await ethers.getContractFactory("MabesiNFT");
  const cc = await MabesiNFT.deploy();

  await cc.deployed();

  console.log(`Mabesi NFT contract was deployed at ${cc.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
