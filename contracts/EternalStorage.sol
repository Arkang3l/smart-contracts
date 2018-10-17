pragma solidity ^0.4.24;


contract EternalStorage {
    mapping(bytes32 => uint256) private uIntStorage;
    mapping(bytes32 => string) private stringStorage;
    mapping(bytes32 => address) private addressStorage;
    mapping(bytes32 => bytes) private bytesStorage;
    mapping(bytes32 => bytes32) private bytes32Storage;
    mapping(bytes32 => bool) private boolStorage;
    mapping(bytes32 => int256) private intStorage;

    function setAddress(bytes32 _key, address _value) external {
        addressStorage[_key] = _value;
    }

    function setUint(bytes32 _key, uint256 _value) external {
        uIntStorage[_key] = _value;
    }

    function setString(bytes32 _key, string _value) external {
        stringStorage[_key] = _value;
    }

    function setBytes(bytes32 _key, bytes _value) external {
        bytesStorage[_key] = _value;
    }

    function setBytes32(bytes32 _key, bytes32 _value) external {
        bytes32Storage[_key] = _value;
    }

    function setBool(bytes32 _key, bool _value) external {
        boolStorage[_key] = _value;
    }

    function setInt(bytes32 _key, int _value) external {
        intStorage[_key] = _value;
    }

    function deleteAddress(bytes32 _key) external {
        delete addressStorage[_key];
    }

    function deleteUint(bytes32 _key) external {
        delete uIntStorage[_key];
    }

    function deleteString(bytes32 _key) external {
        delete stringStorage[_key];
    }

    function deleteBytes(bytes32 _key) external {
        delete bytesStorage[_key];
    }

    function deleteBytes32(bytes32 _key) external {
        delete bytes32Storage[_key];
    }

    function deleteBool(bytes32 _key) external {
        delete boolStorage[_key];
    }

    function deleteInt(bytes32 _key) external {
        delete intStorage[_key];
    }

    function getAddress(bytes32 _key) external view returns (address) {
        return addressStorage[_key];
    }

    function getUint(bytes32 _key) external view returns (uint256) {
        return uIntStorage[_key];
    }

    function getString(bytes32 _key) external view returns (string) {
        return stringStorage[_key];
    }

    function getBytes(bytes32 _key) external view returns (bytes) {
        return bytesStorage[_key];
    }

    function getBytes32(bytes32 _key) external view returns (bytes32) {
        return bytes32Storage[_key];
    }

    function getBool(bytes32 _key) external view returns (bool) {
        return boolStorage[_key];
    }

    function getInt(bytes32 _key) external view returns (int256) {
        return intStorage[_key];
    }
}