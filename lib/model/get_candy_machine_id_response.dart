//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetCandyMachineIDResponse {
  /// Returns a new [GetCandyMachineIDResponse] instance.
  GetCandyMachineIDResponse({
    this.candyMachineId,
    this.candyMachineContractVersion,
  });

  /// The ID of the candy machine that minted the NFT
  String candyMachineId;

  /// Whether or not this corresponds to candy machine v1, candy machine v2, or a Magic Eden candy machine.
  GetCandyMachineIDResponseCandyMachineContractVersionEnum candyMachineContractVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetCandyMachineIDResponse &&
     other.candyMachineId == candyMachineId &&
     other.candyMachineContractVersion == candyMachineContractVersion;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (candyMachineId == null ? 0 : candyMachineId.hashCode) +
    (candyMachineContractVersion == null ? 0 : candyMachineContractVersion.hashCode);

  @override
  String toString() => 'GetCandyMachineIDResponse[candyMachineId=$candyMachineId, candyMachineContractVersion=$candyMachineContractVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (candyMachineId != null) {
      json[r'candy_machine_id'] = candyMachineId;
    }
    if (candyMachineContractVersion != null) {
      json[r'candy_machine_contract_version'] = candyMachineContractVersion;
    }
    return json;
  }

  /// Returns a new [GetCandyMachineIDResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCandyMachineIDResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GetCandyMachineIDResponse(
        candyMachineId: mapValueOfType<String>(json, r'candy_machine_id'),
        candyMachineContractVersion: GetCandyMachineIDResponseCandyMachineContractVersionEnum.fromJson(json[r'candy_machine_contract_version']),
      );
    }
    return null;
  }

  static List<GetCandyMachineIDResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetCandyMachineIDResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetCandyMachineIDResponse>[];

  static Map<String, GetCandyMachineIDResponse> mapFromJson(dynamic json) {
    final map = <String, GetCandyMachineIDResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GetCandyMachineIDResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GetCandyMachineIDResponse-objects as value to a dart map
  static Map<String, List<GetCandyMachineIDResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetCandyMachineIDResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GetCandyMachineIDResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// Whether or not this corresponds to candy machine v1, candy machine v2, or a Magic Eden candy machine.
class GetCandyMachineIDResponseCandyMachineContractVersionEnum {
  /// Instantiate a new enum with the provided [value].
  const GetCandyMachineIDResponseCandyMachineContractVersionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const v1 = GetCandyMachineIDResponseCandyMachineContractVersionEnum._(r'v1');
  static const v2 = GetCandyMachineIDResponseCandyMachineContractVersionEnum._(r'v2');
  static const magicEdenV1 = GetCandyMachineIDResponseCandyMachineContractVersionEnum._(r'magic-eden-v1');

  /// List of all possible values in this [enum][GetCandyMachineIDResponseCandyMachineContractVersionEnum].
  static const values = <GetCandyMachineIDResponseCandyMachineContractVersionEnum>[
    v1,
    v2,
    magicEdenV1,
  ];

  static GetCandyMachineIDResponseCandyMachineContractVersionEnum fromJson(dynamic value) =>
    GetCandyMachineIDResponseCandyMachineContractVersionEnumTypeTransformer().decode(value);

  static List<GetCandyMachineIDResponseCandyMachineContractVersionEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetCandyMachineIDResponseCandyMachineContractVersionEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetCandyMachineIDResponseCandyMachineContractVersionEnum>[];
}

/// Transformation class that can [encode] an instance of [GetCandyMachineIDResponseCandyMachineContractVersionEnum] to String,
/// and [decode] dynamic data back to [GetCandyMachineIDResponseCandyMachineContractVersionEnum].
class GetCandyMachineIDResponseCandyMachineContractVersionEnumTypeTransformer {
  factory GetCandyMachineIDResponseCandyMachineContractVersionEnumTypeTransformer() => _instance ??= const GetCandyMachineIDResponseCandyMachineContractVersionEnumTypeTransformer._();

  const GetCandyMachineIDResponseCandyMachineContractVersionEnumTypeTransformer._();

  String encode(GetCandyMachineIDResponseCandyMachineContractVersionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetCandyMachineIDResponseCandyMachineContractVersionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetCandyMachineIDResponseCandyMachineContractVersionEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'v1': return GetCandyMachineIDResponseCandyMachineContractVersionEnum.v1;
        case r'v2': return GetCandyMachineIDResponseCandyMachineContractVersionEnum.v2;
        case r'magic-eden-v1': return GetCandyMachineIDResponseCandyMachineContractVersionEnum.magicEdenV1;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetCandyMachineIDResponseCandyMachineContractVersionEnumTypeTransformer] instance.
  static GetCandyMachineIDResponseCandyMachineContractVersionEnumTypeTransformer _instance;
}


