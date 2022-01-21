//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MintNFTRequest {
  /// Returns a new [MintNFTRequest] instance.
  MintNFTRequest({
    @required this.wallet,
    @required this.configAddress,
    this.network = const MintNFTRequestNetworkEnum._('devnet'),
    this.candyMachineContractVersion = const MintNFTRequestCandyMachineContractVersionEnum._('v1'),
  });

  Wallet wallet;

  /// The config address of the candy machine. You can retrieve this if you have the candy machine ID using <a href=\"#operation/solanaGetCandyMachineDetails\">this endpoint</a> and retrieving the `config_address` from the response.  A candy machine ID is the same thing as a configuration address for v2 candy machines. 
  String configAddress;

  MintNFTRequestNetworkEnum network;

  /// The candy machine contract of the candy machine from which you're minting. If you are minting from a `v1` candy machine ID, set this to `v1`. If you are minting from a `v2` candy machine ID, set this to `v2`. If you don't know which the version of your candy machine, check out <a href=\"#operation/solanaGetAccountIsCandyMachine\">this endpoint</a>. 
  MintNFTRequestCandyMachineContractVersionEnum candyMachineContractVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MintNFTRequest &&
     other.wallet == wallet &&
     other.configAddress == configAddress &&
     other.network == network &&
     other.candyMachineContractVersion == candyMachineContractVersion;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (wallet == null ? 0 : wallet.hashCode) +
    (configAddress == null ? 0 : configAddress.hashCode) +
    (network == null ? 0 : network.hashCode) +
    (candyMachineContractVersion == null ? 0 : candyMachineContractVersion.hashCode);

  @override
  String toString() => 'MintNFTRequest[wallet=$wallet, configAddress=$configAddress, network=$network, candyMachineContractVersion=$candyMachineContractVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'wallet'] = wallet;
      json[r'config_address'] = configAddress;
    if (network != null) {
      json[r'network'] = network;
    }
    if (candyMachineContractVersion != null) {
      json[r'candy_machine_contract_version'] = candyMachineContractVersion;
    }
    return json;
  }

  /// Returns a new [MintNFTRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MintNFTRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MintNFTRequest(
        wallet: Wallet.fromJson(json[r'wallet']),
        configAddress: mapValueOfType<String>(json, r'config_address'),
        network: MintNFTRequestNetworkEnum.fromJson(json[r'network']),
        candyMachineContractVersion: MintNFTRequestCandyMachineContractVersionEnum.fromJson(json[r'candy_machine_contract_version']),
      );
    }
    return null;
  }

  static List<MintNFTRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MintNFTRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MintNFTRequest>[];

  static Map<String, MintNFTRequest> mapFromJson(dynamic json) {
    final map = <String, MintNFTRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MintNFTRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MintNFTRequest-objects as value to a dart map
  static Map<String, List<MintNFTRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MintNFTRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MintNFTRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class MintNFTRequestNetworkEnum {
  /// Instantiate a new enum with the provided [value].
  const MintNFTRequestNetworkEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const devnet = MintNFTRequestNetworkEnum._(r'devnet');
  static const mainnetBeta = MintNFTRequestNetworkEnum._(r'mainnet-beta');

  /// List of all possible values in this [enum][MintNFTRequestNetworkEnum].
  static const values = <MintNFTRequestNetworkEnum>[
    devnet,
    mainnetBeta,
  ];

  static MintNFTRequestNetworkEnum fromJson(dynamic value) =>
    MintNFTRequestNetworkEnumTypeTransformer().decode(value);

  static List<MintNFTRequestNetworkEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MintNFTRequestNetworkEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MintNFTRequestNetworkEnum>[];
}

/// Transformation class that can [encode] an instance of [MintNFTRequestNetworkEnum] to String,
/// and [decode] dynamic data back to [MintNFTRequestNetworkEnum].
class MintNFTRequestNetworkEnumTypeTransformer {
  factory MintNFTRequestNetworkEnumTypeTransformer() => _instance ??= const MintNFTRequestNetworkEnumTypeTransformer._();

  const MintNFTRequestNetworkEnumTypeTransformer._();

  String encode(MintNFTRequestNetworkEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MintNFTRequestNetworkEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MintNFTRequestNetworkEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'devnet': return MintNFTRequestNetworkEnum.devnet;
        case r'mainnet-beta': return MintNFTRequestNetworkEnum.mainnetBeta;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MintNFTRequestNetworkEnumTypeTransformer] instance.
  static MintNFTRequestNetworkEnumTypeTransformer _instance;
}


/// The candy machine contract of the candy machine from which you're minting. If you are minting from a `v1` candy machine ID, set this to `v1`. If you are minting from a `v2` candy machine ID, set this to `v2`. If you don't know which the version of your candy machine, check out <a href=\"#operation/solanaGetAccountIsCandyMachine\">this endpoint</a>. 
class MintNFTRequestCandyMachineContractVersionEnum {
  /// Instantiate a new enum with the provided [value].
  const MintNFTRequestCandyMachineContractVersionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const v1 = MintNFTRequestCandyMachineContractVersionEnum._(r'v1');
  static const v2 = MintNFTRequestCandyMachineContractVersionEnum._(r'v2');

  /// List of all possible values in this [enum][MintNFTRequestCandyMachineContractVersionEnum].
  static const values = <MintNFTRequestCandyMachineContractVersionEnum>[
    v1,
    v2,
  ];

  static MintNFTRequestCandyMachineContractVersionEnum fromJson(dynamic value) =>
    MintNFTRequestCandyMachineContractVersionEnumTypeTransformer().decode(value);

  static List<MintNFTRequestCandyMachineContractVersionEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MintNFTRequestCandyMachineContractVersionEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MintNFTRequestCandyMachineContractVersionEnum>[];
}

/// Transformation class that can [encode] an instance of [MintNFTRequestCandyMachineContractVersionEnum] to String,
/// and [decode] dynamic data back to [MintNFTRequestCandyMachineContractVersionEnum].
class MintNFTRequestCandyMachineContractVersionEnumTypeTransformer {
  factory MintNFTRequestCandyMachineContractVersionEnumTypeTransformer() => _instance ??= const MintNFTRequestCandyMachineContractVersionEnumTypeTransformer._();

  const MintNFTRequestCandyMachineContractVersionEnumTypeTransformer._();

  String encode(MintNFTRequestCandyMachineContractVersionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MintNFTRequestCandyMachineContractVersionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MintNFTRequestCandyMachineContractVersionEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'v1': return MintNFTRequestCandyMachineContractVersionEnum.v1;
        case r'v2': return MintNFTRequestCandyMachineContractVersionEnum.v2;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MintNFTRequestCandyMachineContractVersionEnumTypeTransformer] instance.
  static MintNFTRequestCandyMachineContractVersionEnumTypeTransformer _instance;
}


