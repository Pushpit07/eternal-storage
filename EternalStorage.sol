// contracts/EternalStorage.sol
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract EternalStorage {
    mapping(bytes32 => uint256) UIntStorage;

    function getUIntValue(bytes32 record) public view returns (uint256) {
        return UIntStorage[record];
    }

    function setUIntValue(bytes32 record, uint256 value) public {
        UIntStorage[record] = value;
    }

    mapping(bytes32 => string) StringStorage;

    function getStringValue(bytes32 record)
        public
        view
        returns (string memory)
    {
        return StringStorage[record];
    }

    function setStringValue(bytes32 record, string memory value) public {
        StringStorage[record] = value;
    }

    mapping(bytes32 => address) AddressStorage;

    function getAddressValue(bytes32 record) public view returns (address) {
        return AddressStorage[record];
    }

    function setAddressValue(bytes32 record, address value) public {
        AddressStorage[record] = value;
    }

    mapping(bytes32 => bytes) BytesStorage;

    function getBytesValue(bytes32 record) public view returns (bytes memory) {
        return BytesStorage[record];
    }

    function setBytesValue(bytes32 record, bytes memory value) public {
        BytesStorage[record] = value;
    }

    mapping(bytes32 => bool) BooleanStorage;

    function getBooleanValue(bytes32 record) public view returns (bool) {
        return BooleanStorage[record];
    }

    function setBooleanValue(bytes32 record, bool value) public {
        BooleanStorage[record] = value;
    }

    mapping(bytes32 => int256) IntStorage;

    function getIntValue(bytes32 record) public view returns (int256) {
        return IntStorage[record];
    }

    function setIntValue(bytes32 record, int256 value) public {
        IntStorage[record] = value;
    }
}
