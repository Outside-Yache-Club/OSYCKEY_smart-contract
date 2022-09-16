const OSYCKEY = artifacts.require("OSYCKEY");

contract("OSYC KEY", async (accounts) => {
  const deployer = accounts[0];
  let instanceOSYCKEY;

  before(async () => {
    instanceOSYCKEY = await OSYCKEY.new({ from: deployer });
  });

  describe("NFT MINT TEST", () => {
    it("set config", async () => {
      await instanceOSYCKEY.setConfig(0, 6000, { from: deployer });
      await instanceOSYCKEY.setConfig(1, 1000, { from: deployer });

      const supply1 = await instanceOSYCKEY.MAX_SUPPLY(0);
      const supply2 = await instanceOSYCKEY.MAX_SUPPLY(1);

      assert.equal(supply1, 6000);
      assert.equal(supply2, 1000);
    });

    it("Mint NFT", async () => {
      await instanceOSYCKEY.setPublicSale(true, { from: deployer });

      await instanceOSYCKEY.mintKeyPublic(0, { from: accounts[2] });
      const balance1 = await instanceOSYCKEY.balanceOf(accounts[2], 0);

      await instanceOSYCKEY.mintKeyPublic(1, { from: accounts[2] });
      const balance2 = await instanceOSYCKEY.balanceOf(accounts[2], 0);

      assert.equal(balance1, 1);
      assert.equal(balance2, 1);
    });
  });
});