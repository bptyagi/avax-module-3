# MyToken Contract

## Overview

MyToken is an ERC-20 token written in Solidity. It is a standard fungible token with additional burning and minting functionalities. The contract uses the OpenZeppelin library to implement ERC-20 and ERC-20 Burnable features.

## Features

- **Name**: Bipin
- **Symbol**: BPT
- **Decimals**: 18

## Prerequisites

- Solidity ^0.8.20
- OpenZeppelin Contracts 5.0.1

## Contract Details
Constructor
The constructor initializes the token with an initial supply of 1 token, minted to the contract deployer (msg.sender), and sets the owner to the specified address.

### Minting
The mint_BPT function allows the owner to mint new tokens and assign them to a specific address.

### Burning
The burn_BPT function allows the owner to burn existing tokens from a specific address.
