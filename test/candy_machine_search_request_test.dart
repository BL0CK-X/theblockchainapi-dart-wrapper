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

// tests for CandyMachineSearchRequest
void main() {
  final instance = CandyMachineSearchRequest();

  group('test CandyMachineSearchRequest', () {
    // The public key of the update authority of the candy machine
    // String updateAuthority
    test('to test the property `updateAuthority`', () async {
      // TODO
    });

    // Only `exact_match` supported at this time
    // String updateAuthoritySearchMethod (default value: 'exact_match')
    test('to test the property `updateAuthoritySearchMethod`', () async {
      // TODO
    });

    // The public key of the configuration of the candy machine
    // String configAddress
    test('to test the property `configAddress`', () async {
      // TODO
    });

    // Only `exact_match` supported at this time
    // String configAddressSearchMethod (default value: 'exact_match')
    test('to test the property `configAddressSearchMethod`', () async {
      // TODO
    });

    // The alphanumeric string of length six that corresponds to the candy machine. This is NOT the candy machine ID.  This is the first six letters of the configuration address and is also used to identify the candy machine. An example is `4zKV6i`. 
    // String uuid
    test('to test the property `uuid`', () async {
      // TODO
    });

    // Only `exact_match` supported at this time
    // String uuidSearchMethod (default value: 'exact_match')
    test('to test the property `uuidSearchMethod`', () async {
      // TODO
    });

    // The symbol associated with the candy machine
    // String symbol
    test('to test the property `symbol`', () async {
      // TODO
    });

    // String symbolSearchMethod (default value: 'exact_match')
    test('to test the property `symbolSearchMethod`', () async {
      // TODO
    });

    // The name of an NFT on the candy machine, minted or unminted. For example, to find The Solana Money Boys candy machine, you already know that each NFT is named \"Solana Money Boy #0\", \"Solana Money Boy #1\", and so on. So you could search with  nft_name=\"Solana Money Boy #0\", nft_name_index=0, nft_name_search_method='exact_match', for example, which would return the candy machine ID. This also works with candy machines that are not live but are uploaded. 
    // String nftName
    test('to test the property `nftName`', () async {
      // TODO
    });

    // The index of the NFT to check, e.g., the 2nd NFT would have an index of 1. We cannot search all NFTs on a candy machine currently, so you must search an NFT at a particular position, such as the first, second, and so on. In general, nft_name_index=0 works for most use cases. 
    // String nftNameIndex (default value: '0')
    test('to test the property `nftNameIndex`', () async {
      // TODO
    });

    // String nftNameSearchMethod (default value: 'exact_match')
    test('to test the property `nftNameSearchMethod`', () async {
      // TODO
    });

    // String network (default value: 'devnet')
    test('to test the property `network`', () async {
      // TODO
    });

    // The candy machine contract you want to search.  If you want to search `v1` candy machines, set this to `v1`. If you want to search `v2` candy machines. set this to `v2`. 
    // String candyMachineContractVersion (default value: 'v1')
    test('to test the property `candyMachineContractVersion`', () async {
      // TODO
    });


  });

}
