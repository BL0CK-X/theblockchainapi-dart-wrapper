//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListNFTsResponse {
  /// Returns a new [ListNFTsResponse] instance.
  ListNFTsResponse({
    this.nftsOwned = const [],
  });

  /// A list of mint addresses represented by a string
  List<String> nftsOwned;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListNFTsResponse &&
     other.nftsOwned == nftsOwned;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (nftsOwned == null ? 0 : nftsOwned.hashCode);

  @override
  String toString() => 'ListNFTsResponse[nftsOwned=$nftsOwned]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (nftsOwned != null) {
      json[r'nfts_owned'] = nftsOwned;
    }
    return json;
  }

  /// Returns a new [ListNFTsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListNFTsResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListNFTsResponse(
        nftsOwned: json[r'nfts_owned'] is List
          ? (json[r'nfts_owned'] as List).cast<String>()
          : null,
      );
    }
    return null;
  }

  static List<ListNFTsResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListNFTsResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListNFTsResponse>[];

  static Map<String, ListNFTsResponse> mapFromJson(dynamic json) {
    final map = <String, ListNFTsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ListNFTsResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListNFTsResponse-objects as value to a dart map
  static Map<String, List<ListNFTsResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListNFTsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ListNFTsResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

