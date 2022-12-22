const hre = require('hardhat');

// npx hardhat run --network alfajores scripts/verify.js
async function main() {
    const oweOwner = '0x809e995d0F57B7d5E57CAA65a21b889689D06F77';

    await hre.run('verify:verify', {
        address: '0x7D2C52dCd9eAC2394E32B2c7f7a5cbC26c4bB82b',
        constructorArguments: [oweOwner],
    });
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
