// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract Whitelist {
    uint8 public maxWhitelistAddresses;

    mapping(address => bool) public whitelistedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {
        require(
            !whitelistedAddresses[msg.sender],
            "Your address is already in our whitelist"
        );

        require(
            numAddressesWhitelisted < maxWhitelistAddresses,
            "No more address can be whitelisted,limit reache!"
        );

        whitelistedAddresses[msg.sender] = true;

        numAddressesWhitelisted += 1;
    }
}


/*
 !Whitelis Dapp Address
Whitelist contract deployed at : 0xDEe6E21122d4F8E00271f189E522BBF79c8AfDeE
*/