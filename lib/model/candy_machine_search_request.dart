//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CandyMachineSearchRequest {
  /// Returns a new [CandyMachineSearchRequest] instance.
  CandyMachineSearchRequest({
    this.updateAuthority,
    this.updateAuthoritySearchMethod = const CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum._('exact_match'),
    this.configAddress,
    this.configAddressSearchMethod = const CandyMachineSearchRequestConfigAddressSearchMethodEnum._('exact_match'),
    this.uuid,
    this.uuidSearchMethod = const CandyMachineSearchRequestUuidSearchMethodEnum._('exact_match'),
    this.symbol,
    this.symbolSearchMethod = const CandyMachineSearchRequestSymbolSearchMethodEnum._('exact_match'),
    this.nftName,
    this.nftNameIndex = '0',
    this.nftNameSearchMethod = const CandyMachineSearchRequestNftNameSearchMethodEnum._('exact_match'),
    this.network = const CandyMachineSearchRequestNetworkEnum._('devnet'),
    this.candyMachineContractVersion = const CandyMachineSearchRequestCandyMachineContractVersionEnum._('v1'),
  });

  /// The public key of the update authority of the candy machine
  String updateAuthority;

  /// Only `exact_match` supported at this time
  CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum updateAuthoritySearchMethod;

  /// The public key of the configuration of the candy machine
  String configAddress;

  /// Only `exact_match` supported at this time
  CandyMachineSearchRequestConfigAddressSearchMethodEnum configAddressSearchMethod;

  /// The alphanumeric string of length six that corresponds to the candy machine. This is NOT the candy machine ID.  This is the first six letters of the configuration address and is also used to identify the candy machine. An example is `4zKV6i`. 
  String uuid;

  /// Only `exact_match` supported at this time
  CandyMachineSearchRequestUuidSearchMethodEnum uuidSearchMethod;

  /// The symbol associated with the candy machine
  String symbol;

  CandyMachineSearchRequestSymbolSearchMethodEnum symbolSearchMethod;

  /// The name of an NFT on the candy machine, minted or unminted. For example, to find The Solana Money Boys candy machine, you already know that each NFT is named \"Solana Money Boy #0\", \"Solana Money Boy #1\", and so on. So you could search with  nft_name=\"Solana Money Boy #0\", nft_name_index=0, nft_name_search_method='exact_match', for example, which would return the candy machine ID. This also works with candy machines that are not live but are uploaded. 
  String nftName;

  /// The index of the NFT to check, e.g., the 2nd NFT would have an index of 1. We cannot search all NFTs on a candy machine currently, so you must search an NFT at a particular position, such as the first, second, and so on. In general, nft_name_index=0 works for most use cases. 
  String nftNameIndex;

  CandyMachineSearchRequestNftNameSearchMethodEnum nftNameSearchMethod;

  CandyMachineSearchRequestNetworkEnum network;

  /// The candy machine contract you want to search.  If you want to search `v1` candy machines, set this to `v1`. If you want to search `v2` candy machines. set this to `v2`. 
  CandyMachineSearchRequestCandyMachineContractVersionEnum candyMachineContractVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CandyMachineSearchRequest &&
     other.updateAuthority == updateAuthority &&
     other.updateAuthoritySearchMethod == updateAuthoritySearchMethod &&
     other.configAddress == configAddress &&
     other.configAddressSearchMethod == configAddressSearchMethod &&
     other.uuid == uuid &&
     other.uuidSearchMethod == uuidSearchMethod &&
     other.symbol == symbol &&
     other.symbolSearchMethod == symbolSearchMethod &&
     other.nftName == nftName &&
     other.nftNameIndex == nftNameIndex &&
     other.nftNameSearchMethod == nftNameSearchMethod &&
     other.network == network &&
     other.candyMachineContractVersion == candyMachineContractVersion;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (updateAuthority == null ? 0 : updateAuthority.hashCode) +
    (updateAuthoritySearchMethod == null ? 0 : updateAuthoritySearchMethod.hashCode) +
    (configAddress == null ? 0 : configAddress.hashCode) +
    (configAddressSearchMethod == null ? 0 : configAddressSearchMethod.hashCode) +
    (uuid == null ? 0 : uuid.hashCode) +
    (uuidSearchMethod == null ? 0 : uuidSearchMethod.hashCode) +
    (symbol == null ? 0 : symbol.hashCode) +
    (symbolSearchMethod == null ? 0 : symbolSearchMethod.hashCode) +
    (nftName == null ? 0 : nftName.hashCode) +
    (nftNameIndex == null ? 0 : nftNameIndex.hashCode) +
    (nftNameSearchMethod == null ? 0 : nftNameSearchMethod.hashCode) +
    (network == null ? 0 : network.hashCode) +
    (candyMachineContractVersion == null ? 0 : candyMachineContractVersion.hashCode);

  @override
  String toString() => 'CandyMachineSearchRequest[updateAuthority=$updateAuthority, updateAuthoritySearchMethod=$updateAuthoritySearchMethod, configAddress=$configAddress, configAddressSearchMethod=$configAddressSearchMethod, uuid=$uuid, uuidSearchMethod=$uuidSearchMethod, symbol=$symbol, symbolSearchMethod=$symbolSearchMethod, nftName=$nftName, nftNameIndex=$nftNameIndex, nftNameSearchMethod=$nftNameSearchMethod, network=$network, candyMachineContractVersion=$candyMachineContractVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (updateAuthority != null) {
      json[r'update_authority'] = updateAuthority;
    }
    if (updateAuthoritySearchMethod != null) {
      json[r'update_authority_search_method'] = updateAuthoritySearchMethod;
    }
    if (configAddress != null) {
      json[r'config_address'] = configAddress;
    }
    if (configAddressSearchMethod != null) {
      json[r'config_address_search_method'] = configAddressSearchMethod;
    }
    if (uuid != null) {
      json[r'uuid'] = uuid;
    }
    if (uuidSearchMethod != null) {
      json[r'uuid_search_method'] = uuidSearchMethod;
    }
    if (symbol != null) {
      json[r'symbol'] = symbol;
    }
    if (symbolSearchMethod != null) {
      json[r'symbol_search_method'] = symbolSearchMethod;
    }
    if (nftName != null) {
      json[r'nft_name'] = nftName;
    }
    if (nftNameIndex != null) {
      json[r'nft_name_index'] = nftNameIndex;
    }
    if (nftNameSearchMethod != null) {
      json[r'nft_name_search_method'] = nftNameSearchMethod;
    }
    if (network != null) {
      json[r'network'] = network;
    }
    if (candyMachineContractVersion != null) {
      json[r'candy_machine_contract_version'] = candyMachineContractVersion;
    }
    return json;
  }

  /// Returns a new [CandyMachineSearchRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CandyMachineSearchRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CandyMachineSearchRequest(
        updateAuthority: mapValueOfType<String>(json, r'update_authority'),
        updateAuthoritySearchMethod: CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum.fromJson(json[r'update_authority_search_method']),
        configAddress: mapValueOfType<String>(json, r'config_address'),
        configAddressSearchMethod: CandyMachineSearchRequestConfigAddressSearchMethodEnum.fromJson(json[r'config_address_search_method']),
        uuid: mapValueOfType<String>(json, r'uuid'),
        uuidSearchMethod: CandyMachineSearchRequestUuidSearchMethodEnum.fromJson(json[r'uuid_search_method']),
        symbol: mapValueOfType<String>(json, r'symbol'),
        symbolSearchMethod: CandyMachineSearchRequestSymbolSearchMethodEnum.fromJson(json[r'symbol_search_method']),
        nftName: mapValueOfType<String>(json, r'nft_name'),
        nftNameIndex: mapValueOfType<String>(json, r'nft_name_index'),
        nftNameSearchMethod: CandyMachineSearchRequestNftNameSearchMethodEnum.fromJson(json[r'nft_name_search_method']),
        network: CandyMachineSearchRequestNetworkEnum.fromJson(json[r'network']),
        candyMachineContractVersion: CandyMachineSearchRequestCandyMachineContractVersionEnum.fromJson(json[r'candy_machine_contract_version']),
      );
    }
    return null;
  }

  static List<CandyMachineSearchRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CandyMachineSearchRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CandyMachineSearchRequest>[];

  static Map<String, CandyMachineSearchRequest> mapFromJson(dynamic json) {
    final map = <String, CandyMachineSearchRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CandyMachineSearchRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CandyMachineSearchRequest-objects as value to a dart map
  static Map<String, List<CandyMachineSearchRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CandyMachineSearchRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CandyMachineSearchRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// Only `exact_match` supported at this time
class CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const exactMatch = CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum._(r'exact_match');

  /// List of all possible values in this [enum][CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum].
  static const values = <CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum>[
    exactMatch,
  ];

  static CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum fromJson(dynamic value) =>
    CandyMachineSearchRequestUpdateAuthoritySearchMethodEnumTypeTransformer().decode(value);

  static List<CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum>[];
}

