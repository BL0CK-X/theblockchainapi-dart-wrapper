//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NFTMintRequest {
  /// Returns a new [NFTMintRequest] instance.
  NFTMintRequest({
    @required this.wallet,
    this.nftName = '',
    this.nftSymbol = '',
    this.nftDescription = '',
    this.nftUrl = '',
    this.nftMetadata = '{}',
    this.nftUploadMethod = const NFTMintRequestNftUploadMethodEnum._('S3'),
    this.isMutable = true,
    this.isMasterEdition = true,
    this.sellerFeeBasisPoints = 0,
    this.creators = const [],
    this.share = const [],
    this.mintToPublicKey = 'The public key of the wallet provided',
    this.network = const NFTMintRequestNetworkEnum._('devnet'),
  });

  Wallet wallet;

  /// The name of the token. Limited to 32 characters. Stored on the blockchain.
  String nftName;

  /// The symbol of the token. Limited to 10 characters. Stored on the blockchain.
  String nftSymbol;

  /// The description of the token. Limited to 2000 characters. Not stored on the blockchain.  This is stored in S3 in a bucket we own, and the link to that file is stored on the blockchain.  If you provide your own link, the link is also stored in that S3 file, which is publicly accessible. However, if you choose the NFT upload method \"LINK\" instead of \"S3\", then we upload the link you  provide for nft_url directly to the blockchain, and S3 is not used at all. Thus, when you provide the \"LINK\" option, the value nft_description is ignored and not used. The Metaplex API does not provide functionality to store any data about your NFT besides a URL. 
  String nftDescription;

  /// The URL you provided. Limited to 200 characters. This does not need to be a valid URL. Whether or not this is  stored on the blockchain depends on which upload method you choose. If you choose LINK, then this is stored on the  blockchain directly. If you choose S3, then this link is embedded in a public S3 text file that also contains the metadata, the name,  the symbol, and the description of the NFT. 
  String nftUrl;

  /// Any data you provide. Must be a string and properly encoded json. Will be viewable on S3. Limited to 2000 bytes. Not stored on the blockchain.  This is stored in S3 in a bucket we own, and the link to that file is stored on the blockchain.  If you provide your own link, the link is also stored in that S3 file, which is publicly accessible. However, if you choose the NFT upload method \"LINK\" instead of \"S3\", then we upload the link you  provide for nft_url directly to the blockchain, and S3 is not used at all. Thus, when you provide the \"LINK\" option, the value nft_metadata is ignored and not used. The Metaplex API does not provide functionality to store any data about your NFT besides a URL. 
  String nftMetadata;

  /// When you choose S3, all of the nft_description, nft_name, nft_symbol, nft_metadata, and nft_url are put into a json dictionary and uploaded to S3 as a text file.  This is uploaded to an AWS S3 bucket we own, and is an option we provide at no charge. The S3 link to this file is stored on the NFT on the blockchain.   When you choose LINK, the nft_url you provide is stored on the blockchain, and the nft_metadata and nft_description are ignored and not stored anywhere. S3 is then NOT used. 
  NFTMintRequestNftUploadMethodEnum nftUploadMethod;

  /// Indicates whether or not the NFT created is mutable. If mutable, the NFT can be updated later. Once set to immutable, the NFT is unable to be changed. 
  bool isMutable;

  /// Whether or not the NFT is a master edition NFT. Saves about 0.001 SOL in transaction costs when set to false. 
  bool isMasterEdition;

  /// Valid values from 0 to 10000. Must be an integer.  Represents the number of basis points that the seller receives as a fee upon sale.  E.g., 100 indicates a 1% seller fee. Seller does not receive a fee when \"primary_sale_has_happened\" is set to true.  Will be set to false after first sale has occurred. 
  num sellerFeeBasisPoints;

  /// A JSON encoded string representing an array / list.  The designated creators of the NFT. Length of the creator list must match length of the list of share.  Valid lengths of the list range from 1 to 5. Each item in the list must be a valid public key address.    Only the public key corresponding to the seed phrase provided will be marked as verified. Any other creators supplied will be marked as unverified. 
  List<String> creators;

  /// A JSON encoded string representing an array / list.  The share of the royalty that each creator gets. Valid values range from 0 to 100.  Sum of the values must equal 100.  Only integer value accepted. Length of the share list must match length of the list of creators. 
  List<int> share;

  /// Assign ownership of the NFT to the public key address given by `mint_to_public_key` 
  String mintToPublicKey;

  /// This determines which network you choose to run the API calls on. We recommend first testing on the devnet, because minting an NFT costs a little above 0.01 SOL, which is about $1.60 at the time of this writing.  When you run on the mainnet-beta, each successful call will deduct approximately that much. When you run on the devnet, that amount is deducted from a simulated amount, so you are not paying with real SOL. To get SOL on the devnet,   airdrop SOL to this address using the CLI. Keep in mind that you can only do this every so often. If you are rate-limited, consider using a VPN and trying again, or just waiting. To get SOL on the mainnet-beta, you    must transfer real SOL to this account from another wallet (e.g., from another wallet you own, from an exchange, etc.). We hope to make this process easier in the future, and if you have any suggestions, please add them    as an issue on our <a href=\"https://github.com/BL0CK-X/the-blockchain-api\" target=\"_blank\">GitHub repository</a> for the API. To get a fee estimate, make a GET requests to the <a href=\"#tag/Solana-NFT/paths/~1solana~1nft~1mint~1fee/get\">v1/solana/nft/mint/fee endpoint</a> (details in sidebar). 
  NFTMintRequestNetworkEnum network;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NFTMintRequest &&
     other.wallet == wallet &&
     other.nftName == nftName &&
     other.nftSymbol == nftSymbol &&
     other.nftDescription == nftDescription &&
     other.nftUrl == nftUrl &&
     other.nftMetadata == nftMetadata &&
     other.nftUploadMethod == nftUploadMethod &&
     other.isMutable == isMutable &&
     other.isMasterEdition == isMasterEdition &&
     other.sellerFeeBasisPoints == sellerFeeBasisPoints &&
     other.creators == creators &&
     other.share == share &&
     other.mintToPublicKey == mintToPublicKey &&
     other.network == network;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (wallet == null ? 0 : wallet.hashCode) +
    (nftName == null ? 0 : nftName.hashCode) +
    (nftSymbol == null ? 0 : nftSymbol.hashCode) +
    (nftDescription == null ? 0 : nftDescription.hashCode) +
    (nftUrl == null ? 0 : nftUrl.hashCode) +
    (nftMetadata == null ? 0 : nftMetadata.hashCode) +
    (nftUploadMethod == null ? 0 : nftUploadMethod.hashCode) +
    (isMutable == null ? 0 : isMutable.hashCode) +
    (isMasterEdition == null ? 0 : isMasterEdition.hashCode) +
    (sellerFeeBasisPoints == null ? 0 : sellerFeeBasisPoints.hashCode) +
    (creators == null ? 0 : creators.hashCode) +
    (share == null ? 0 : share.hashCode) +
    (mintToPublicKey == null ? 0 : mintToPublicKey.hashCode) +
    (network == null ? 0 : network.hashCode);

  @override
  String toString() => 'NFTMintRequest[wallet=$wallet, nftName=$nftName, nftSymbol=$nftSymbol, nftDescription=$nftDescription, nftUrl=$nftUrl, nftMetadata=$nftMetadata, nftUploadMethod=$nftUploadMethod, isMutable=$isMutable, isMasterEdition=$isMasterEdition, sellerFeeBasisPoints=$sellerFeeBasisPoints, creators=$creators, share=$share, mintToPublicKey=$mintToPublicKey, network=$network]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'wallet'] = wallet;
    if (nftName != null) {
      json[r'nft_name'] = nftName;
    }
    if (nftSymbol != null) {
      json[r'nft_symbol'] = nftSymbol;
    }
    if (nftDescription != null) {
      json[r'nft_description'] = nftDescription;
    }
    if (nftUrl != null) {
      json[r'nft_url'] = nftUrl;
    }
    if (nftMetadata != null) {
      json[r'nft_metadata'] = nftMetadata;
    }
    if (nftUploadMethod != null) {
      json[r'nft_upload_method'] = nftUploadMethod;
    }
    if (isMutable != null) {
      json[r'is_mutable'] = isMutable;
    }
    if (isMasterEdition != null) {
      json[r'is_master_edition'] = isMasterEdition;
    }
    if (sellerFeeBasisPoints != null) {
      json[r'seller_fee_basis_points'] = sellerFeeBasisPoints;
    }
    if (creators != null) {
      json[r'creators'] = creators;
    }
    if (share != null) {
      json[r'share'] = share;
    }
    if (mintToPublicKey != null) {
      json[r'mint_to_public_key'] = mintToPublicKey;
    }
    if (network != null) {
      json[r'network'] = network;
    }
    return json;
  }

  /// Returns a new [NFTMintRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NFTMintRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NFTMintRequest(
        wallet: Wallet.fromJson(json[r'wallet']),
        nftName: mapValueOfType<String>(json, r'nft_name'),
        nftSymbol: mapValueOfType<String>(json, r'nft_symbol'),
        nftDescription: mapValueOfType<String>(json, r'nft_description'),
        nftUrl: mapValueOfType<String>(json, r'nft_url'),
        nftMetadata: mapValueOfType<String>(json, r'nft_metadata'),
        nftUploadMethod: NFTMintRequestNftUploadMethodEnum.fromJson(json[r'nft_upload_method']),
        isMutable: mapValueOfType<bool>(json, r'is_mutable'),
        isMasterEdition: mapValueOfType<bool>(json, r'is_master_edition'),
        sellerFeeBasisPoints: json[r'seller_fee_basis_points'] == null
          ? null
          : num.parse(json[r'seller_fee_basis_points'].toString()),
        creators: json[r'creators'] is List
          ? (json[r'creators'] as List).cast<String>()
          : null,
        share: json[r'share'] is List
          ? (json[r'share'] as List).cast<int>()
          : null,
        mintToPublicKey: mapValueOfType<String>(json, r'mint_to_public_key'),
        network: NFTMintRequestNetworkEnum.fromJson(json[r'network']),
      );
    }
    return null;
  }

  static List<NFTMintRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NFTMintRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NFTMintRequest>[];

  static Map<String, NFTMintRequest> mapFromJson(dynamic json) {
    final map = <String, NFTMintRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NFTMintRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NFTMintRequest-objects as value to a dart map
  static Map<String, List<NFTMintRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NFTMintRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NFTMintRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// When you choose S3, all of the nft_description, nft_name, nft_symbol, nft_metadata, and nft_url are put into a json dictionary and uploaded to S3 as a text file.  This is uploaded to an AWS S3 bucket we own, and is an option we provide at no charge. The S3 link to this file is stored on the NFT on the blockchain.   When you choose LINK, the nft_url you provide is stored on the blockchain, and the nft_metadata and nft_description are ignored and not stored anywhere. S3 is then NOT used. 
class NFTMintRequestNftUploadMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const NFTMintRequestNftUploadMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const s3 = NFTMintRequestNftUploadMethodEnum._(r'S3');
  static const LINK = NFTMintRequestNftUploadMethodEnum._(r'LINK');

  /// List of all possible values in this [enum][NFTMintRequestNftUploadMethodEnum].
  static const values = <NFTMintRequestNftUploadMethodEnum>[
    s3,
    LINK,
  ];

  static NFTMintRequestNftUploadMethodEnum fromJson(dynamic value) =>
    NFTMintRequestNftUploadMethodEnumTypeTransformer().decode(value);

  static List<NFTMintRequestNftUploadMethodEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NFTMintRequestNftUploadMethodEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NFTMintRequestNftUploadMethodEnum>[];
}

