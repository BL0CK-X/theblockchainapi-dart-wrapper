//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SecretPhrase {
  /// Returns a new [SecretPhrase] instance.
  SecretPhrase({
    this.secretRecoveryPhrase,
  });

  /// The twelve word phrase that can be used to derive many public key addresses (e.g., bottom army bless castle alter habit dish embody child flame smooth zone).  To derive a public key, you need a secret recovery phrase, a derivation path, and an optional passphrase.   Alternatively, you can derive a public key with a private key.
  String secretRecoveryPhrase;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SecretPhrase &&
     other.secretRecoveryPhrase == secretRecoveryPhrase;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (secretRecoveryPhrase == null ? 0 : secretRecoveryPhrase.hashCode);

  @override
  String toString() => 'SecretPhrase[secretRecoveryPhrase=$secretRecoveryPhrase]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (secretRecoveryPhrase != null) {
      json[r'secret_recovery_phrase'] = secretRecoveryPhrase;
    }
    return json;
  }

  /// Returns a new [SecretPhrase] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SecretPhrase fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SecretPhrase(
        secretRecoveryPhrase: mapValueOfType<String>(json, r'secret_recovery_phrase'),
      );
    }
    return null;
  }

  static List<SecretPhrase> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SecretPhrase.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SecretPhrase>[];

  static Map<String, SecretPhrase> mapFromJson(dynamic json) {
    final map = <String, SecretPhrase>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SecretPhrase.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SecretPhrase-objects as value to a dart map
  static Map<String, List<SecretPhrase>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SecretPhrase>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SecretPhrase.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

