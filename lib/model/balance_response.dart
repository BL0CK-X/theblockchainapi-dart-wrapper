//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BalanceResponse {
  /// Returns a new [BalanceResponse] instance.
  BalanceResponse({
    @required this.balance,
    this.integerBalance,
    this.decimals,
    @required this.network,
    this.unit,
  });

  /// The balance of the token in the wallet
  num balance;

  /// Not included if retreiving SOL balance
  num integerBalance;

  /// Not included if retreiving SOL balance. Sometimes not included if the balance of the token is '0'.
  num decimals;

  BalanceResponseNetworkEnum network;

  /// Not included if retreiving an SPL token/NFT balance
  BalanceResponseUnitEnum unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BalanceResponse &&
     other.balance == balance &&
     other.integerBalance == integerBalance &&
     other.decimals == decimals &&
     other.network == network &&
     other.unit == unit;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (balance == null ? 0 : balance.hashCode) +
    (integerBalance == null ? 0 : integerBalance.hashCode) +
    (decimals == null ? 0 : decimals.hashCode) +
    (network == null ? 0 : network.hashCode) +
    (unit == null ? 0 : unit.hashCode);

  @override
  String toString() => 'BalanceResponse[balance=$balance, integerBalance=$integerBalance, decimals=$decimals, network=$network, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'balance'] = balance;
    if (integerBalance != null) {
      json[r'integer_balance'] = integerBalance;
    }
    if (decimals != null) {
      json[r'decimals'] = decimals;
    }
      json[r'network'] = network;
    if (unit != null) {
      json[r'unit'] = unit;
    }
    return json;
  }

  /// Returns a new [BalanceResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BalanceResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BalanceResponse(
        balance: json[r'balance'] == null
          ? null
          : num.parse(json[r'balance'].toString()),
        integerBalance: json[r'integer_balance'] == null
          ? null
          : num.parse(json[r'integer_balance'].toString()),
        decimals: json[r'decimals'] == null
          ? null
          : num.parse(json[r'decimals'].toString()),
        network: BalanceResponseNetworkEnum.fromJson(json[r'network']),
        unit: BalanceResponseUnitEnum.fromJson(json[r'unit']),
      );
    }
    return null;
  }

  static List<BalanceResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BalanceResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BalanceResponse>[];

  static Map<String, BalanceResponse> mapFromJson(dynamic json) {
    final map = <String, BalanceResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = BalanceResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BalanceResponse-objects as value to a dart map
  static Map<String, List<BalanceResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BalanceResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = BalanceResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class BalanceResponseNetworkEnum {
  /// Instantiate a new enum with the provided [value].
  const BalanceResponseNetworkEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const devnet = BalanceResponseNetworkEnum._(r'devnet');
  static const mainnetBeta = BalanceResponseNetworkEnum._(r'mainnet-beta');

  /// List of all possible values in this [enum][BalanceResponseNetworkEnum].
  static const values = <BalanceResponseNetworkEnum>[
    devnet,
    mainnetBeta,
  ];

  static BalanceResponseNetworkEnum fromJson(dynamic value) =>
    BalanceResponseNetworkEnumTypeTransformer().decode(value);

  static List<BalanceResponseNetworkEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BalanceResponseNetworkEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BalanceResponseNetworkEnum>[];
}

/// Transformation class that can [encode] an instance of [BalanceResponseNetworkEnum] to String,
/// and [decode] dynamic data back to [BalanceResponseNetworkEnum].
class BalanceResponseNetworkEnumTypeTransformer {
  factory BalanceResponseNetworkEnumTypeTransformer() => _instance ??= const BalanceResponseNetworkEnumTypeTransformer._();

  const BalanceResponseNetworkEnumTypeTransformer._();

  String encode(BalanceResponseNetworkEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BalanceResponseNetworkEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BalanceResponseNetworkEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'devnet': return BalanceResponseNetworkEnum.devnet;
        case r'mainnet-beta': return BalanceResponseNetworkEnum.mainnetBeta;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BalanceResponseNetworkEnumTypeTransformer] instance.
  static BalanceResponseNetworkEnumTypeTransformer _instance;
}


/// Not included if retreiving an SPL token/NFT balance
class BalanceResponseUnitEnum {
  /// Instantiate a new enum with the provided [value].
  const BalanceResponseUnitEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const lamport = BalanceResponseUnitEnum._(r'lamport');
  static const sol = BalanceResponseUnitEnum._(r'sol');

  /// List of all possible values in this [enum][BalanceResponseUnitEnum].
  static const values = <BalanceResponseUnitEnum>[
    lamport,
    sol,
  ];

  static BalanceResponseUnitEnum fromJson(dynamic value) =>
    BalanceResponseUnitEnumTypeTransformer().decode(value);

  static List<BalanceResponseUnitEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BalanceResponseUnitEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BalanceResponseUnitEnum>[];
}

/// Transformation class that can [encode] an instance of [BalanceResponseUnitEnum] to String,
/// and [decode] dynamic data back to [BalanceResponseUnitEnum].
class BalanceResponseUnitEnumTypeTransformer {
  factory BalanceResponseUnitEnumTypeTransformer() => _instance ??= const BalanceResponseUnitEnumTypeTransformer._();

  const BalanceResponseUnitEnumTypeTransformer._();

  String encode(BalanceResponseUnitEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BalanceResponseUnitEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BalanceResponseUnitEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'lamport': return BalanceResponseUnitEnum.lamport;
        case r'sol': return BalanceResponseUnitEnum.sol;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BalanceResponseUnitEnumTypeTransformer] instance.
  static BalanceResponseUnitEnumTypeTransformer _instance;
}