/// Transformation class that can [encode] an instance of [NFTMintRequestNftUploadMethodEnum] to String,
/// and [decode] dynamic data back to [NFTMintRequestNftUploadMethodEnum].
class NFTMintRequestNftUploadMethodEnumTypeTransformer {
  factory NFTMintRequestNftUploadMethodEnumTypeTransformer() => _instance ??= const NFTMintRequestNftUploadMethodEnumTypeTransformer._();

  const NFTMintRequestNftUploadMethodEnumTypeTransformer._();

  String encode(NFTMintRequestNftUploadMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NFTMintRequestNftUploadMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NFTMintRequestNftUploadMethodEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'S3': return NFTMintRequestNftUploadMethodEnum.s3;
        case r'LINK': return NFTMintRequestNftUploadMethodEnum.LINK;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NFTMintRequestNftUploadMethodEnumTypeTransformer] instance.
  static NFTMintRequestNftUploadMethodEnumTypeTransformer _instance;
}


/// This determines which network you choose to run the API calls on. We recommend first testing on the devnet, because minting an NFT costs a little above 0.01 SOL, which is about $1.60 at the time of this writing.  When you run on the mainnet-beta, each successful call will deduct approximately that much. When you run on the devnet, that amount is deducted from a simulated amount, so you are not paying with real SOL. To get SOL on the devnet,   airdrop SOL to this address using the CLI. Keep in mind that you can only do this every so often. If you are rate-limited, consider using a VPN and trying again, or just waiting. To get SOL on the mainnet-beta, you    must transfer real SOL to this account from another wallet (e.g., from another wallet you own, from an exchange, etc.). We hope to make this process easier in the future, and if you have any suggestions, please add them    as an issue on our <a href=\"https://github.com/BL0CK-X/the-blockchain-api\" target=\"_blank\">GitHub repository</a> for the API. To get a fee estimate, make a GET requests to the <a href=\"#tag/Solana-NFT/paths/~1solana~1nft~1mint~1fee/get\">v1/solana/nft/mint/fee endpoint</a> (details in sidebar). 
class NFTMintRequestNetworkEnum {
  /// Instantiate a new enum with the provided [value].
  const NFTMintRequestNetworkEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const devnet = NFTMintRequestNetworkEnum._(r'devnet');
  static const mainnetBeta = NFTMintRequestNetworkEnum._(r'mainnet-beta');