/// Transformation class that can [encode] an instance of [CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum] to String,
/// and [decode] dynamic data back to [CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum].
class CandyMachineSearchRequestUpdateAuthoritySearchMethodEnumTypeTransformer {
  factory CandyMachineSearchRequestUpdateAuthoritySearchMethodEnumTypeTransformer() => _instance ??= const CandyMachineSearchRequestUpdateAuthoritySearchMethodEnumTypeTransformer._();

  const CandyMachineSearchRequestUpdateAuthoritySearchMethodEnumTypeTransformer._();

  String encode(CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'exact_match': return CandyMachineSearchRequestUpdateAuthoritySearchMethodEnum.exactMatch;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CandyMachineSearchRequestUpdateAuthoritySearchMethodEnumTypeTransformer] instance.
  static CandyMachineSearchRequestUpdateAuthoritySearchMethodEnumTypeTransformer _instance;
}


/// Only `exact_match` supported at this time
class CandyMachineSearchRequestConfigAddressSearchMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const CandyMachineSearchRequestConfigAddressSearchMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const exactMatch = CandyMachineSearchRequestConfigAddressSearchMethodEnum._(r'exact_match');

  /// List of all possible values in this [enum][CandyMachineSearchRequestConfigAddressSearchMethodEnum].
  static const values = <CandyMachineSearchRequestConfigAddressSearchMethodEnum>[
    exactMatch,
  ];

  static CandyMachineSearchRequestConfigAddressSearchMethodEnum fromJson(dynamic value) =>
    CandyMachineSearchRequestConfigAddressSearchMethodEnumTypeTransformer().decode(value);

  static List<CandyMachineSearchRequestConfigAddressSearchMethodEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CandyMachineSearchRequestConfigAddressSearchMethodEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CandyMachineSearchRequestConfigAddressSearchMethodEnum>[];
}

