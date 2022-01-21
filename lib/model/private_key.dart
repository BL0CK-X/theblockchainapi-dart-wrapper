//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PrivateKey {
  /// Returns a new [PrivateKey] instance.
  PrivateKey({
    @required this.privateKey,
  });

  /// A private key corresponds to exactly one public key address. A private key can be used to move assets out of the wallet and sign transaction with the corresponding public key.  A private key is an array of integers (e.g.,   `[185,108,153,165,57,193,166,167,58,148,133,121,92,252,242,13,233,246,35,103,185,20,27,56,111,169,12,50,50,36,83,156,173,195,143,75,135,78,204,129,217,231,58,129,69,180,185,86,119,43,200,193,94,112,31,135,68,128,207,26,85,150,68,181]`).  <a href=\"https://solflare.com\" target=\"_blank\">Solflare</a> is a popular wallet interface on Solana that allows you to export your private key in this format.
  Object privateKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PrivateKey &&
     other.privateKey == privateKey;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (privateKey == null ? 0 : privateKey.hashCode);

  @override
  String toString() => 'PrivateKey[privateKey=$privateKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'private_key'] = privateKey;
    return json;
  }

  /// Returns a new [PrivateKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PrivateKey fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PrivateKey(
        privateKey: mapValueOfType<Object>(json, r'private_key'),
      );
    }
    return null;
  }

  static List<PrivateKey> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PrivateKey.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PrivateKey>[];

  static Map<String, PrivateKey> mapFromJson(dynamic json) {
    final map = <String, PrivateKey>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PrivateKey.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PrivateKey-objects as value to a dart map
  static Map<String, List<PrivateKey>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PrivateKey>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PrivateKey.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

