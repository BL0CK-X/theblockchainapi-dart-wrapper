//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetCandyMachineIDRequest {
  /// Returns a new [GetCandyMachineIDRequest] instance.
  GetCandyMachineIDRequest({
    @required this.mintAddress,
    this.network = const GetCandyMachineIDRequestNetworkEnum._('devnet'),
  });

  /// The address of the NFT. NOT the mint authority address
  String mintAddress;

  GetCandyMachineIDRequestNetworkEnum network;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetCandyMachineIDRequest &&
     other.mintAddress == mintAddress &&
     other.network == network;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (mintAddress == null ? 0 : mintAddress.hashCode) +
    (network == null ? 0 : network.hashCode);

  @override
  String toString() => 'GetCandyMachineIDRequest[mintAddress=$mintAddress, network=$network]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'mint_address'] = mintAddress;
    if (network != null) {
      json[r'network'] = network;
    }
    return json;
  }

  /// Returns a new [GetCandyMachineIDRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCandyMachineIDRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GetCandyMachineIDRequest(
        mintAddress: mapValueOfType<String>(json, r'mint_address'),
        network: GetCandyMachineIDRequestNetworkEnum.fromJson(json[r'network']),
      );
    }
    return null;
  }

  static List<GetCandyMachineIDRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetCandyMachineIDRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetCandyMachineIDRequest>[];

  static Map<String, GetCandyMachineIDRequest> mapFromJson(dynamic json) {
    final map = <String, GetCandyMachineIDRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GetCandyMachineIDRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GetCandyMachineIDRequest-objects as value to a dart map
  static Map<String, List<GetCandyMachineIDRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetCandyMachineIDRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GetCandyMachineIDRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class GetCandyMachineIDRequestNetworkEnum {
  /// Instantiate a new enum with the provided [value].
  const GetCandyMachineIDRequestNetworkEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const devnet = GetCandyMachineIDRequestNetworkEnum._(r'devnet');
  static const mainnetBeta = GetCandyMachineIDRequestNetworkEnum._(r'mainnet-beta');

  /// List of all possible values in this [enum][GetCandyMachineIDRequestNetworkEnum].
  static const values = <GetCandyMachineIDRequestNetworkEnum>[
    devnet,
    mainnetBeta,
  ];

  static GetCandyMachineIDRequestNetworkEnum fromJson(dynamic value) =>
    GetCandyMachineIDRequestNetworkEnumTypeTransformer().decode(value);

  static List<GetCandyMachineIDRequestNetworkEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetCandyMachineIDRequestNetworkEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetCandyMachineIDRequestNetworkEnum>[];
}

/// Transformation class that can [encode] an instance of [GetCandyMachineIDRequestNetworkEnum] to String,
/// and [decode] dynamic data back to [GetCandyMachineIDRequestNetworkEnum].
class GetCandyMachineIDRequestNetworkEnumTypeTransformer {
  factory GetCandyMachineIDRequestNetworkEnumTypeTransformer() => _instance ??= const GetCandyMachineIDRequestNetworkEnumTypeTransformer._();

  const GetCandyMachineIDRequestNetworkEnumTypeTransformer._();

  String encode(GetCandyMachineIDRequestNetworkEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetCandyMachineIDRequestNetworkEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetCandyMachineIDRequestNetworkEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'devnet': return GetCandyMachineIDRequestNetworkEnum.devnet;
        case r'mainnet-beta': return GetCandyMachineIDRequestNetworkEnum.mainnetBeta;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetCandyMachineIDRequestNetworkEnumTypeTransformer] instance.
  static GetCandyMachineIDRequestNetworkEnumTypeTransformer _instance;
}