/// Transformation class that can [encode] an instance of [CandyMachineSearchRequestConfigAddressSearchMethodEnum] to String,
/// and [decode] dynamic data back to [CandyMachineSearchRequestConfigAddressSearchMethodEnum].
class CandyMachineSearchRequestConfigAddressSearchMethodEnumTypeTransformer {
  factory CandyMachineSearchRequestConfigAddressSearchMethodEnumTypeTransformer() => _instance ??= const CandyMachineSearchRequestConfigAddressSearchMethodEnumTypeTransformer._();

  const CandyMachineSearchRequestConfigAddressSearchMethodEnumTypeTransformer._();

  String encode(CandyMachineSearchRequestConfigAddressSearchMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CandyMachineSearchRequestConfigAddressSearchMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CandyMachineSearchRequestConfigAddressSearchMethodEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'exact_match': return CandyMachineSearchRequestConfigAddressSearchMethodEnum.exactMatch;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CandyMachineSearchRequestConfigAddressSearchMethodEnumTypeTransformer] instance.
  static CandyMachineSearchRequestConfigAddressSearchMethodEnumTypeTransformer _instance;
}


/// Only `exact_match` supported at this time
class CandyMachineSearchRequestUuidSearchMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const CandyMachineSearchRequestUuidSearchMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const exactMatch = CandyMachineSearchRequestUuidSearchMethodEnum._(r'exact_match');

  /// List of all possible values in this [enum][CandyMachineSearchRequestUuidSearchMethodEnum].
  static const values = <CandyMachineSearchRequestUuidSearchMethodEnum>[
    exactMatch,
  ];

  static CandyMachineSearchRequestUuidSearchMethodEnum fromJson(dynamic value) =>
    CandyMachineSearchRequestUuidSearchMethodEnumTypeTransformer().decode(value);

  static List<CandyMachineSearchRequestUuidSearchMethodEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CandyMachineSearchRequestUuidSearchMethodEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CandyMachineSearchRequestUuidSearchMethodEnum>[];
}

/// Transformation class that can [encode] an instance of [CandyMachineSearchRequestUuidSearchMethodEnum] to String,
/// and [decode] dynamic data back to [CandyMachineSearchRequestUuidSearchMethodEnum].
class CandyMachineSearchRequestUuidSearchMethodEnumTypeTransformer {
  factory CandyMachineSearchRequestUuidSearchMethodEnumTypeTransformer() => _instance ??= const CandyMachineSearchRequestUuidSearchMethodEnumTypeTransformer._();

  const CandyMachineSearchRequestUuidSearchMethodEnumTypeTransformer._();

