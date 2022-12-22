const hre = require('hardhat');

// npx hardhat run --network goerli scripts/deploy.js
async function main() {
    const oweOwner = '0x809e995d0F57B7d5E57CAA65a21b889689D06F77';

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