  /// List of all possible values in this [enum][NFTMintRequestNetworkEnum].
  static const values = <NFTMintRequestNetworkEnum>[
    devnet,
    mainnetBeta,
  ];

  static NFTMintRequestNetworkEnum fromJson(dynamic value) =>
    NFTMintRequestNetworkEnumTypeTransformer().decode(value);

  static List<NFTMintRequestNetworkEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NFTMintRequestNetworkEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NFTMintRequestNetworkEnum>[];
}

/// Transformation class that can [encode] an instance of [NFTMintRequestNetworkEnum] to String,
/// and [decode] dynamic data back to [NFTMintRequestNetworkEnum].
class NFTMintRequestNetworkEnumTypeTransformer {
  factory NFTMintRequestNetworkEnumTypeTransformer() => _instance ??= const NFTMintRequestNetworkEnumTypeTransformer._();

  const NFTMintRequestNetworkEnumTypeTransformer._();

  String encode(NFTMintRequestNetworkEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NFTMintRequestNetworkEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NFTMintRequestNetworkEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'devnet': return NFTMintRequestNetworkEnum.devnet;
        case r'mainnet-beta': return NFTMintRequestNetworkEnum.mainnetBeta;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NFTMintRequestNetworkEnumTypeTransformer] instance.
  static NFTMintRequestNetworkEnumTypeTransformer _instance;
}


