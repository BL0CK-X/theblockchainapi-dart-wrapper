//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SecretRecoveryPhrase {
  /// Returns a new [SecretRecoveryPhrase] instance.
  SecretRecoveryPhrase({
    @required this.secretRecoveryPhrase,
    this.derivationPath = 'm/44/501/0/0',
    this.passphrase = '',
  });

  /// The twelve word phrase that can be used to derive many public key addresses (e.g., bottom army bless castle alter habit dish embody child flame smooth zone).  To derive a public key, you need a secret recovery phrase, a derivation path, and an optional passphrase.   Alternatively, you can derive a public key with a private key.
  String secretRecoveryPhrase;

  /// Derivation paths are used to derive the public key from the secret recovery phrase. Only certain paths are accepted.  If you provide the empty string \"\" as the value for the derivation path, then we will derive your public key with the same behavior as the default behavior of the Solana CLI.  By default, we use \"m/44/501/0/0\". This is the path that the Phantom and Sollet wallets use.  You can also arbitrarily increment the default path (\"m/44/501/0/0\") to generate more wallets (e.g., \"m/44/501/0/1\", \"m/44/501/0/2\", ... AND/OR \"m/44/501/1/0\", \"m/44/501/2/0\", ...).  Phantom's Wallet increments the first digit (e.g., \"m/44/501/0/0\", \"m/44/501/1/0\", \"m/44/501/2/0\", ...) to generate more public key addresses.  The SolFlare recommended path is \"m/44/501/0\".  To learn more about derivation paths, check out <a href=\"https://learnmeabitcoin.com/technical/derivation-paths\" target=\"_blank\">this tutorial</a>.
  String derivationPath;

  /// PASSPHRASE != PASSWORD. This is NOT your Phantom password or any other password. It is an optional string you use when creating a wallet. This provides an additional layer of security because a hacker would need both the secret recovery phrase and the passphrase to access the output public key. By default, most wallet UI extensions do not use a passphrase. (You probably did not use a passphrase.) Limited to 500 characters. 
  String passphrase;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SecretRecoveryPhrase &&
     other.secretRecoveryPhrase == secretRecoveryPhrase &&
     other.derivationPath == derivationPath &&
     other.passphrase == passphrase;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (secretRecoveryPhrase == null ? 0 : secretRecoveryPhrase.hashCode) +
    (derivationPath == null ? 0 : derivationPath.hashCode) +
    (passphrase == null ? 0 : passphrase.hashCode);

  @override
  String toString() => 'SecretRecoveryPhrase[secretRecoveryPhrase=$secretRecoveryPhrase, derivationPath=$derivationPath, passphrase=$passphrase]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'secret_recovery_phrase'] = secretRecoveryPhrase;
    if (derivationPath != null) {
      json[r'derivation_path'] = derivationPath;
    }
    if (passphrase != null) {
      json[r'passphrase'] = passphrase;
    }
    return json;
  }

  /// Returns a new [SecretRecoveryPhrase] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SecretRecoveryPhrase fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SecretRecoveryPhrase(
        secretRecoveryPhrase: mapValueOfType<String>(json, r'secret_recovery_phrase'),
        derivationPath: mapValueOfType<String>(json, r'derivation_path'),
        passphrase: mapValueOfType<String>(json, r'passphrase'),
      );
    }
    return null;
  }

  static List<SecretRecoveryPhrase> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SecretRecoveryPhrase.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SecretRecoveryPhrase>[];

  static Map<String, SecretRecoveryPhrase> mapFromJson(dynamic json) {
    final map = <String, SecretRecoveryPhrase>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SecretRecoveryPhrase.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SecretRecoveryPhrase-objects as value to a dart map
  static Map<String, List<SecretRecoveryPhrase>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SecretRecoveryPhrase>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SecretRecoveryPhrase.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

