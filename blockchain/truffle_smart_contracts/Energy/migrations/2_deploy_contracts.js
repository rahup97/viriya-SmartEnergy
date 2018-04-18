var SmartToken = artifacts.require("./SmartEnergy.sol");

module.exports = function(deployer) {
    deployer.deploy(SmartToken);
};
