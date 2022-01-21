//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NFT {
  /// Returns a new [NFT] instance.
  NFT({
    this.data,
    this.isMutable,
    this.mint,
    this.primarySaleHappened,
    this.updateAuthority,
    this.sellerFeeBasisPoints,
    this.mintSecretRecoveryPhrase,
    this.explorerUrl,
  });

  NFTData data;

  bool isMutable;

  /// The public key address of the NFT 
  String mint;

  bool primarySaleHappened;

  /// A public key address that is usually that of the person who minted the NFT 
  String updateAuthority;

  num sellerFeeBasisPoints;

  String mintSecretRecoveryPhrase;

  String explorerUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NFT &&
     other.data == data &&
     other.isMutable == isMutable &&
     other.mint == mint &&
     other.primarySaleHappened == primarySaleHappened &&
     other.updateAuthority == updateAuthority &&
     other.sellerFeeBasisPoints == sellerFeeBasisPoints &&
     other.mintSecretRecoveryPhrase == mintSecretRecoveryPhrase &&
     other.explorerUrl == explorerUrl;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (data == null ? 0 : data.hashCode) +
    (isMutable == null ? 0 : isMutable.hashCode) +
    (mint == null ? 0 : mint.hashCode) +
    (primarySaleHappened == null ? 0 : primarySaleHappened.hashCode) +
    (updateAuthority == null ? 0 : updateAuthority.hashCode) +
    (sellerFeeBasisPoints == null ? 0 : sellerFeeBasisPoints.hashCode) +
    (mintSecretRecoveryPhrase == null ? 0 : mintSecretRecoveryPhrase.hashCode) +
    (explorerUrl == null ? 0 : explorerUrl.hashCode);

  @override
  String toString() => 'NFT[data=$data, isMutable=$isMutable, mint=$mint, primarySaleHappened=$primarySaleHappened, updateAuthority=$updateAuthority, sellerFeeBasisPoints=$sellerFeeBasisPoints, mintSecretRecoveryPhrase=$mintSecretRecoveryPhrase, explorerUrl=$explorerUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (data != null) {
      json[r'data'] = data;
    }
    if (isMutable != null) {
      json[r'is_mutable'] = isMutable;
    }
    if (mint != null) {
      json[r'mint'] = mint;
    }
    if (primarySaleHappened != null) {
      json[r'primary_sale_happened'] = primarySaleHappened;
    }
    if (updateAuthority != null) {
      json[r'update_authority'] = updateAuthority;
    }
    if (sellerFeeBasisPoints != null) {
      json[r'seller_fee_basis_points'] = sellerFeeBasisPoints;
    }
    if (mintSecretRecoveryPhrase != null) {
      json[r'mint_secret_recovery_phrase'] = mintSecretRecoveryPhrase;
    }
    if (explorerUrl != null) {
      json[r'explorer_url'] = explorerUrl;
    }
    return json;
  }

  /// Returns a new [NFT] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NFT fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NFT(
        data: NFTData.fromJson(json[r'data']),
        isMutable: mapValueOfType<bool>(json, r'is_mutable'),
        mint: mapValueOfType<String>(json, r'mint'),
        primarySaleHappened: mapValueOfType<bool>(json, r'primary_sale_happened'),
        updateAuthority: mapValueOfType<String>(json, r'update_authority'),
        sellerFeeBasisPoints: json[r'seller_fee_basis_points'] == null
          ? null
          : num.parse(json[r'seller_fee_basis_points'].toString()),
        mintSecretRecoveryPhrase: mapValueOfType<String>(json, r'mint_secret_recovery_phrase'),
        explorerUrl: mapValueOfType<String>(json, r'explorer_url'),
      );
    }
    return null;
  }

  static List<NFT> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NFT.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NFT>[];

  static Map<String, NFT> mapFromJson(dynamic json) {
    final map = <String, NFT>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NFT.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NFT-objects as value to a dart map
  static Map<String, List<NFT>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NFT>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NFT.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

