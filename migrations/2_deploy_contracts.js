var Token = artifacts.require("SqueezerToken");

module.exports = function(deployer) {
  deployer.deploy(Token);
};