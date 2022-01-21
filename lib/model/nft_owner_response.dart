//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NFTOwnerResponse {
  /// Returns a new [NFTOwnerResponse] instance.
  NFTOwnerResponse({
    @required this.nftOwner,
  });

  /// The public key address of the wallet that has ownership over the provided NFT
  String nftOwner;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NFTOwnerResponse &&
     other.nftOwner == nftOwner;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (nftOwner == null ? 0 : nftOwner.hashCode);

  @override
  String toString() => 'NFTOwnerResponse[nftOwner=$nftOwner]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nft_owner'] = nftOwner;
    return json;
  }

  /// Returns a new [NFTOwnerResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NFTOwnerResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NFTOwnerResponse(
        nftOwner: mapValueOfType<String>(json, r'nft_owner'),
      );
    }
    return null;
  }

  static List<NFTOwnerResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NFTOwnerResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NFTOwnerResponse>[];

  static Map<String, NFTOwnerResponse> mapFromJson(dynamic json) {
    final map = <String, NFTOwnerResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NFTOwnerResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NFTOwnerResponse-objects as value to a dart map
  static Map<String, List<NFTOwnerResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NFTOwnerResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NFTOwnerResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

