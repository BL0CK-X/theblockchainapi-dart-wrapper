//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetCandyMetadataResponseCreators {
  /// Returns a new [GetCandyMetadataResponseCreators] instance.
  GetCandyMetadataResponseCreators({
    this.address,
    this.share,
  });

  /// The public key of a creator
  String address;

  /// The share of the royalty that each creator receives
  num share;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetCandyMetadataResponseCreators &&
     other.address == address &&
     other.share == share;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (address == null ? 0 : address.hashCode) +
    (share == null ? 0 : share.hashCode);

  @override
  String toString() => 'GetCandyMetadataResponseCreators[address=$address, share=$share]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (address != null) {
      json[r'address'] = address;
    }
    if (share != null) {
      json[r'share'] = share;
    }
    return json;
  }

  /// Returns a new [GetCandyMetadataResponseCreators] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCandyMetadataResponseCreators fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GetCandyMetadataResponseCreators(
        address: mapValueOfType<String>(json, r'address'),
        share: json[r'share'] == null
          ? null
          : num.parse(json[r'share'].toString()),
      );
    }
    return null;
  }

  static List<GetCandyMetadataResponseCreators> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetCandyMetadataResponseCreators.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetCandyMetadataResponseCreators>[];

  static Map<String, GetCandyMetadataResponseCreators> mapFromJson(dynamic json) {
    final map = <String, GetCandyMetadataResponseCreators>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GetCandyMetadataResponseCreators.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GetCandyMetadataResponseCreators-objects as value to a dart map
  static Map<String, List<GetCandyMetadataResponseCreators>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetCandyMetadataResponseCreators>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GetCandyMetadataResponseCreators.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

