# Mabesi NFT Collection

**[🇧🇷 Leia em Português](README-PT.md)**

A complete ERC721 NFT smart contract implementation built with OpenZeppelin contracts and Hardhat development environment.

## :speech_balloon: Description

Mabesi NFT Collection is a production-ready NFT smart contract that implements the ERC721 standard with advanced features including enumeration, URI storage, and burnable tokens. Built on top of battle-tested OpenZeppelin contracts, this project provides a solid foundation for creating and managing NFT collections on Ethereum and EVM-compatible blockchains.

The contract features automatic token ID management, customizable metadata URIs, and comprehensive test coverage to ensure reliability and security.

## Table of Contents

- [Features](#features)
- [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Configuration](#configuration)
  - [Usage](#usage)
  - [Testing](#testing)
  - [Deployment](#deployment)
- [Contract Details](#contract-details)
- [Back Matter](#back-matter)
  - [Acknowledgements](#acknowledgements)
  - [Contributing](#contributing)
  - [Authors & Contributors](#authors--contributors)
  - [Legal Disclaimer](#legal-disclaimer)
  - [License](#license)

## Features

- **ERC721 Standard Compliance**: Full implementation of the ERC721 NFT standard
- **Enumerable Extension**: Track and enumerate all tokens and tokens owned by each address
- **URI Storage**: Flexible metadata management with customizable token URIs
- **Burnable Tokens**: Token holders can burn (destroy) their tokens
- **Auto-incrementing Token IDs**: Automatic token ID management using OpenZeppelin Counters
- **Custom Base URI**: Centralized metadata hosting with customizable base URI
- **Comprehensive Test Suite**: 100% test coverage with 15+ test cases
- **Type-Safe Development**: Full TypeScript support with Hardhat and ethers.js

## Built With

- [Solidity ^0.8.17](https://soliditylang.org/) - Smart contract programming language
- [Hardhat ^2.17.0](https://hardhat.org/) - Ethereum development environment
- [OpenZeppelin Contracts ^4.9.2](https://openzeppelin.com/contracts/) - Secure smart contract library
- [TypeScript](https://www.typescriptlang.org/) - Type-safe development
- [Ethers.js](https://docs.ethers.org/) - Ethereum library for contract interaction
- [Chai](https://www.chaijs.com/) - Testing framework

## Getting Started

### Prerequisites

- Node.js >= 16.0.0
- npm or yarn package manager
- Git

### Installation

1. Clone the repository:
```bash
git clone https://github.com/mabesi/mabesi-nft-collection.git
cd mabesi-nft-collection
```

2. Install dependencies:
```bash
npm install
```

### Configuration

The project uses Hardhat's default configuration. The contract is configured to compile with Solidity version 0.8.19.

To customize the deployment or add network configurations, edit `hardhat.config.ts`:

```typescript
import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

const config: HardhatUserConfig = {
  solidity: "0.8.19",
  // Add your network configurations here
};

export default config;
```

### Usage

#### Compile the contracts:
```bash
npx hardhat compile
```

#### Run the test suite:
```bash
npx hardhat test
```

#### Check test coverage:
```bash
npx hardhat coverage
```

### Testing

The project includes a comprehensive test suite covering all contract functionalities:

- Token minting
- Token burning (owner, approved, and approved for all)
- Token transfers
- Approval mechanisms
- Metadata URI management
- Event emissions
- Permission validations

Run tests with:
```bash
npx hardhat test
```

### Deployment

Deploy the contract to a network:

```bash
npx hardhat run scripts/deploy.ts --network <network-name>
```

For local testing:
```bash
npx hardhat node
npx hardhat run scripts/deploy.ts --network localhost
```

## Contract Details

### MabesiNFT Contract

**Name**: MabesiNFT  
**Symbol**: MBFT  
**Base URI**: `https://mabesinftcollection.com/nft/`

#### Key Functions

- `mint()`: Mint a new NFT to the caller's address
- `burn(uint256 tokenId)`: Burn (destroy) a token
- `tokenURI(uint256 tokenId)`: Get the metadata URI for a token
- `balanceOf(address owner)`: Get the number of tokens owned by an address
- `ownerOf(uint256 tokenId)`: Get the owner of a specific token
- `transferFrom(address from, address to, uint256 tokenId)`: Transfer a token
- `approve(address to, uint256 tokenId)`: Approve an address to transfer a token
- `setApprovalForAll(address operator, bool approved)`: Approve an operator for all tokens

#### Inherited Contracts

- `ERC721`: Base NFT implementation
- `ERC721Enumerable`: Token enumeration functionality
- `ERC721URIStorage`: Flexible URI management
- `ERC721Burnable`: Token burning capability

## Back Matter

### Acknowledgements

- [OpenZeppelin](https://openzeppelin.com/) for providing secure and audited smart contract libraries
- [Hardhat](https://hardhat.org/) team for the excellent development environment
- The Ethereum community for continuous innovation

### Contributing

Contributions are welcome! Please follow these steps:

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Add your changes: `git add .`
4. Commit your changes: `git commit -am 'Add some feature'`
5. Push to the branch: `git push origin my-new-feature`
6. Submit a pull request :sunglasses:

### Authors & Contributors

| [<img loading="lazy" src="https://github.com/mabesi.png" width=115><br><sub>Plinio Mabesi</sub>](https://github.com/mabesi) |
| :---: |

### Legal Disclaimer

<p align="justify">The use of this tool, for any purpose, will occur at your own risk, being your sole responsibility for any legal implications arising from it.</p>
<p align="justify">It is also the end user's responsibility to know and obey all applicable local, state and federal laws. Developers take no responsibility and are not liable for any misuse or damage caused by this program.</p>

### License

This project is licensed under the [MIT License](LICENSE).