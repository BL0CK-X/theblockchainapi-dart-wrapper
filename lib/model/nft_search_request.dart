//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NFTSearchRequest {
  /// Returns a new [NFTSearchRequest] instance.
  NFTSearchRequest({
    this.updateAuthority,
    this.updateAuthoritySearchMethod = const NFTSearchRequestUpdateAuthoritySearchMethodEnum._('exact_match'),
    this.mintAddress,
    this.mintAddressSearchMethod = const NFTSearchRequestMintAddressSearchMethodEnum._('exact_match'),
    this.name,
    this.nameSearchMethod = const NFTSearchRequestNameSearchMethodEnum._('exact_match'),
    this.uri,
    this.uriSearchMethod = const NFTSearchRequestUriSearchMethodEnum._('exact_match'),
    this.symbol,
    this.symbolSearchMethod = const NFTSearchRequestSymbolSearchMethodEnum._('exact_match'),
    this.network = const NFTSearchRequestNetworkEnum._('devnet'),
  });

  /// The public key of the update authority of the NFT
  String updateAuthority;

  /// Only `exact_match` supported at this time
  NFTSearchRequestUpdateAuthoritySearchMethodEnum updateAuthoritySearchMethod;

  /// The mint address of the NFT
  String mintAddress;

  /// Only `exact_match` supported at this time
  NFTSearchRequestMintAddressSearchMethodEnum mintAddressSearchMethod;

  /// The name of the NFT
  String name;

  NFTSearchRequestNameSearchMethodEnum nameSearchMethod;

  /// The NFT's uri
  String uri;

  NFTSearchRequestUriSearchMethodEnum uriSearchMethod;

  /// The symbol associated with the candy machine
  String symbol;

  NFTSearchRequestSymbolSearchMethodEnum symbolSearchMethod;

  NFTSearchRequestNetworkEnum network;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NFTSearchRequest &&
     other.updateAuthority == updateAuthority &&
     other.updateAuthoritySearchMethod == updateAuthoritySearchMethod &&
     other.mintAddress == mintAddress &&
     other.mintAddressSearchMethod == mintAddressSearchMethod &&
     other.name == name &&
     other.nameSearchMethod == nameSearchMethod &&
     other.uri == uri &&
     other.uriSearchMethod == uriSearchMethod &&
     other.symbol == symbol &&
     other.symbolSearchMethod == symbolSearchMethod &&
     other.network == network;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (updateAuthority == null ? 0 : updateAuthority.hashCode) +
    (updateAuthoritySearchMethod == null ? 0 : updateAuthoritySearchMethod.hashCode) +
    (mintAddress == null ? 0 : mintAddress.hashCode) +
    (mintAddressSearchMethod == null ? 0 : mintAddressSearchMethod.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (nameSearchMethod == null ? 0 : nameSearchMethod.hashCode) +
    (uri == null ? 0 : uri.hashCode) +
    (uriSearchMethod == null ? 0 : uriSearchMethod.hashCode) +
    (symbol == null ? 0 : symbol.hashCode) +
    (symbolSearchMethod == null ? 0 : symbolSearchMethod.hashCode) +
    (network == null ? 0 : network.hashCode);

  @override
  String toString() => 'NFTSearchRequest[updateAuthority=$updateAuthority, updateAuthoritySearchMethod=$updateAuthoritySearchMethod, mintAddress=$mintAddress, mintAddressSearchMethod=$mintAddressSearchMethod, name=$name, nameSearchMethod=$nameSearchMethod, uri=$uri, uriSearchMethod=$uriSearchMethod, symbol=$symbol, symbolSearchMethod=$symbolSearchMethod, network=$network]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (updateAuthority != null) {
      json[r'update_authority'] = updateAuthority;
    }
    if (updateAuthoritySearchMethod != null) {
      json[r'update_authority_search_method'] = updateAuthoritySearchMethod;
    }
    if (mintAddress != null) {
      json[r'mint_address'] = mintAddress;
    }
    if (mintAddressSearchMethod != null) {
      json[r'mint_address_search_method'] = mintAddressSearchMethod;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (nameSearchMethod != null) {
      json[r'name_search_method'] = nameSearchMethod;
    }
    if (uri != null) {
      json[r'uri'] = uri;
    }
    if (uriSearchMethod != null) {
      json[r'uri_search_method'] = uriSearchMethod;
    }
    if (symbol != null) {
      json[r'symbol'] = symbol;
    }
    if (symbolSearchMethod != null) {
      json[r'symbol_search_method'] = symbolSearchMethod;
    }
    if (network != null) {
      json[r'network'] = network;
    }
    return json;
  }

  /// Returns a new [NFTSearchRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NFTSearchRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NFTSearchRequest(
        updateAuthority: mapValueOfType<String>(json, r'update_authority'),
        updateAuthoritySearchMethod: NFTSearchRequestUpdateAuthoritySearchMethodEnum.fromJson(json[r'update_authority_search_method']),
        mintAddress: mapValueOfType<String>(json, r'mint_address'),
        mintAddressSearchMethod: NFTSearchRequestMintAddressSearchMethodEnum.fromJson(json[r'mint_address_search_method']),
        name: mapValueOfType<String>(json, r'name'),
        nameSearchMethod: NFTSearchRequestNameSearchMethodEnum.fromJson(json[r'name_search_method']),
        uri: mapValueOfType<String>(json, r'uri'),
        uriSearchMethod: NFTSearchRequestUriSearchMethodEnum.fromJson(json[r'uri_search_method']),
        symbol: mapValueOfType<String>(json, r'symbol'),
        symbolSearchMethod: NFTSearchRequestSymbolSearchMethodEnum.fromJson(json[r'symbol_search_method']),
        network: NFTSearchRequestNetworkEnum.fromJson(json[r'network']),
      );
    }
    return null;
  }

  static List<NFTSearchRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NFTSearchRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NFTSearchRequest>[];

  static Map<String, NFTSearchRequest> mapFromJson(dynamic json) {
    final map = <String, NFTSearchRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NFTSearchRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NFTSearchRequest-objects as value to a dart map
  static Map<String, List<NFTSearchRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NFTSearchRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NFTSearchRequest.listFromJson(
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
class NFTSearchRequestUpdateAuthoritySearchMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const NFTSearchRequestUpdateAuthoritySearchMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const exactMatch = NFTSearchRequestUpdateAuthoritySearchMethodEnum._(r'exact_match');

  /// List of all possible values in this [enum][NFTSearchRequestUpdateAuthoritySearchMethodEnum].
  static const values = <NFTSearchRequestUpdateAuthoritySearchMethodEnum>[
    exactMatch,
  ];

  static NFTSearchRequestUpdateAuthoritySearchMethodEnum fromJson(dynamic value) =>
    NFTSearchRequestUpdateAuthoritySearchMethodEnumTypeTransformer().decode(value);

  static List<NFTSearchRequestUpdateAuthoritySearchMethodEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NFTSearchRequestUpdateAuthoritySearchMethodEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NFTSearchRequestUpdateAuthoritySearchMethodEnum>[];
}

/// Transformation class that can [encode] an instance of [NFTSearchRequestUpdateAuthoritySearchMethodEnum] to String,
/// and [decode] dynamic data back to [NFTSearchRequestUpdateAuthoritySearchMethodEnum].
class NFTSearchRequestUpdateAuthoritySearchMethodEnumTypeTransformer {
  factory NFTSearchRequestUpdateAuthoritySearchMethodEnumTypeTransformer() => _instance ??= const NFTSearchRequestUpdateAuthoritySearchMethodEnumTypeTransformer._();

  const NFTSearchRequestUpdateAuthoritySearchMethodEnumTypeTransformer._();

  String encode(NFTSearchRequestUpdateAuthoritySearchMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NFTSearchRequestUpdateAuthoritySearchMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NFTSearchRequestUpdateAuthoritySearchMethodEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'exact_match': return NFTSearchRequestUpdateAuthoritySearchMethodEnum.exactMatch;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NFTSearchRequestUpdateAuthoritySearchMethodEnumTypeTransformer] instance.
  static NFTSearchRequestUpdateAuthoritySearchMethodEnumTypeTransformer _instance;
}


/// Only `exact_match` supported at this time
class NFTSearchRequestMintAddressSearchMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const NFTSearchRequestMintAddressSearchMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const exactMatch = NFTSearchRequestMintAddressSearchMethodEnum._(r'exact_match');

  /// List of all possible values in this [enum][NFTSearchRequestMintAddressSearchMethodEnum].
  static const values = <NFTSearchRequestMintAddressSearchMethodEnum>[
    exactMatch,
  ];

  static NFTSearchRequestMintAddressSearchMethodEnum fromJson(dynamic value) =>
    NFTSearchRequestMintAddressSearchMethodEnumTypeTransformer().decode(value);

  static List<NFTSearchRequestMintAddressSearchMethodEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NFTSearchRequestMintAddressSearchMethodEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NFTSearchRequestMintAddressSearchMethodEnum>[];
}

