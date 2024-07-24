// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

import {Script, console} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";

import {SDAIStrategy} from "../src/SDAIStrategy.sol";

contract deploy_strategy is Script {
    function run() public {
        vm.startBroadcast();
        SDAIStrategy strategy = new SDAIStrategy();
        console.log("Strategy deployed at: ", address(strategy));
        vm.stopBroadcast();
    }
}
