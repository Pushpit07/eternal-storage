// contracts/Organisation.sol
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./ProposalsLibrary.sol";

contract Organisation {
    using ProposalsLibrary for address;
    address public eternalStorage;

    constructor(address _eternalStorage) {
        eternalStorage = _eternalStorage;
    }

    function addProposal(bytes memory _name) public {
        eternalStorage.addProposal(_name);
    }
}