/// Transformation class that can [encode] an instance of [NFTSearchRequestMintAddressSearchMethodEnum] to String,
/// and [decode] dynamic data back to [NFTSearchRequestMintAddressSearchMethodEnum].
class NFTSearchRequestMintAddressSearchMethodEnumTypeTransformer {
  factory NFTSearchRequestMintAddressSearchMethodEnumTypeTransformer() => _instance ??= const NFTSearchRequestMintAddressSearchMethodEnumTypeTransformer._();

  const NFTSearchRequestMintAddressSearchMethodEnumTypeTransformer._();

  String encode(NFTSearchRequestMintAddressSearchMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NFTSearchRequestMintAddressSearchMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NFTSearchRequestMintAddressSearchMethodEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'exact_match': return NFTSearchRequestMintAddressSearchMethodEnum.exactMatch;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NFTSearchRequestMintAddressSearchMethodEnumTypeTransformer] instance.
  static NFTSearchRequestMintAddressSearchMethodEnumTypeTransformer _instance;
}



class NFTSearchRequestNameSearchMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const NFTSearchRequestNameSearchMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const beginsWith = NFTSearchRequestNameSearchMethodEnum._(r'begins_with');
  static const exactMatch = NFTSearchRequestNameSearchMethodEnum._(r'exact_match');

  /// List of all possible values in this [enum][NFTSearchRequestNameSearchMethodEnum].
  static const values = <NFTSearchRequestNameSearchMethodEnum>[
    beginsWith,
    exactMatch,
  ];

  static NFTSearchRequestNameSearchMethodEnum fromJson(dynamic value) =>
    NFTSearchRequestNameSearchMethodEnumTypeTransformer().decode(value);

  static List<NFTSearchRequestNameSearchMethodEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NFTSearchRequestNameSearchMethodEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NFTSearchRequestNameSearchMethodEnum>[];
}

