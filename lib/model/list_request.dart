//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListRequest {
  /// Returns a new [ListRequest] instance.
  ListRequest({
    @required this.wallet,
    @required this.nftPrice,
  });

  Wallet wallet;

  ///  The number of lamports you are expecting to sell the NFT for.  There are 1e9 (1 billion) Lamports in a SOL.    Min price: 1   Max price: 18446744073709551615 
  num nftPrice;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListRequest &&
     other.wallet == wallet &&
     other.nftPrice == nftPrice;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (wallet == null ? 0 : wallet.hashCode) +
    (nftPrice == null ? 0 : nftPrice.hashCode);

  @override
  String toString() => 'ListRequest[wallet=$wallet, nftPrice=$nftPrice]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'wallet'] = wallet;
      json[r'nft_price'] = nftPrice;
    return json;
  }

  /// Returns a new [ListRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListRequest(
        wallet: Wallet.fromJson(json[r'wallet']),
        nftPrice: json[r'nft_price'] == null
          ? null
          : num.parse(json[r'nft_price'].toString()),
      );
    }
    return null;
  }

  static List<ListRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListRequest>[];

  static Map<String, ListRequest> mapFromJson(dynamic json) {
    final map = <String, ListRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ListRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListRequest-objects as value to a dart map
  static Map<String, List<ListRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ListRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

