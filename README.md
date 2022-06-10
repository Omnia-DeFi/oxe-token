# <h1 align="center"> Foundryx Hardhat Template </h1>

Merging 2 repos: [foundry-rs/hardhat-foundry-template](https://github.com/foundry-rs/hardhat-foundry-template) + [abigger87/femplate](https://github.com/abigger87/femplate)

---

## First time with Forge/Foundry?

### Installation

1. Install `foundryup` (toolchain installer):

```bash
curl -L https://foundry.paradigm.xyz | bash
```

2. Trigger foundry installation:

```bash
foundryup
```

**🎉 Foundry is installed! 🎉** <br>

_Anytime you need to get the latest `forge` or `cast` binaries,
you can run `foundryup`._

### Overview: Foundry 🆚 HardHat

1. Tests are run way faster with Foundry than HardHat: [how fast?](https://github.com/foundry-rs/foundry#how-fast)
2. Comes with a number of advanced testing methods: `Fuzz Testing & Differential Testing` _(incoming: Invariant Testing, Symbolic Execution & Mutation Testing)_
3. Tests written **only** in **solidity**

_Notes: If for a specific case/scenario needs to be written in JS/TS you will need to use HardHat (along side Foundry)_

---

## Getting Started

Update git submodules & install repo's forge libraries

```
git submodule update --init --recursive
forge install
```

### Writing Tests with Foundry

Create a test file for your contract in the `src/tests/` directory.

To learn more about writing tests in Solidity for Foundry, reference Rari Capital's [solmate](https://github.com/Rari-Capital/solmate/tree/main/src/test) repository created by [@transmissions11](https://twitter.com/transmissions11).

### Features

Running Tests

```
forge test
```

Install libraries with Foundry which work with Hardhat

```
forge install rari-capital/solmate # Already in this repo
```

Updating a library

```
forge update lib/<dep>
```

Removing a library

```
forge update lib/<dep>
```

### HardHat compatibility

Whenever you install new libraries using Foundry, make sure to update your `remappings.txt`.

Follow steps [here](https://book.getfoundry.sh/config/hardhat.html) to enable HardHat compatibility

# Formatting

## Why Husky

Husky allows to manage git hooks and trigger actions when commiting, e.g. `npx prettier writte .`

## Create a hook on commits

```
npx husky add .husky/pre-commit "npm test"
git add .husky/pre-commit
```

_reference: [doc](https://typicode.github.io/husky/#/?id=create-a-hook)_

Some specific package might need specific hooks:

```
npx husky add .husky/commit-msg 'npx --no commitlint --edit "$1"'
```

_reference: [doc](https://typicode.github.io/husky/#/?id=automatic-recommended)_


---
## Miscellaneous
### IDE interactive rebase
In order to rebase interactively in your IDE (e.g. VSCode), copy this in your terminal:
```
git config --global core.editor "code --wait"
```