/// Transformation class that can [encode] an instance of [NFTSearchRequestNameSearchMethodEnum] to String,
/// and [decode] dynamic data back to [NFTSearchRequestNameSearchMethodEnum].
class NFTSearchRequestNameSearchMethodEnumTypeTransformer {
  factory NFTSearchRequestNameSearchMethodEnumTypeTransformer() => _instance ??= const NFTSearchRequestNameSearchMethodEnumTypeTransformer._();

  const NFTSearchRequestNameSearchMethodEnumTypeTransformer._();

  String encode(NFTSearchRequestNameSearchMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NFTSearchRequestNameSearchMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NFTSearchRequestNameSearchMethodEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'begins_with': return NFTSearchRequestNameSearchMethodEnum.beginsWith;
        case r'exact_match': return NFTSearchRequestNameSearchMethodEnum.exactMatch;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NFTSearchRequestNameSearchMethodEnumTypeTransformer] instance.
  static NFTSearchRequestNameSearchMethodEnumTypeTransformer _instance;
}



class NFTSearchRequestUriSearchMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const NFTSearchRequestUriSearchMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const beginsWith = NFTSearchRequestUriSearchMethodEnum._(r'begins_with');
  static const exactMatch = NFTSearchRequestUriSearchMethodEnum._(r'exact_match');

  /// List of all possible values in this [enum][NFTSearchRequestUriSearchMethodEnum].
  static const values = <NFTSearchRequestUriSearchMethodEnum>[
    beginsWith,
    exactMatch,
  ];

  static NFTSearchRequestUriSearchMethodEnum fromJson(dynamic value) =>
    NFTSearchRequestUriSearchMethodEnumTypeTransformer().decode(value);

  static List<NFTSearchRequestUriSearchMethodEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NFTSearchRequestUriSearchMethodEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NFTSearchRequestUriSearchMethodEnum>[];
}

/// Transformation class that can [encode] an instance of [NFTSearchRequestUriSearchMethodEnum] to String,
/// and [decode] dynamic data back to [NFTSearchRequestUriSearchMethodEnum].
class NFTSearchRequestUriSearchMethodEnumTypeTransformer {
  factory NFTSearchRequestUriSearchMethodEnumTypeTransformer() => _instance ??= const NFTSearchRequestUriSearchMethodEnumTypeTransformer._();

