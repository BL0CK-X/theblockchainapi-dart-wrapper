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

// tests for NFTMintRequest
void main() {
  final instance = NFTMintRequest();

  group('test NFTMintRequest', () {
    // Wallet wallet
    test('to test the property `wallet`', () async {
      // TODO
    });

    // The name of the token. Limited to 32 characters. Stored on the blockchain.
    // String nftName (default value: '')
    test('to test the property `nftName`', () async {
      // TODO
    });

    // The symbol of the token. Limited to 10 characters. Stored on the blockchain.
    // String nftSymbol (default value: '')
    test('to test the property `nftSymbol`', () async {
      // TODO
    });

    // The description of the token. Limited to 2000 characters. Not stored on the blockchain.  This is stored in S3 in a bucket we own, and the link to that file is stored on the blockchain.  If you provide your own link, the link is also stored in that S3 file, which is publicly accessible. However, if you choose the NFT upload method \"LINK\" instead of \"S3\", then we upload the link you  provide for nft_url directly to the blockchain, and S3 is not used at all. Thus, when you provide the \"LINK\" option, the value nft_description is ignored and not used. The Metaplex API does not provide functionality to store any data about your NFT besides a URL. 
    // String nftDescription (default value: '')
    test('to test the property `nftDescription`', () async {
      // TODO
    });

    // The URL you provided. Limited to 200 characters. This does not need to be a valid URL. Whether or not this is  stored on the blockchain depends on which upload method you choose. If you choose LINK, then this is stored on the  blockchain directly. If you choose S3, then this link is embedded in a public S3 text file that also contains the metadata, the name,  the symbol, and the description of the NFT. 
    // String nftUrl (default value: '')
    test('to test the property `nftUrl`', () async {
      // TODO
    });

    // Any data you provide. Must be a string and properly encoded json. Will be viewable on S3. Limited to 2000 bytes. Not stored on the blockchain.  This is stored in S3 in a bucket we own, and the link to that file is stored on the blockchain.  If you provide your own link, the link is also stored in that S3 file, which is publicly accessible. However, if you choose the NFT upload method \"LINK\" instead of \"S3\", then we upload the link you  provide for nft_url directly to the blockchain, and S3 is not used at all. Thus, when you provide the \"LINK\" option, the value nft_metadata is ignored and not used. The Metaplex API does not provide functionality to store any data about your NFT besides a URL. 
    // String nftMetadata (default value: '{}')
    test('to test the property `nftMetadata`', () async {
      // TODO
    });

    // When you choose S3, all of the nft_description, nft_name, nft_symbol, nft_metadata, and nft_url are put into a json dictionary and uploaded to S3 as a text file.  This is uploaded to an AWS S3 bucket we own, and is an option we provide at no charge. The S3 link to this file is stored on the NFT on the blockchain.   When you choose LINK, the nft_url you provide is stored on the blockchain, and the nft_metadata and nft_description are ignored and not stored anywhere. S3 is then NOT used. 
    // String nftUploadMethod (default value: 'S3')
    test('to test the property `nftUploadMethod`', () async {
      // TODO
    });

    // Indicates whether or not the NFT created is mutable. If mutable, the NFT can be updated later. Once set to immutable, the NFT is unable to be changed. 
    // bool isMutable (default value: true)
    test('to test the property `isMutable`', () async {
      // TODO
    });

    // Whether or not the NFT is a master edition NFT. Saves about 0.001 SOL in transaction costs when set to false. 
    // bool isMasterEdition (default value: true)
    test('to test the property `isMasterEdition`', () async {
      // TODO
    });

    // Valid values from 0 to 10000. Must be an integer.  Represents the number of basis points that the seller receives as a fee upon sale.  E.g., 100 indicates a 1% seller fee. Seller does not receive a fee when \"primary_sale_has_happened\" is set to true.  Will be set to false after first sale has occurred. 
    // num sellerFeeBasisPoints (default value: 0)
    test('to test the property `sellerFeeBasisPoints`', () async {
      // TODO
    });

    // A JSON encoded string representing an array / list.  The designated creators of the NFT. Length of the creator list must match length of the list of share.  Valid lengths of the list range from 1 to 5. Each item in the list must be a valid public key address.    Only the public key corresponding to the seed phrase provided will be marked as verified. Any other creators supplied will be marked as unverified. 
    // List<String> creators (default value: const [])
    test('to test the property `creators`', () async {
      // TODO
    });

    // A JSON encoded string representing an array / list.  The share of the royalty that each creator gets. Valid values range from 0 to 100.  Sum of the values must equal 100.  Only integer value accepted. Length of the share list must match length of the list of creators. 
    // List<int> share (default value: const [])
    test('to test the property `share`', () async {
      // TODO
    });

    // Assign ownership of the NFT to the public key address given by `mint_to_public_key` 
    // String mintToPublicKey (default value: 'The public key of the wallet provided')
    test('to test the property `mintToPublicKey`', () async {
      // TODO
    });

    // This determines which network you choose to run the API calls on. We recommend first testing on the devnet, because minting an NFT costs a little above 0.01 SOL, which is about $1.60 at the time of this writing.  When you run on the mainnet-beta, each successful call will deduct approximately that much. When you run on the devnet, that amount is deducted from a simulated amount, so you are not paying with real SOL. To get SOL on the devnet,   airdrop SOL to this address using the CLI. Keep in mind that you can only do this every so often. If you are rate-limited, consider using a VPN and trying again, or just waiting. To get SOL on the mainnet-beta, you    must transfer real SOL to this account from another wallet (e.g., from another wallet you own, from an exchange, etc.). We hope to make this process easier in the future, and if you have any suggestions, please add them    as an issue on our <a href=\"https://github.com/BL0CK-X/the-blockchain-api\" target=\"_blank\">GitHub repository</a> for the API. To get a fee estimate, make a GET requests to the <a href=\"#tag/Solana-NFT/paths/~1solana~1nft~1mint~1fee/get\">v1/solana/nft/mint/fee endpoint</a> (details in sidebar). 
    // String network (default value: 'devnet')
    test('to test the property `network`', () async {
      // TODO
    });


  });

}
