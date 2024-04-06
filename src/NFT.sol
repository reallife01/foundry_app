// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

contract NFT is ERC721 {
    uint256 public currentTokenId;
    
    // The following will create an ERC721 Token called Lisk.
    constructor() ERC721("Lisk", "LSK") {}

    // For simplicity, we will only implement the mint function of the Lisk token.
    function mint(address recipient) public payable returns (uint256) {
        uint256 newItemId = ++currentTokenId;
        _safeMint(recipient, newItemId);
        return newItemId;
    }
}