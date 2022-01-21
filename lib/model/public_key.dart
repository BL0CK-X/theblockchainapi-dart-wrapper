//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PublicKey {
  /// Returns a new [PublicKey] instance.
  PublicKey({
    @required this.publicKey,
  });

  String publicKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicKey &&
     other.publicKey == publicKey;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (publicKey == null ? 0 : publicKey.hashCode);

  @override
  String toString() => 'PublicKey[publicKey=$publicKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'public_key'] = publicKey;
    return json;
  }

  /// Returns a new [PublicKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicKey fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PublicKey(
        publicKey: mapValueOfType<String>(json, r'public_key'),
      );
    }
    return null;
  }

  static List<PublicKey> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PublicKey.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PublicKey>[];

  static Map<String, PublicKey> mapFromJson(dynamic json) {
    final map = <String, PublicKey>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PublicKey.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PublicKey-objects as value to a dart map
  static Map<String, List<PublicKey>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PublicKey>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PublicKey.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