  const NFTSearchRequestUriSearchMethodEnumTypeTransformer._();

  String encode(NFTSearchRequestUriSearchMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NFTSearchRequestUriSearchMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NFTSearchRequestUriSearchMethodEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'begins_with': return NFTSearchRequestUriSearchMethodEnum.beginsWith;
        case r'exact_match': return NFTSearchRequestUriSearchMethodEnum.exactMatch;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NFTSearchRequestUriSearchMethodEnumTypeTransformer] instance.
  static NFTSearchRequestUriSearchMethodEnumTypeTransformer _instance;
}



class NFTSearchRequestSymbolSearchMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const NFTSearchRequestSymbolSearchMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const beginsWith = NFTSearchRequestSymbolSearchMethodEnum._(r'begins_with');
  static const exactMatch = NFTSearchRequestSymbolSearchMethodEnum._(r'exact_match');

  /// List of all possible values in this [enum][NFTSearchRequestSymbolSearchMethodEnum].
  static const values = <NFTSearchRequestSymbolSearchMethodEnum>[
    beginsWith,
    exactMatch,
  ];

  static NFTSearchRequestSymbolSearchMethodEnum fromJson(dynamic value) =>
    NFTSearchRequestSymbolSearchMethodEnumTypeTransformer().decode(value);

  static List<NFTSearchRequestSymbolSearchMethodEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NFTSearchRequestSymbolSearchMethodEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NFTSearchRequestSymbolSearchMethodEnum>[];
}

/// Transformation class that can [encode] an instance of [NFTSearchRequestSymbolSearchMethodEnum] to String,
/// and [decode] dynamic data back to [NFTSearchRequestSymbolSearchMethodEnum].
class NFTSearchRequestSymbolSearchMethodEnumTypeTransformer {
  factory NFTSearchRequestSymbolSearchMethodEnumTypeTransformer() => _instance ??= const NFTSearchRequestSymbolSearchMethodEnumTypeTransformer._();

  const NFTSearchRequestSymbolSearchMethodEnumTypeTransformer._();

  String encode(NFTSearchRequestSymbolSearchMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NFTSearchRequestSymbolSearchMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NFTSearchRequestSymbolSearchMethodEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'begins_with': return NFTSearchRequestSymbolSearchMethodEnum.beginsWith;
        case r'exact_match': return NFTSearchRequestSymbolSearchMethodEnum.exactMatch;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NFTSearchRequestSymbolSearchMethodEnumTypeTransformer] instance.
  static NFTSearchRequestSymbolSearchMethodEnumTypeTransformer _instance;
}



class NFTSearchRequestNetworkEnum {
  /// Instantiate a new enum with the provided [value].
  const NFTSearchRequestNetworkEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const devnet = NFTSearchRequestNetworkEnum._(r'devnet');
  static const mainnetBeta = NFTSearchRequestNetworkEnum._(r'mainnet-beta');

  /// List of all possible values in this [enum][NFTSearchRequestNetworkEnum].
  static const values = <NFTSearchRequestNetworkEnum>[
    devnet,
    mainnetBeta,
  ];

  static NFTSearchRequestNetworkEnum fromJson(dynamic value) =>
    NFTSearchRequestNetworkEnumTypeTransformer().decode(value);

  static List<NFTSearchRequestNetworkEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NFTSearchRequestNetworkEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NFTSearchRequestNetworkEnum>[];
}

/// Transformation class that can [encode] an instance of [NFTSearchRequestNetworkEnum] to String,
/// and [decode] dynamic data back to [NFTSearchRequestNetworkEnum].
class NFTSearchRequestNetworkEnumTypeTransformer {
  factory NFTSearchRequestNetworkEnumTypeTransformer() => _instance ??= const NFTSearchRequestNetworkEnumTypeTransformer._();

  const NFTSearchRequestNetworkEnumTypeTransformer._();

  String encode(NFTSearchRequestNetworkEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NFTSearchRequestNetworkEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NFTSearchRequestNetworkEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'devnet': return NFTSearchRequestNetworkEnum.devnet;
        case r'mainnet-beta': return NFTSearchRequestNetworkEnum.mainnetBeta;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NFTSearchRequestNetworkEnumTypeTransformer] instance.
  static NFTSearchRequestNetworkEnumTypeTransformer _instance;
}


