// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

interface Weiroll{
    function execute(bytes32[] calldata commands, bytes[] memory state) external;
}

contract WeirollTest is Test {
    /// @dev Address of the SimpleStore contract.
    Weiroll public weiroll;

    /// @dev Setup the testing environment.
    function setUp() public {
        weiroll = SimpleStore(HuffDeployer.deploy("VM"));
    }
}