//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetAllNFTsResponseUnmintedNfts {
  /// Returns a new [GetAllNFTsResponseUnmintedNfts] instance.
  GetAllNFTsResponseUnmintedNfts({
    this.name,
    this.uri,
  });

  /// The name of the unminted NFT
  String name;

  /// The uri of the unminted NFT
  String uri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetAllNFTsResponseUnmintedNfts &&
     other.name == name &&
     other.uri == uri;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (name == null ? 0 : name.hashCode) +
    (uri == null ? 0 : uri.hashCode);

  @override
  String toString() => 'GetAllNFTsResponseUnmintedNfts[name=$name, uri=$uri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (uri != null) {
      json[r'uri'] = uri;
    }
    return json;
  }

  /// Returns a new [GetAllNFTsResponseUnmintedNfts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetAllNFTsResponseUnmintedNfts fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GetAllNFTsResponseUnmintedNfts(
        name: mapValueOfType<String>(json, r'name'),
        uri: mapValueOfType<String>(json, r'uri'),
      );
    }
    return null;
  }

  static List<GetAllNFTsResponseUnmintedNfts> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetAllNFTsResponseUnmintedNfts.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetAllNFTsResponseUnmintedNfts>[];

  static Map<String, GetAllNFTsResponseUnmintedNfts> mapFromJson(dynamic json) {
    final map = <String, GetAllNFTsResponseUnmintedNfts>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GetAllNFTsResponseUnmintedNfts.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GetAllNFTsResponseUnmintedNfts-objects as value to a dart map
  static Map<String, List<GetAllNFTsResponseUnmintedNfts>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetAllNFTsResponseUnmintedNfts>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GetAllNFTsResponseUnmintedNfts.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

