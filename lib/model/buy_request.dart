//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BuyRequest {
  /// Returns a new [BuyRequest] instance.
  BuyRequest({
    @required this.wallet,
    @required this.nftPrice,
  });

  Wallet wallet;

  /// The number of lamports you are expecting to purchase the NFT for. We check the price of the NFT before  purchasing it to ensure that it matches your expectation. There are 1e9 (1 billion) Lamports in a SOL. 
  num nftPrice;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BuyRequest &&
     other.wallet == wallet &&
     other.nftPrice == nftPrice;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (wallet == null ? 0 : wallet.hashCode) +
    (nftPrice == null ? 0 : nftPrice.hashCode);

  @override
  String toString() => 'BuyRequest[wallet=$wallet, nftPrice=$nftPrice]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'wallet'] = wallet;
      json[r'nft_price'] = nftPrice;
    return json;
  }

  /// Returns a new [BuyRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuyRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BuyRequest(
        wallet: Wallet.fromJson(json[r'wallet']),
        nftPrice: json[r'nft_price'] == null
          ? null
          : num.parse(json[r'nft_price'].toString()),
      );
    }
    return null;
  }

  static List<BuyRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BuyRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BuyRequest>[];

  static Map<String, BuyRequest> mapFromJson(dynamic json) {
    final map = <String, BuyRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = BuyRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BuyRequest-objects as value to a dart map
  static Map<String, List<BuyRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BuyRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = BuyRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

