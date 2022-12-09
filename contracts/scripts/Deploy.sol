// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import 'forge-std/Test.sol';

import '@jbx-protocol/juice-contracts-v3/contracts/interfaces/IJBOperatorStore.sol';
import '@jbx-protocol/juice-contracts-v3/contracts/interfaces/IJBProjects.sol';

import '../JBProjectHandles.sol';

contract DeployGoerli is Test {
  IJBOperatorStore _operatorStore = IJBOperatorStore(0x739d23f90113d653c0062af93B52fa0BA63435E8);
  IJBProjects _projects = IJBProjects(0xCB88FF0B82b6E2624c13272F89195BFd15a64ede);
  IJBProjectHandles _oldHandle = IJBProjectHandles(0xf66a27443776FCd29849b090d6fE1F0B87066835);


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
