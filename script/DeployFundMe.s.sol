// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import {Script, console} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract DeployFundMe is Script {
    FundMe public fundMe;

    function setUp() public {}

    function run() external returns (FundMe) {
        vm.startBroadcast();

        fundMe = new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306);

        vm.stopBroadcast();

        return fundMe;
    }
}
