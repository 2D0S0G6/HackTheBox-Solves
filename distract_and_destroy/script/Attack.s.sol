// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/AttackCreature.sol";
import {Script} from "../lib/forge-std/src/Script.sol";

contract Attack is Script {
    function run() public {
        vm.startBroadcast();
        Attacker attack = new Attacker(
            0xF22f6a3f7169C4202821dbc13B30E228c9Fa745f
        );

        attack.attackCreature(1000);
        attack.lootCreature();
        vm.stopBroadcast();
    }
}
