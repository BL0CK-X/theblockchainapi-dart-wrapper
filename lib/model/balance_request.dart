//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BalanceRequest {
  /// Returns a new [BalanceRequest] instance.
  BalanceRequest({
    @required this.publicKey,
    this.unit = const BalanceRequestUnitEnum._('lamport'),
    this.network = const BalanceRequestNetworkEnum._('devnet'),
    this.mintAddress = 'null',
  });

  /// The public key address of the wallet
  String publicKey;

  /// If you are retrieving the SOL balance, you can select whether to retrieve this in SOL or Lamport units (1 SOL = 1e9 Lamports).
  BalanceRequestUnitEnum unit;

  BalanceRequestNetworkEnum network;

  /// The mint address of the SPL token or NFT. If not provided, the balance returned is in SOL. Make sure to use the correct network.  You can see the mint addresses of popular SPL tokens <a href=\"https://raw.githubusercontent.com/solana-labs/token-list/main/src/tokens/solana.tokenlist.json\" target=\"_blank\">here</a>.  Some example mint addresses of SPL tokens: - USDC: EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v - Mango: MangoCzJ36AjZyKwVj3VnYU4GTonjfVEnJmvvWaxLac - Serum: SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt - Raydium: 4k3Dyjzvzp8eMZWUXbBCjEvwSkkk59S5iCNLY3QrkX6R - wSOL: So11111111111111111111111111111111111111112 - ATLAS: ATLASXmbPQxBUYbxPsV97usA3fPQYEqzQBUHgiFCUsXx
  String mintAddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BalanceRequest &&
     other.publicKey == publicKey &&
     other.unit == unit &&
     other.network == network &&
     other.mintAddress == mintAddress;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (publicKey == null ? 0 : publicKey.hashCode) +
    (unit == null ? 0 : unit.hashCode) +
    (network == null ? 0 : network.hashCode) +
    (mintAddress == null ? 0 : mintAddress.hashCode);

  @override
  String toString() => 'BalanceRequest[publicKey=$publicKey, unit=$unit, network=$network, mintAddress=$mintAddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'public_key'] = publicKey;
    if (unit != null) {
      json[r'unit'] = unit;
    }
    if (network != null) {
      json[r'network'] = network;
    }
    if (mintAddress != null) {
      json[r'mint_address'] = mintAddress;
    }
    return json;
  }

  /// Returns a new [BalanceRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BalanceRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BalanceRequest(
        publicKey: mapValueOfType<String>(json, r'public_key'),
        unit: BalanceRequestUnitEnum.fromJson(json[r'unit']),
        network: BalanceRequestNetworkEnum.fromJson(json[r'network']),
        mintAddress: mapValueOfType<String>(json, r'mint_address'),
      );
    }
    return null;
  }

  static List<BalanceRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BalanceRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BalanceRequest>[];

  static Map<String, BalanceRequest> mapFromJson(dynamic json) {
    final map = <String, BalanceRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = BalanceRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BalanceRequest-objects as value to a dart map
  static Map<String, List<BalanceRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BalanceRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = BalanceRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// If you are retrieving the SOL balance, you can select whether to retrieve this in SOL or Lamport units (1 SOL = 1e9 Lamports).
class BalanceRequestUnitEnum {
  /// Instantiate a new enum with the provided [value].
  const BalanceRequestUnitEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const lamport = BalanceRequestUnitEnum._(r'lamport');
  static const sol = BalanceRequestUnitEnum._(r'sol');

  /// List of all possible values in this [enum][BalanceRequestUnitEnum].
  static const values = <BalanceRequestUnitEnum>[
    lamport,
    sol,
  ];

  static BalanceRequestUnitEnum fromJson(dynamic value) =>
    BalanceRequestUnitEnumTypeTransformer().decode(value);

  static List<BalanceRequestUnitEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BalanceRequestUnitEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BalanceRequestUnitEnum>[];
}

/// Transformation class that can [encode] an instance of [BalanceRequestUnitEnum] to String,
/// and [decode] dynamic data back to [BalanceRequestUnitEnum].
class BalanceRequestUnitEnumTypeTransformer {
  factory BalanceRequestUnitEnumTypeTransformer() => _instance ??= const BalanceRequestUnitEnumTypeTransformer._();

  const BalanceRequestUnitEnumTypeTransformer._();

  String encode(BalanceRequestUnitEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BalanceRequestUnitEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BalanceRequestUnitEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'lamport': return BalanceRequestUnitEnum.lamport;
        case r'sol': return BalanceRequestUnitEnum.sol;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BalanceRequestUnitEnumTypeTransformer] instance.
  static BalanceRequestUnitEnumTypeTransformer _instance;
}



class BalanceRequestNetworkEnum {
  /// Instantiate a new enum with the provided [value].
  const BalanceRequestNetworkEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const devnet = BalanceRequestNetworkEnum._(r'devnet');
  static const mainnetBeta = BalanceRequestNetworkEnum._(r'mainnet-beta');

  /// List of all possible values in this [enum][BalanceRequestNetworkEnum].
  static const values = <BalanceRequestNetworkEnum>[
    devnet,
    mainnetBeta,
  ];

  static BalanceRequestNetworkEnum fromJson(dynamic value) =>
    BalanceRequestNetworkEnumTypeTransformer().decode(value);

  static List<BalanceRequestNetworkEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BalanceRequestNetworkEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BalanceRequestNetworkEnum>[];
}

/// Transformation class that can [encode] an instance of [BalanceRequestNetworkEnum] to String,
/// and [decode] dynamic data back to [BalanceRequestNetworkEnum].
class BalanceRequestNetworkEnumTypeTransformer {
  factory BalanceRequestNetworkEnumTypeTransformer() => _instance ??= const BalanceRequestNetworkEnumTypeTransformer._();

  const BalanceRequestNetworkEnumTypeTransformer._();

  String encode(BalanceRequestNetworkEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BalanceRequestNetworkEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BalanceRequestNetworkEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'devnet': return BalanceRequestNetworkEnum.devnet;
        case r'mainnet-beta': return BalanceRequestNetworkEnum.mainnetBeta;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BalanceRequestNetworkEnumTypeTransformer] instance.
  static BalanceRequestNetworkEnumTypeTransformer _instance;
}


