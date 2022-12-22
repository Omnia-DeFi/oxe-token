const hre = require('hardhat');

// npx hardhat run --network alfajores scripts/verify.js
async function main() {
    const oweOwner = '0xd82a0022ad5b6c239b4750971e66a563114faebb';

    await hre.run('verify:verify', {
        address: '0x7A1fe0926Fa74ee34202c8F4fcb6fed35d858CaC',
        constructorArguments: [oweOwner],
    });
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
