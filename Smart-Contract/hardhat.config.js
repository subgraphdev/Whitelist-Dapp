require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config({path:".env"});

module.exports = {
  solidity: "0.8.5",
  networks:{
    goerli: {
      url: process.env.API_KEY,
      accounts: [process.env.PRIVATE_KEY]
    }
  }
};
