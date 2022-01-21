//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetAllNFTsResponse {
  /// Returns a new [GetAllNFTsResponse] instance.
  GetAllNFTsResponse({
    this.mintedNfts = const [],
    this.unmintedNfts = const [],
    this.allNfts = const [],
    this.accurate,
  });

  /// The minted NFTs. Only filled in for `v1` candy machines. Left empty for `v2`.
  List<GetAllNFTsResponseMintedNfts> mintedNfts;

  /// The unminted NFTs. Only filled in for `v1` candy machines. Left empty for `v2`.
  List<GetAllNFTsResponseUnmintedNfts> unmintedNfts;

  /// The list of all NFTs. Filled in for both `v1` and `v2` NFTs.
  List<GetAllNFTsResponseUnmintedNfts> allNfts;

  /// Whether or not the division of NFTs among minted and unminted is accurate. If it is not accurate, then it is possible that NFTs have been included in the `minted` list that are not actually minted. If it is accurate, then the split of  minted and unminted is correct. `v1` candy machines always return a correct minted/unminted split.  
  bool accurate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetAllNFTsResponse &&
     other.mintedNfts == mintedNfts &&
     other.unmintedNfts == unmintedNfts &&
     other.allNfts == allNfts &&
     other.accurate == accurate;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (mintedNfts == null ? 0 : mintedNfts.hashCode) +
    (unmintedNfts == null ? 0 : unmintedNfts.hashCode) +
    (allNfts == null ? 0 : allNfts.hashCode) +
    (accurate == null ? 0 : accurate.hashCode);

  @override
  String toString() => 'GetAllNFTsResponse[mintedNfts=$mintedNfts, unmintedNfts=$unmintedNfts, allNfts=$allNfts, accurate=$accurate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (mintedNfts != null) {
      json[r'minted_nfts'] = mintedNfts;
    }
    if (unmintedNfts != null) {
      json[r'unminted_nfts'] = unmintedNfts;
    }
    if (allNfts != null) {
      json[r'all_nfts'] = allNfts;
    }
    if (accurate != null) {
      json[r'accurate'] = accurate;
    }
    return json;
  }

  /// Returns a new [GetAllNFTsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetAllNFTsResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GetAllNFTsResponse(
        mintedNfts: GetAllNFTsResponseMintedNfts.listFromJson(json[r'minted_nfts']),
        unmintedNfts: GetAllNFTsResponseUnmintedNfts.listFromJson(json[r'unminted_nfts']),
        allNfts: GetAllNFTsResponseUnmintedNfts.listFromJson(json[r'all_nfts']),
        accurate: mapValueOfType<bool>(json, r'accurate'),
      );
    }
    return null;
  }

  static List<GetAllNFTsResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetAllNFTsResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetAllNFTsResponse>[];

  static Map<String, GetAllNFTsResponse> mapFromJson(dynamic json) {
    final map = <String, GetAllNFTsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GetAllNFTsResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GetAllNFTsResponse-objects as value to a dart map
  static Map<String, List<GetAllNFTsResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetAllNFTsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GetAllNFTsResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

