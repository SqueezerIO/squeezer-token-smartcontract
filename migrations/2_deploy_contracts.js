var Token = artifacts.require("SqueezerTestToken20");

module.exports = function(deployer) {
  deployer.deploy(Token);
};