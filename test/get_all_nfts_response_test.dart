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

// tests for GetAllNFTsResponse
void main() {
  final instance = GetAllNFTsResponse();

  group('test GetAllNFTsResponse', () {
    // The minted NFTs. Only filled in for `v1` candy machines. Left empty for `v2`.
    // List<GetAllNFTsResponseMintedNfts> mintedNfts (default value: const [])
    test('to test the property `mintedNfts`', () async {
      // TODO
    });

    // The unminted NFTs. Only filled in for `v1` candy machines. Left empty for `v2`.
    // List<GetAllNFTsResponseUnmintedNfts> unmintedNfts (default value: const [])
    test('to test the property `unmintedNfts`', () async {
      // TODO
    });

    // The list of all NFTs. Filled in for both `v1` and `v2` NFTs.
    // List<GetAllNFTsResponseUnmintedNfts> allNfts (default value: const [])
    test('to test the property `allNfts`', () async {
      // TODO
    });

    // Whether or not the division of NFTs among minted and unminted is accurate. If it is not accurate, then it is possible that NFTs have been included in the `minted` list that are not actually minted. If it is accurate, then the split of  minted and unminted is correct. `v1` candy machines always return a correct minted/unminted split.  
    // bool accurate
    test('to test the property `accurate`', () async {
      // TODO
    });


  });

}
