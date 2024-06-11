// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test, console} from "../lib/forge-std/src/Test.sol";
import {Siks} from "../src/siks.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract SiksTest is Test, Ownable {
    address public add = 0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496;
    Siks public siks;

    constructor() Ownable(add) {
        siks = new Siks(add);
   }

    function test() public {
        siks.mint(0x28A3b53F22B540E04d93847A6223079C6c591437, 1);
    }
    function testFail() public {
        siks.mint(add, 1);
    }
}