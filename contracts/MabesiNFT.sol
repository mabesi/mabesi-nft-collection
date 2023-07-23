// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// OpenZeppelin Libraries ===========================
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
//import "@openzeppelin/contracts/access/Ownable.sol";
//import "@openzeppelin/contracts/access/AccessControl.sol";
//import "@openzeppelin/contracts/security/Pausable.sol";

contract MabesiNFT is ERC721, ERC721Enumerable, ERC721URIStorage, ERC721Burnable {

    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;
    
    constructor() ERC721("MabesiNFT", "MBFT") {

    }

    function mint() public {
        _tokenIdCounter.increment();
        uint256 tokenId = _tokenIdCounter.current();
        _safeMint(msg.sender, tokenId);
        _setTokenURI(tokenId, Strings.toString(tokenId));
    }

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize) internal override(ERC721, ERC721Enumerable) {
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }    

    function _baseURI() internal pure override returns (string memory) {
        return "https://mabesinftcollection.com/nft/";
    }

    function tokenURI(uint256 tokenId) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        return string.concat(super.tokenURI(tokenId),".json");
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721Enumerable, ERC721URIStorage) returns (bool) {

        return super.supportsInterface(interfaceId);
    }
}
