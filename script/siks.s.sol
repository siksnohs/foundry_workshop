// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script, console} from "../lib/forge-std/src/Script.sol";
import {Siks} from "../src/siks.sol";

contract SiksScript is Script {
    function run() public {
        vm.startBroadcast();
        console.log("antes");
        Siks nuevo = new Siks(0xdd7bA7c1E6a86c1312a261F6c3ffBE47237dcB7c);
        console.log("despues");
        vm.stopBroadcast();
    }
}
