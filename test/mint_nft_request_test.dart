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

// tests for MintNFTRequest
void main() {
  final instance = MintNFTRequest();

  group('test MintNFTRequest', () {
    // Wallet wallet
    test('to test the property `wallet`', () async {
      // TODO
    });

    // The config address of the candy machine. You can retrieve this if you have the candy machine ID using <a href=\"#operation/solanaGetCandyMachineDetails\">this endpoint</a> and retrieving the `config_address` from the response.  A candy machine ID is the same thing as a configuration address for v2 candy machines. 
    // String configAddress
    test('to test the property `configAddress`', () async {
      // TODO
    });

    // String network (default value: 'devnet')
    test('to test the property `network`', () async {
      // TODO
    });

    // The candy machine contract of the candy machine from which you're minting. If you are minting from a `v1` candy machine ID, set this to `v1`. If you are minting from a `v2` candy machine ID, set this to `v2`. If you don't know which the version of your candy machine, check out <a href=\"#operation/solanaGetAccountIsCandyMachine\">this endpoint</a>. 
    // String candyMachineContractVersion (default value: 'v1')
    test('to test the property `candyMachineContractVersion`', () async {
      // TODO
    });


  });

}
