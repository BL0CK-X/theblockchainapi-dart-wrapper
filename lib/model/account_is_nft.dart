//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccountIsNFT {
  /// Returns a new [AccountIsNFT] instance.
  AccountIsNFT({
    @required this.isNft,
  });

  bool isNft;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountIsNFT &&
     other.isNft == isNft;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (isNft == null ? 0 : isNft.hashCode);

  @override
  String toString() => 'AccountIsNFT[isNft=$isNft]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'is_nft'] = isNft;
    return json;
  }

  /// Returns a new [AccountIsNFT] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountIsNFT fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AccountIsNFT(
        isNft: mapValueOfType<bool>(json, r'is_nft'),
      );
    }
    return null;
  }

  static List<AccountIsNFT> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AccountIsNFT.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AccountIsNFT>[];

  static Map<String, AccountIsNFT> mapFromJson(dynamic json) {
    final map = <String, AccountIsNFT>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AccountIsNFT.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AccountIsNFT-objects as value to a dart map
  static Map<String, List<AccountIsNFT>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AccountIsNFT>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AccountIsNFT.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

