const HelloWorld = artifacts.require("HelloWorld");
const ERC721 = artifacts.require("ERC721");

module.exports = function (deployer) {
  // 첫번째 파라미터는 배포할 솔리디티 파일을 명시
  // 두번째 파라미터는 HelloWorld.sol의 생성자의 매개변수에 전달한다. 
  deployer.deploy(HelloWorld, "Hello World!!");
  deployer.deploy(ERC721, "NFT", "symbol"); 
};