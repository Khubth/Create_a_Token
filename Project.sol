// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    // public variables here
    string public Tname = "Coins";
    string public Tabbrev = "CS";
    uint public Ttotal = 0;

    // mapping variable here
    mapping(address => uint) public Adresstobalance;

    // mint function
    function mint(address _address, uint _value) public {
        Ttotal += _value;
        Adresstobalance[_address] += _value;
    }

    // burn function
    function burn(address _address, uint _value) public {
        if (Adresstobalance[_address] >= _value) {
            Ttotal -= _value;
            Adresstobalance[_address] -= _value;
        }
    }
}