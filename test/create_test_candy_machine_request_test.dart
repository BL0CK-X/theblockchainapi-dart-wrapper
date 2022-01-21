//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for CreateTestCandyMachineRequest
void main() {
  final instance = CreateTestCandyMachineRequest();

  group('test CreateTestCandyMachineRequest', () {
    // Wallet wallet
    test('to test the property `wallet`', () async {
      // TODO
    });

    // String network (default value: 'devnet')
    test('to test the property `network`', () async {
      // TODO
    });

    // The contract you want to use to create the candy machine. Note: Metaplex disabled the creation of `v1` candy machines on their smart contract, and so we no longer support the creation of `v1` test candy machines. 
    // String candyMachineContractVersion (default value: 'v2')
    test('to test the property `candyMachineContractVersion`', () async {
      // TODO
    });

    // Whether or not to include a gatekeeper for testing purposes. Only applies to v2 candy machines.
    // bool includeGatekeeper (default value: false)
    test('to test the property `includeGatekeeper`', () async {
      // TODO
    });


  });

}
