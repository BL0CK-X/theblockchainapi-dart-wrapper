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

// tests for GetCandyMetadataRequest
void main() {
  final instance = GetCandyMetadataRequest();

  group('test GetCandyMetadataRequest', () {
    // The ID of the candy machine. This is the same as `config_address` for `v2` candy machines (supply either). 
    // String candyMachineId
    test('to test the property `candyMachineId`', () async {
      // TODO
    });

    // The configuration address of the candy machine. This is the same as `candy_machine_id` for `v2` candy machines (supply either). 
    // String configAddress
    test('to test the property `configAddress`', () async {
      // TODO
    });

    // The uuid of the candy machine. This is an alphanumeric string of length six (e.g., HpVdfP), which corresponds to the first six characters of the config_address. 
    // String uuid
    test('to test the property `uuid`', () async {
      // TODO
    });

    // String network (default value: 'devnet')
    test('to test the property `network`', () async {
      // TODO
    });

    // The candy machine contract of the candy machine for which you are retrieving the metadata. If you are providing `v1` candy machine ID, set this to `v1`. If you are providing `v2` candy machine ID, set this to `v2`. If you don't know which version your candy machine is, check out <a href=\"#operation/solanaGetAccountIsCandyMachine\">this endpoint</a>. 
    // String candyMachineContractVersion (default value: 'v1')
    test('to test the property `candyMachineContractVersion`', () async {
      // TODO
    });


  });

}
