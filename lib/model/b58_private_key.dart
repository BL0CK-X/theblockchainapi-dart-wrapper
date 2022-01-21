//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class B58PrivateKey {
  /// Returns a new [B58PrivateKey] instance.
  B58PrivateKey({
    @required this.b58PrivateKey,
  });

  /// A private key corresponds to exactly one public key address. A private key can be used to move assets out of the wallet and sign transaction with the corresponding public key.  A base58-encoded private key is a base58-encoded version of the typical private key. It is represented as a string (e.g., `4waBTVeAVWEAczSdx36uMrR19668ACgQDs7r386vrUes3UCzvXCQ2FPSCVGb1zJrwcULgpNzgABreyQaWSpGBwfx`).  <a href=\"https://phantom.app\" target=\"_blank\">Phantom</a> is a popular wallet interface on Solana that allows you to export your private key in this format.
  String b58PrivateKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is B58PrivateKey &&
     other.b58PrivateKey == b58PrivateKey;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (b58PrivateKey == null ? 0 : b58PrivateKey.hashCode);

  @override
  String toString() => 'B58PrivateKey[b58PrivateKey=$b58PrivateKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'b58_private_key'] = b58PrivateKey;
    return json;
  }

  /// Returns a new [B58PrivateKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static B58PrivateKey fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return B58PrivateKey(
        b58PrivateKey: mapValueOfType<String>(json, r'b58_private_key'),
      );
    }
    return null;
  }

  static List<B58PrivateKey> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(B58PrivateKey.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <B58PrivateKey>[];

  static Map<String, B58PrivateKey> mapFromJson(dynamic json) {
    final map = <String, B58PrivateKey>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = B58PrivateKey.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of B58PrivateKey-objects as value to a dart map
  static Map<String, List<B58PrivateKey>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<B58PrivateKey>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = B58PrivateKey.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

