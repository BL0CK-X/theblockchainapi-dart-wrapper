//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetNFTListingResponse {
  /// Returns a new [GetNFTListingResponse] instance.
  GetNFTListingResponse({
    this.exchange,
    this.exchangeReadable,
    this.listingTransactionSignature,
    this.mintAddress,
    this.price,
    this.seller,
  });

  /// The ID of the exchange where the NFT is listed 
  GetNFTListingResponseExchangeEnum exchange;

  /// A readable version of the exchange ID 
  String exchangeReadable;

  /// The signature of the listing transaction 
  String listingTransactionSignature;

  /// The mint address of the NFT 
  String mintAddress;

  /// The price of the NFT in Lamports. Represented as an integer.
  num price;

  /// The public key of the seller
  String seller;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetNFTListingResponse &&
     other.exchange == exchange &&
     other.exchangeReadable == exchangeReadable &&
     other.listingTransactionSignature == listingTransactionSignature &&
     other.mintAddress == mintAddress &&
     other.price == price &&
     other.seller == seller;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (exchange == null ? 0 : exchange.hashCode) +
    (exchangeReadable == null ? 0 : exchangeReadable.hashCode) +
    (listingTransactionSignature == null ? 0 : listingTransactionSignature.hashCode) +
    (mintAddress == null ? 0 : mintAddress.hashCode) +
    (price == null ? 0 : price.hashCode) +
    (seller == null ? 0 : seller.hashCode);

  @override
  String toString() => 'GetNFTListingResponse[exchange=$exchange, exchangeReadable=$exchangeReadable, listingTransactionSignature=$listingTransactionSignature, mintAddress=$mintAddress, price=$price, seller=$seller]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (exchange != null) {
      json[r'exchange'] = exchange;
    }
    if (exchangeReadable != null) {
      json[r'exchange_readable'] = exchangeReadable;
    }
    if (listingTransactionSignature != null) {
      json[r'listing_transaction_signature'] = listingTransactionSignature;
    }
    if (mintAddress != null) {
      json[r'mint_address'] = mintAddress;
    }
    if (price != null) {
      json[r'price'] = price;
    }
    if (seller != null) {
      json[r'seller'] = seller;
    }
    return json;
  }

  /// Returns a new [GetNFTListingResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetNFTListingResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GetNFTListingResponse(
        exchange: GetNFTListingResponseExchangeEnum.fromJson(json[r'exchange']),
        exchangeReadable: mapValueOfType<String>(json, r'exchange_readable'),
        listingTransactionSignature: mapValueOfType<String>(json, r'listing_transaction_signature'),
        mintAddress: mapValueOfType<String>(json, r'mint_address'),
        price: json[r'price'] == null
          ? null
          : num.parse(json[r'price'].toString()),
        seller: mapValueOfType<String>(json, r'seller'),
      );
    }
    return null;
  }

  static List<GetNFTListingResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetNFTListingResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetNFTListingResponse>[];

  static Map<String, GetNFTListingResponse> mapFromJson(dynamic json) {
    final map = <String, GetNFTListingResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GetNFTListingResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GetNFTListingResponse-objects as value to a dart map
  static Map<String, List<GetNFTListingResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetNFTListingResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GetNFTListingResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// The ID of the exchange where the NFT is listed 
class GetNFTListingResponseExchangeEnum {
  /// Instantiate a new enum with the provided [value].
  const GetNFTListingResponseExchangeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const solsea = GetNFTListingResponseExchangeEnum._(r'solsea');

  /// List of all possible values in this [enum][GetNFTListingResponseExchangeEnum].
  static const values = <GetNFTListingResponseExchangeEnum>[
    solsea,
  ];

  static GetNFTListingResponseExchangeEnum fromJson(dynamic value) =>
    GetNFTListingResponseExchangeEnumTypeTransformer().decode(value);

  static List<GetNFTListingResponseExchangeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetNFTListingResponseExchangeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetNFTListingResponseExchangeEnum>[];
}

/// Transformation class that can [encode] an instance of [GetNFTListingResponseExchangeEnum] to String,
/// and [decode] dynamic data back to [GetNFTListingResponseExchangeEnum].
class GetNFTListingResponseExchangeEnumTypeTransformer {
  factory GetNFTListingResponseExchangeEnumTypeTransformer() => _instance ??= const GetNFTListingResponseExchangeEnumTypeTransformer._();

  const GetNFTListingResponseExchangeEnumTypeTransformer._();

  String encode(GetNFTListingResponseExchangeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetNFTListingResponseExchangeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetNFTListingResponseExchangeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'solsea': return GetNFTListingResponseExchangeEnum.solsea;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetNFTListingResponseExchangeEnumTypeTransformer] instance.
  static GetNFTListingResponseExchangeEnumTypeTransformer _instance;
}


