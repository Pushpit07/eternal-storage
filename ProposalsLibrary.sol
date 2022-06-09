// contracts/ProposalsLibrary.sol
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./EternalStorage.sol";

library ProposalsLibrary {
    function getProposalCount(address _storageContract)
        public
        view
        returns (uint256)
    {
        return
            EternalStorage(_storageContract).getUIntValue(
                keccak256("ProposalCount")
            );
    }

    function addProposal(address _storageContract, bytes memory _name) public {
        uint256 idx = getProposalCount(_storageContract);

        EternalStorage(_storageContract).setBytesValue(
            keccak256(abi.encodePacked("proposal_name", idx)),
            _name
        );
        EternalStorage(_storageContract).setUIntValue(
            keccak256(abi.encodePacked("proposal_eth", idx)),
            0
        );
        EternalStorage(_storageContract).setUIntValue(
            keccak256("ProposalCount"),
            idx + 1
        );
    }
}
