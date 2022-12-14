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
  IJBOperatorStore _operatorStore = IJBOperatorStore(0xDA42A208e866af321bb2BD7cB0e5504555504b87);
  IJBProjects _projects = IJBProjects(0xb220b87e7b587351d43Df4d906726d98D1fa52fB);
  IJBProjectHandles _oldHandle = IJBProjectHandles(address(0));

  JBProjectHandles jbProjectHandles;

  function run() external {
    vm.startBroadcast();

    jbProjectHandles = new JBProjectHandles(_projects, _operatorStore, _oldHandle);
  }
}
