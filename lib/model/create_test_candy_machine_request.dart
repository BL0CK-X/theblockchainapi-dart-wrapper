//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateTestCandyMachineRequest {
  /// Returns a new [CreateTestCandyMachineRequest] instance.
  CreateTestCandyMachineRequest({
    @required this.wallet,
    this.network = const CreateTestCandyMachineRequestNetworkEnum._('devnet'),
    this.candyMachineContractVersion = const CreateTestCandyMachineRequestCandyMachineContractVersionEnum._('v2'),
    this.includeGatekeeper = false,
  });

  Wallet wallet;

  CreateTestCandyMachineRequestNetworkEnum network;

  /// The contract you want to use to create the candy machine. Note: Metaplex disabled the creation of `v1` candy machines on their smart contract, and so we no longer support the creation of `v1` test candy machines. 
  CreateTestCandyMachineRequestCandyMachineContractVersionEnum candyMachineContractVersion;

  /// Whether or not to include a gatekeeper for testing purposes. Only applies to v2 candy machines.
  bool includeGatekeeper;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateTestCandyMachineRequest &&
     other.wallet == wallet &&
     other.network == network &&
     other.candyMachineContractVersion == candyMachineContractVersion &&
     other.includeGatekeeper == includeGatekeeper;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (wallet == null ? 0 : wallet.hashCode) +
    (network == null ? 0 : network.hashCode) +
    (candyMachineContractVersion == null ? 0 : candyMachineContractVersion.hashCode) +
    (includeGatekeeper == null ? 0 : includeGatekeeper.hashCode);

  @override
  String toString() => 'CreateTestCandyMachineRequest[wallet=$wallet, network=$network, candyMachineContractVersion=$candyMachineContractVersion, includeGatekeeper=$includeGatekeeper]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'wallet'] = wallet;
    if (network != null) {
      json[r'network'] = network;
    }
    if (candyMachineContractVersion != null) {
      json[r'candy_machine_contract_version'] = candyMachineContractVersion;
    }
    if (includeGatekeeper != null) {
      json[r'include_gatekeeper'] = includeGatekeeper;
    }
    return json;
  }

  /// Returns a new [CreateTestCandyMachineRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateTestCandyMachineRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CreateTestCandyMachineRequest(
        wallet: Wallet.fromJson(json[r'wallet']),
        network: CreateTestCandyMachineRequestNetworkEnum.fromJson(json[r'network']),
        candyMachineContractVersion: CreateTestCandyMachineRequestCandyMachineContractVersionEnum.fromJson(json[r'candy_machine_contract_version']),
        includeGatekeeper: mapValueOfType<bool>(json, r'include_gatekeeper'),
      );
    }
    return null;
  }

  static List<CreateTestCandyMachineRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CreateTestCandyMachineRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CreateTestCandyMachineRequest>[];

  static Map<String, CreateTestCandyMachineRequest> mapFromJson(dynamic json) {
    final map = <String, CreateTestCandyMachineRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CreateTestCandyMachineRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateTestCandyMachineRequest-objects as value to a dart map
  static Map<String, List<CreateTestCandyMachineRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateTestCandyMachineRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CreateTestCandyMachineRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class CreateTestCandyMachineRequestNetworkEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateTestCandyMachineRequestNetworkEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const devnet = CreateTestCandyMachineRequestNetworkEnum._(r'devnet');
  static const mainnetBeta = CreateTestCandyMachineRequestNetworkEnum._(r'mainnet-beta');

  /// List of all possible values in this [enum][CreateTestCandyMachineRequestNetworkEnum].
  static const values = <CreateTestCandyMachineRequestNetworkEnum>[
    devnet,
    mainnetBeta,
  ];

  static CreateTestCandyMachineRequestNetworkEnum fromJson(dynamic value) =>
    CreateTestCandyMachineRequestNetworkEnumTypeTransformer().decode(value);

  static List<CreateTestCandyMachineRequestNetworkEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CreateTestCandyMachineRequestNetworkEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CreateTestCandyMachineRequestNetworkEnum>[];
}

/// Transformation class that can [encode] an instance of [CreateTestCandyMachineRequestNetworkEnum] to String,
/// and [decode] dynamic data back to [CreateTestCandyMachineRequestNetworkEnum].
class CreateTestCandyMachineRequestNetworkEnumTypeTransformer {
  factory CreateTestCandyMachineRequestNetworkEnumTypeTransformer() => _instance ??= const CreateTestCandyMachineRequestNetworkEnumTypeTransformer._();

  const CreateTestCandyMachineRequestNetworkEnumTypeTransformer._();

  String encode(CreateTestCandyMachineRequestNetworkEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateTestCandyMachineRequestNetworkEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateTestCandyMachineRequestNetworkEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'devnet': return CreateTestCandyMachineRequestNetworkEnum.devnet;
        case r'mainnet-beta': return CreateTestCandyMachineRequestNetworkEnum.mainnetBeta;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateTestCandyMachineRequestNetworkEnumTypeTransformer] instance.
  static CreateTestCandyMachineRequestNetworkEnumTypeTransformer _instance;
}


/// The contract you want to use to create the candy machine. Note: Metaplex disabled the creation of `v1` candy machines on their smart contract, and so we no longer support the creation of `v1` test candy machines. 
class CreateTestCandyMachineRequestCandyMachineContractVersionEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateTestCandyMachineRequestCandyMachineContractVersionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const v2 = CreateTestCandyMachineRequestCandyMachineContractVersionEnum._(r'v2');

  /// List of all possible values in this [enum][CreateTestCandyMachineRequestCandyMachineContractVersionEnum].
  static const values = <CreateTestCandyMachineRequestCandyMachineContractVersionEnum>[
    v2,
  ];

  static CreateTestCandyMachineRequestCandyMachineContractVersionEnum fromJson(dynamic value) =>
    CreateTestCandyMachineRequestCandyMachineContractVersionEnumTypeTransformer().decode(value);

  static List<CreateTestCandyMachineRequestCandyMachineContractVersionEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CreateTestCandyMachineRequestCandyMachineContractVersionEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CreateTestCandyMachineRequestCandyMachineContractVersionEnum>[];
}

/// Transformation class that can [encode] an instance of [CreateTestCandyMachineRequestCandyMachineContractVersionEnum] to String,
/// and [decode] dynamic data back to [CreateTestCandyMachineRequestCandyMachineContractVersionEnum].
class CreateTestCandyMachineRequestCandyMachineContractVersionEnumTypeTransformer {
  factory CreateTestCandyMachineRequestCandyMachineContractVersionEnumTypeTransformer() => _instance ??= const CreateTestCandyMachineRequestCandyMachineContractVersionEnumTypeTransformer._();

  const CreateTestCandyMachineRequestCandyMachineContractVersionEnumTypeTransformer._();

  String encode(CreateTestCandyMachineRequestCandyMachineContractVersionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateTestCandyMachineRequestCandyMachineContractVersionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateTestCandyMachineRequestCandyMachineContractVersionEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'v2': return CreateTestCandyMachineRequestCandyMachineContractVersionEnum.v2;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateTestCandyMachineRequestCandyMachineContractVersionEnumTypeTransformer] instance.
  static CreateTestCandyMachineRequestCandyMachineContractVersionEnumTypeTransformer _instance;
}