  String encode(CandyMachineSearchRequestUuidSearchMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CandyMachineSearchRequestUuidSearchMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CandyMachineSearchRequestUuidSearchMethodEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'exact_match': return CandyMachineSearchRequestUuidSearchMethodEnum.exactMatch;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CandyMachineSearchRequestUuidSearchMethodEnumTypeTransformer] instance.
  static CandyMachineSearchRequestUuidSearchMethodEnumTypeTransformer _instance;
}



class CandyMachineSearchRequestSymbolSearchMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const CandyMachineSearchRequestSymbolSearchMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const beginsWith = CandyMachineSearchRequestSymbolSearchMethodEnum._(r'begins_with');
  static const exactMatch = CandyMachineSearchRequestSymbolSearchMethodEnum._(r'exact_match');

  /// List of all possible values in this [enum][CandyMachineSearchRequestSymbolSearchMethodEnum].
  static const values = <CandyMachineSearchRequestSymbolSearchMethodEnum>[
    beginsWith,
    exactMatch,
  ];

  static CandyMachineSearchRequestSymbolSearchMethodEnum fromJson(dynamic value) =>
    CandyMachineSearchRequestSymbolSearchMethodEnumTypeTransformer().decode(value);

  static List<CandyMachineSearchRequestSymbolSearchMethodEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CandyMachineSearchRequestSymbolSearchMethodEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CandyMachineSearchRequestSymbolSearchMethodEnum>[];
}

/// Transformation class that can [encode] an instance of [CandyMachineSearchRequestSymbolSearchMethodEnum] to String,
/// and [decode] dynamic data back to [CandyMachineSearchRequestSymbolSearchMethodEnum].
class CandyMachineSearchRequestSymbolSearchMethodEnumTypeTransformer {
  factory CandyMachineSearchRequestSymbolSearchMethodEnumTypeTransformer() => _instance ??= const CandyMachineSearchRequestSymbolSearchMethodEnumTypeTransformer._();

  const CandyMachineSearchRequestSymbolSearchMethodEnumTypeTransformer._();

  String encode(CandyMachineSearchRequestSymbolSearchMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CandyMachineSearchRequestSymbolSearchMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CandyMachineSearchRequestSymbolSearchMethodEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'begins_with': return CandyMachineSearchRequestSymbolSearchMethodEnum.beginsWith;
        case r'exact_match': return CandyMachineSearchRequestSymbolSearchMethodEnum.exactMatch;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CandyMachineSearchRequestSymbolSearchMethodEnumTypeTransformer] instance.
  static CandyMachineSearchRequestSymbolSearchMethodEnumTypeTransformer _instance;
}



class CandyMachineSearchRequestNftNameSearchMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const CandyMachineSearchRequestNftNameSearchMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const beginsWith = CandyMachineSearchRequestNftNameSearchMethodEnum._(r'begins_with');
  static const exactMatch = CandyMachineSearchRequestNftNameSearchMethodEnum._(r'exact_match');

  /// List of all possible values in this [enum][CandyMachineSearchRequestNftNameSearchMethodEnum].
  static const values = <CandyMachineSearchRequestNftNameSearchMethodEnum>[
    beginsWith,
    exactMatch,
  ];

  static CandyMachineSearchRequestNftNameSearchMethodEnum fromJson(dynamic value) =>
    CandyMachineSearchRequestNftNameSearchMethodEnumTypeTransformer().decode(value);

  static List<CandyMachineSearchRequestNftNameSearchMethodEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CandyMachineSearchRequestNftNameSearchMethodEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CandyMachineSearchRequestNftNameSearchMethodEnum>[];
}

/// Transformation class that can [encode] an instance of [CandyMachineSearchRequestNftNameSearchMethodEnum] to String,
/// and [decode] dynamic data back to [CandyMachineSearchRequestNftNameSearchMethodEnum].
class CandyMachineSearchRequestNftNameSearchMethodEnumTypeTransformer {
  factory CandyMachineSearchRequestNftNameSearchMethodEnumTypeTransformer() => _instance ??= const CandyMachineSearchRequestNftNameSearchMethodEnumTypeTransformer._();

  const CandyMachineSearchRequestNftNameSearchMethodEnumTypeTransformer._();

  String encode(CandyMachineSearchRequestNftNameSearchMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CandyMachineSearchRequestNftNameSearchMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CandyMachineSearchRequestNftNameSearchMethodEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'begins_with': return CandyMachineSearchRequestNftNameSearchMethodEnum.beginsWith;
        case r'exact_match': return CandyMachineSearchRequestNftNameSearchMethodEnum.exactMatch;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CandyMachineSearchRequestNftNameSearchMethodEnumTypeTransformer] instance.
  static CandyMachineSearchRequestNftNameSearchMethodEnumTypeTransformer _instance;
}



