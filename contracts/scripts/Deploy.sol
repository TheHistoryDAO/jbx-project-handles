// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import 'forge-std/Test.sol';

import '@jbx-protocol/juice-contracts-v3/contracts/interfaces/IJBOperatorStore.sol';
import '@jbx-protocol/juice-contracts-v3/contracts/interfaces/IJBProjects.sol';

import '../JBProjectHandles.sol';

contract DeployGoerli is Test {
  IJBOperatorStore _operatorStore = IJBOperatorStore(0x721a4602C9F3348B18a3678c5CF30b28C9E3f3e3);
  IJBProjects _projects = IJBProjects(0x998103e820a1B7cfFdE5f7eA7d9a302798F7FE89);
  IJBProjectHandles _oldHandle = IJBProjectHandles(address(0));


  JBProjectHandles jbProjectHandles;

  function run() external {
    vm.startBroadcast();

    jbProjectHandles = new JBProjectHandles(_projects, _operatorStore, _oldHandle);
  }
}

contract DeployMainnet is Test {
  IJBOperatorStore _operatorStore = IJBOperatorStore(0x6F3C5afCa0c9eDf3926eF2dDF17c8ae6391afEfb);
  IJBProjects _projects = IJBProjects(0xD8B4359143eda5B2d763E127Ed27c77addBc47d3);
  IJBProjectHandles _oldHandle = IJBProjectHandles(0xE3c01E9Fd2a1dCC6edF0b1058B5757138EF9FfB6);

  JBProjectHandles jbProjectHandles;

  function run() external {
    vm.startBroadcast();

    jbProjectHandles = new JBProjectHandles(_projects, _operatorStore, _oldHandle);
  }
}
