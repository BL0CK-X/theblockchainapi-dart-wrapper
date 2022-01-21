//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetCandyMetadataRequest {
  /// Returns a new [GetCandyMetadataRequest] instance.
  GetCandyMetadataRequest({
    this.candyMachineId,
    this.configAddress,
    this.uuid,
    this.network = const GetCandyMetadataRequestNetworkEnum._('devnet'),
    this.candyMachineContractVersion = const GetCandyMetadataRequestCandyMachineContractVersionEnum._('v1'),
  });

  /// The ID of the candy machine. This is the same as `config_address` for `v2` candy machines (supply either). 
  String candyMachineId;

  /// The configuration address of the candy machine. This is the same as `candy_machine_id` for `v2` candy machines (supply either). 
  String configAddress;

  /// The uuid of the candy machine. This is an alphanumeric string of length six (e.g., HpVdfP), which corresponds to the first six characters of the config_address. 
  String uuid;

  GetCandyMetadataRequestNetworkEnum network;

  /// The candy machine contract of the candy machine for which you are retrieving the metadata. If you are providing `v1` candy machine ID, set this to `v1`. If you are providing `v2` candy machine ID, set this to `v2`. If you don't know which version your candy machine is, check out <a href=\"#operation/solanaGetAccountIsCandyMachine\">this endpoint</a>. 
  GetCandyMetadataRequestCandyMachineContractVersionEnum candyMachineContractVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetCandyMetadataRequest &&
     other.candyMachineId == candyMachineId &&
     other.configAddress == configAddress &&
     other.uuid == uuid &&
     other.network == network &&
     other.candyMachineContractVersion == candyMachineContractVersion;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (candyMachineId == null ? 0 : candyMachineId.hashCode) +
    (configAddress == null ? 0 : configAddress.hashCode) +
    (uuid == null ? 0 : uuid.hashCode) +
    (network == null ? 0 : network.hashCode) +
    (candyMachineContractVersion == null ? 0 : candyMachineContractVersion.hashCode);

  @override
  String toString() => 'GetCandyMetadataRequest[candyMachineId=$candyMachineId, configAddress=$configAddress, uuid=$uuid, network=$network, candyMachineContractVersion=$candyMachineContractVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (candyMachineId != null) {
      json[r'candy_machine_id'] = candyMachineId;
    }
    if (configAddress != null) {
      json[r'config_address'] = configAddress;
    }
    if (uuid != null) {
      json[r'uuid'] = uuid;
    }
    if (network != null) {
      json[r'network'] = network;
    }
    if (candyMachineContractVersion != null) {
      json[r'candy_machine_contract_version'] = candyMachineContractVersion;
    }
    return json;
  }

  /// Returns a new [GetCandyMetadataRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCandyMetadataRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GetCandyMetadataRequest(
        candyMachineId: mapValueOfType<String>(json, r'candy_machine_id'),
        configAddress: mapValueOfType<String>(json, r'config_address'),
        uuid: mapValueOfType<String>(json, r'uuid'),
        network: GetCandyMetadataRequestNetworkEnum.fromJson(json[r'network']),
        candyMachineContractVersion: GetCandyMetadataRequestCandyMachineContractVersionEnum.fromJson(json[r'candy_machine_contract_version']),
      );
    }
    return null;
  }

  static List<GetCandyMetadataRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetCandyMetadataRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetCandyMetadataRequest>[];

  static Map<String, GetCandyMetadataRequest> mapFromJson(dynamic json) {
    final map = <String, GetCandyMetadataRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GetCandyMetadataRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GetCandyMetadataRequest-objects as value to a dart map
  static Map<String, List<GetCandyMetadataRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetCandyMetadataRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GetCandyMetadataRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class GetCandyMetadataRequestNetworkEnum {
  /// Instantiate a new enum with the provided [value].
  const GetCandyMetadataRequestNetworkEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const devnet = GetCandyMetadataRequestNetworkEnum._(r'devnet');
  static const mainnetBeta = GetCandyMetadataRequestNetworkEnum._(r'mainnet-beta');

  /// List of all possible values in this [enum][GetCandyMetadataRequestNetworkEnum].
  static const values = <GetCandyMetadataRequestNetworkEnum>[
    devnet,
    mainnetBeta,
  ];

  static GetCandyMetadataRequestNetworkEnum fromJson(dynamic value) =>
    GetCandyMetadataRequestNetworkEnumTypeTransformer().decode(value);

  static List<GetCandyMetadataRequestNetworkEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetCandyMetadataRequestNetworkEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetCandyMetadataRequestNetworkEnum>[];
}

/// Transformation class that can [encode] an instance of [GetCandyMetadataRequestNetworkEnum] to String,
/// and [decode] dynamic data back to [GetCandyMetadataRequestNetworkEnum].
class GetCandyMetadataRequestNetworkEnumTypeTransformer {
  factory GetCandyMetadataRequestNetworkEnumTypeTransformer() => _instance ??= const GetCandyMetadataRequestNetworkEnumTypeTransformer._();

  const GetCandyMetadataRequestNetworkEnumTypeTransformer._();

  String encode(GetCandyMetadataRequestNetworkEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetCandyMetadataRequestNetworkEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetCandyMetadataRequestNetworkEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'devnet': return GetCandyMetadataRequestNetworkEnum.devnet;
        case r'mainnet-beta': return GetCandyMetadataRequestNetworkEnum.mainnetBeta;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetCandyMetadataRequestNetworkEnumTypeTransformer] instance.
  static GetCandyMetadataRequestNetworkEnumTypeTransformer _instance;
}


/// The candy machine contract of the candy machine for which you are retrieving the metadata. If you are providing `v1` candy machine ID, set this to `v1`. If you are providing `v2` candy machine ID, set this to `v2`. If you don't know which version your candy machine is, check out <a href=\"#operation/solanaGetAccountIsCandyMachine\">this endpoint</a>. 
class GetCandyMetadataRequestCandyMachineContractVersionEnum {
  /// Instantiate a new enum with the provided [value].
  const GetCandyMetadataRequestCandyMachineContractVersionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const v1 = GetCandyMetadataRequestCandyMachineContractVersionEnum._(r'v1');
  static const v2 = GetCandyMetadataRequestCandyMachineContractVersionEnum._(r'v2');

  /// List of all possible values in this [enum][GetCandyMetadataRequestCandyMachineContractVersionEnum].
  static const values = <GetCandyMetadataRequestCandyMachineContractVersionEnum>[
    v1,
    v2,
  ];

  static GetCandyMetadataRequestCandyMachineContractVersionEnum fromJson(dynamic value) =>
    GetCandyMetadataRequestCandyMachineContractVersionEnumTypeTransformer().decode(value);

  static List<GetCandyMetadataRequestCandyMachineContractVersionEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetCandyMetadataRequestCandyMachineContractVersionEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetCandyMetadataRequestCandyMachineContractVersionEnum>[];
}

/// Transformation class that can [encode] an instance of [GetCandyMetadataRequestCandyMachineContractVersionEnum] to String,
/// and [decode] dynamic data back to [GetCandyMetadataRequestCandyMachineContractVersionEnum].
class GetCandyMetadataRequestCandyMachineContractVersionEnumTypeTransformer {
  factory GetCandyMetadataRequestCandyMachineContractVersionEnumTypeTransformer() => _instance ??= const GetCandyMetadataRequestCandyMachineContractVersionEnumTypeTransformer._();

  const GetCandyMetadataRequestCandyMachineContractVersionEnumTypeTransformer._();

  String encode(GetCandyMetadataRequestCandyMachineContractVersionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetCandyMetadataRequestCandyMachineContractVersionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetCandyMetadataRequestCandyMachineContractVersionEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'v1': return GetCandyMetadataRequestCandyMachineContractVersionEnum.v1;
        case r'v2': return GetCandyMetadataRequestCandyMachineContractVersionEnum.v2;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetCandyMetadataRequestCandyMachineContractVersionEnumTypeTransformer] instance.
  static GetCandyMetadataRequestCandyMachineContractVersionEnumTypeTransformer _instance;
}


