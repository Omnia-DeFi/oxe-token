const hre = require('hardhat');

// npx hardhat run --network goerli scripts/deploy.js
async function main() {
    const oweOwner = '0xd82a0022ad5b6c239b4750971e66a563114faebb';

    const Oxe = await hre.ethers.getContractFactory('OXE');
    const oxe = await Oxe.deploy(oweOwner);

    await oxe.deployed();

    console.log(`Deployed to ${oxe.address}`);

    await hre.run('verify:verify', {
        address: oxe.address,
        constructorArguments: [oweOwner],
    });
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
