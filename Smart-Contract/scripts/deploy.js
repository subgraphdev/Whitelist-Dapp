
const hre = require("hardhat");

async function main() {

  const contractFactory= await hre.ethers.getContractFactory("Whitelist");
  const contract= await contractFactory.deploy(10);

  await contract.deployed();

  console.log(
    `Whitelist contract deployed at : ${contract.address}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
.then(() => process.exit(0))
.catch((err) => {
  console.error(err);
  process.exit(1);
})