class CandyMachineSearchRequestNetworkEnum {
  /// Instantiate a new enum with the provided [value].
  const CandyMachineSearchRequestNetworkEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const devnet = CandyMachineSearchRequestNetworkEnum._(r'devnet');
  static const mainnetBeta = CandyMachineSearchRequestNetworkEnum._(r'mainnet-beta');

  /// List of all possible values in this [enum][CandyMachineSearchRequestNetworkEnum].
  static const values = <CandyMachineSearchRequestNetworkEnum>[
    devnet,
    mainnetBeta,
  ];

  static CandyMachineSearchRequestNetworkEnum fromJson(dynamic value) =>
    CandyMachineSearchRequestNetworkEnumTypeTransformer().decode(value);

  static List<CandyMachineSearchRequestNetworkEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CandyMachineSearchRequestNetworkEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CandyMachineSearchRequestNetworkEnum>[];
}

/// Transformation class that can [encode] an instance of [CandyMachineSearchRequestNetworkEnum] to String,
/// and [decode] dynamic data back to [CandyMachineSearchRequestNetworkEnum].
class CandyMachineSearchRequestNetworkEnumTypeTransformer {
  factory CandyMachineSearchRequestNetworkEnumTypeTransformer() => _instance ??= const CandyMachineSearchRequestNetworkEnumTypeTransformer._();

  const CandyMachineSearchRequestNetworkEnumTypeTransformer._();

  String encode(CandyMachineSearchRequestNetworkEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CandyMachineSearchRequestNetworkEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CandyMachineSearchRequestNetworkEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'devnet': return CandyMachineSearchRequestNetworkEnum.devnet;
        case r'mainnet-beta': return CandyMachineSearchRequestNetworkEnum.mainnetBeta;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CandyMachineSearchRequestNetworkEnumTypeTransformer] instance.
  static CandyMachineSearchRequestNetworkEnumTypeTransformer _instance;
}


/// The candy machine contract you want to search.  If you want to search `v1` candy machines, set this to `v1`. If you want to search `v2` candy machines. set this to `v2`. 
class CandyMachineSearchRequestCandyMachineContractVersionEnum {
  /// Instantiate a new enum with the provided [value].
  const CandyMachineSearchRequestCandyMachineContractVersionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const v1 = CandyMachineSearchRequestCandyMachineContractVersionEnum._(r'v1');
  static const v2 = CandyMachineSearchRequestCandyMachineContractVersionEnum._(r'v2');

  /// List of all possible values in this [enum][CandyMachineSearchRequestCandyMachineContractVersionEnum].
  static const values = <CandyMachineSearchRequestCandyMachineContractVersionEnum>[
    v1,
    v2,
  ];

  static CandyMachineSearchRequestCandyMachineContractVersionEnum fromJson(dynamic value) =>
    CandyMachineSearchRequestCandyMachineContractVersionEnumTypeTransformer().decode(value);

  static List<CandyMachineSearchRequestCandyMachineContractVersionEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CandyMachineSearchRequestCandyMachineContractVersionEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CandyMachineSearchRequestCandyMachineContractVersionEnum>[];
}

/// Transformation class that can [encode] an instance of [CandyMachineSearchRequestCandyMachineContractVersionEnum] to String,
/// and [decode] dynamic data back to [CandyMachineSearchRequestCandyMachineContractVersionEnum].
class CandyMachineSearchRequestCandyMachineContractVersionEnumTypeTransformer {
  factory CandyMachineSearchRequestCandyMachineContractVersionEnumTypeTransformer() => _instance ??= const CandyMachineSearchRequestCandyMachineContractVersionEnumTypeTransformer._();

  const CandyMachineSearchRequestCandyMachineContractVersionEnumTypeTransformer._();

  String encode(CandyMachineSearchRequestCandyMachineContractVersionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CandyMachineSearchRequestCandyMachineContractVersionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CandyMachineSearchRequestCandyMachineContractVersionEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'v1': return CandyMachineSearchRequestCandyMachineContractVersionEnum.v1;
        case r'v2': return CandyMachineSearchRequestCandyMachineContractVersionEnum.v2;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CandyMachineSearchRequestCandyMachineContractVersionEnumTypeTransformer] instance.
  static CandyMachineSearchRequestCandyMachineContractVersionEnumTypeTransformer _instance;
}


