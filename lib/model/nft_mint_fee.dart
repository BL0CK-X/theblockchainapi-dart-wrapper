//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NFTMintFee {
  /// Returns a new [NFTMintFee] instance.
  NFTMintFee({
    this.nftMintFeeEstimateLamports,
    this.description,
  });

  /// The estimate of the total fee for minting an NFT on Solana
  num nftMintFeeEstimateLamports;

  /// A description of the fee that explains how it was estimated
  String description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NFTMintFee &&
     other.nftMintFeeEstimateLamports == nftMintFeeEstimateLamports &&
     other.description == description;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (nftMintFeeEstimateLamports == null ? 0 : nftMintFeeEstimateLamports.hashCode) +
    (description == null ? 0 : description.hashCode);

  @override
  String toString() => 'NFTMintFee[nftMintFeeEstimateLamports=$nftMintFeeEstimateLamports, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (nftMintFeeEstimateLamports != null) {
      json[r'nft_mint_fee_estimate_lamports'] = nftMintFeeEstimateLamports;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    return json;
  }

  /// Returns a new [NFTMintFee] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NFTMintFee fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NFTMintFee(
        nftMintFeeEstimateLamports: json[r'nft_mint_fee_estimate_lamports'] == null
          ? null
          : num.parse(json[r'nft_mint_fee_estimate_lamports'].toString()),
        description: mapValueOfType<String>(json, r'description'),
      );
    }
    return null;
  }

  static List<NFTMintFee> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NFTMintFee.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NFTMintFee>[];

  static Map<String, NFTMintFee> mapFromJson(dynamic json) {
    final map = <String, NFTMintFee>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NFTMintFee.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NFTMintFee-objects as value to a dart map
  static Map<String, List<NFTMintFee>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NFTMintFee>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NFTMintFee.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

