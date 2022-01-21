//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Wallet {
  /// Returns a new [Wallet] instance.
  Wallet({
    @required this.secretRecoveryPhrase,
    this.derivationPath = 'm/44/501/0/0',
    this.passphrase = '',
    @required this.privateKey,
    @required this.b58PrivateKey,
  });

  /// The twelve word phrase that can be used to derive many public key addresses (e.g., bottom army bless castle alter habit dish embody child flame smooth zone).  To derive a public key, you need a secret recovery phrase, a derivation path, and an optional passphrase.   Alternatively, you can derive a public key with a private key.
  String secretRecoveryPhrase;

  /// Derivation paths are used to derive the public key from the secret recovery phrase. Only certain paths are accepted.  If you provide the empty string \"\" as the value for the derivation path, then we will derive your public key with the same behavior as the default behavior of the Solana CLI.  By default, we use \"m/44/501/0/0\". This is the path that the Phantom and Sollet wallets use.  You can also arbitrarily increment the default path (\"m/44/501/0/0\") to generate more wallets (e.g., \"m/44/501/0/1\", \"m/44/501/0/2\", ... AND/OR \"m/44/501/1/0\", \"m/44/501/2/0\", ...).  Phantom's Wallet increments the first digit (e.g., \"m/44/501/0/0\", \"m/44/501/1/0\", \"m/44/501/2/0\", ...) to generate more public key addresses.  The SolFlare recommended path is \"m/44/501/0\".  To learn more about derivation paths, check out <a href=\"https://learnmeabitcoin.com/technical/derivation-paths\" target=\"_blank\">this tutorial</a>.
  String derivationPath;

  /// PASSPHRASE != PASSWORD. This is NOT your Phantom password or any other password. It is an optional string you use when creating a wallet. This provides an additional layer of security because a hacker would need both the secret recovery phrase and the passphrase to access the output public key. By default, most wallet UI extensions do not use a passphrase. (You probably did not use a passphrase.) Limited to 500 characters. 
  String passphrase;

  /// A private key corresponds to exactly one public key address. A private key can be used to move assets out of the wallet and sign transaction with the corresponding public key.  A private key is an array of integers (e.g.,   `[185,108,153,165,57,193,166,167,58,148,133,121,92,252,242,13,233,246,35,103,185,20,27,56,111,169,12,50,50,36,83,156,173,195,143,75,135,78,204,129,217,231,58,129,69,180,185,86,119,43,200,193,94,112,31,135,68,128,207,26,85,150,68,181]`).  <a href=\"https://solflare.com\" target=\"_blank\">Solflare</a> is a popular wallet interface on Solana that allows you to export your private key in this format.
  Object privateKey;

  /// A private key corresponds to exactly one public key address. A private key can be used to move assets out of the wallet and sign transaction with the corresponding public key.  A base58-encoded private key is a base58-encoded version of the typical private key. It is represented as a string (e.g., `4waBTVeAVWEAczSdx36uMrR19668ACgQDs7r386vrUes3UCzvXCQ2FPSCVGb1zJrwcULgpNzgABreyQaWSpGBwfx`).  <a href=\"https://phantom.app\" target=\"_blank\">Phantom</a> is a popular wallet interface on Solana that allows you to export your private key in this format.
  String b58PrivateKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Wallet &&
     other.secretRecoveryPhrase == secretRecoveryPhrase &&
     other.derivationPath == derivationPath &&
     other.passphrase == passphrase &&
     other.privateKey == privateKey &&
     other.b58PrivateKey == b58PrivateKey;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (secretRecoveryPhrase == null ? 0 : secretRecoveryPhrase.hashCode) +
    (derivationPath == null ? 0 : derivationPath.hashCode) +
    (passphrase == null ? 0 : passphrase.hashCode) +
    (privateKey == null ? 0 : privateKey.hashCode) +
    (b58PrivateKey == null ? 0 : b58PrivateKey.hashCode);

  @override
  String toString() => 'Wallet[secretRecoveryPhrase=$secretRecoveryPhrase, derivationPath=$derivationPath, passphrase=$passphrase, privateKey=$privateKey, b58PrivateKey=$b58PrivateKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'secret_recovery_phrase'] = secretRecoveryPhrase;
    if (derivationPath != null) {
      json[r'derivation_path'] = derivationPath;
    }
    if (passphrase != null) {
      json[r'passphrase'] = passphrase;
    }
      json[r'private_key'] = privateKey;
      json[r'b58_private_key'] = b58PrivateKey;
    return json;
  }

  /// Returns a new [Wallet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Wallet fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Wallet(
        secretRecoveryPhrase: mapValueOfType<String>(json, r'secret_recovery_phrase'),
        derivationPath: mapValueOfType<String>(json, r'derivation_path'),
        passphrase: mapValueOfType<String>(json, r'passphrase'),
        privateKey: mapValueOfType<Object>(json, r'private_key'),
        b58PrivateKey: mapValueOfType<String>(json, r'b58_private_key'),
      );
    }
    return null;
  }

  static List<Wallet> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Wallet.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Wallet>[];

  static Map<String, Wallet> mapFromJson(dynamic json) {
    final map = <String, Wallet>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Wallet.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Wallet-objects as value to a dart map
  static Map<String, List<Wallet>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Wallet>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Wallet.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

