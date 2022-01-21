//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetAllNFTsResponseMintedNfts {
  /// Returns a new [GetAllNFTsResponseMintedNfts] instance.
  GetAllNFTsResponseMintedNfts({
    this.nftMetadata,
    this.pubKeyHash,
  });

  NFT nftMetadata;

  /// Use this to verify the NFT
  String pubKeyHash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetAllNFTsResponseMintedNfts &&
     other.nftMetadata == nftMetadata &&
     other.pubKeyHash == pubKeyHash;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (nftMetadata == null ? 0 : nftMetadata.hashCode) +
    (pubKeyHash == null ? 0 : pubKeyHash.hashCode);

  @override
  String toString() => 'GetAllNFTsResponseMintedNfts[nftMetadata=$nftMetadata, pubKeyHash=$pubKeyHash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (nftMetadata != null) {
      json[r'nft_metadata'] = nftMetadata;
    }
    if (pubKeyHash != null) {
      json[r'pub_key_hash'] = pubKeyHash;
    }
    return json;
  }

  /// Returns a new [GetAllNFTsResponseMintedNfts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetAllNFTsResponseMintedNfts fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GetAllNFTsResponseMintedNfts(
        nftMetadata: NFT.fromJson(json[r'nft_metadata']),
        pubKeyHash: mapValueOfType<String>(json, r'pub_key_hash'),
      );
    }
    return null;
  }

  static List<GetAllNFTsResponseMintedNfts> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetAllNFTsResponseMintedNfts.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetAllNFTsResponseMintedNfts>[];

  static Map<String, GetAllNFTsResponseMintedNfts> mapFromJson(dynamic json) {
    final map = <String, GetAllNFTsResponseMintedNfts>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GetAllNFTsResponseMintedNfts.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GetAllNFTsResponseMintedNfts-objects as value to a dart map
  static Map<String, List<GetAllNFTsResponseMintedNfts>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetAllNFTsResponseMintedNfts>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GetAllNFTsResponseMintedNfts.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

