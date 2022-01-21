//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetCandyMetadataResponse {
  /// Returns a new [GetCandyMetadataResponse] instance.
  GetCandyMetadataResponse({
    this.authority,
    this.bump,
    this.candyMachineId,
    this.configAddress,
    this.creators = const [],
    this.goLiveDate,
    this.isMutable,
    this.itemsAvailable,
    this.itemsRedeemed,
    this.maxNumberOfLines,
    this.maxSupply,
    this.price,
    this.retainAuthority,
    this.sellerFeeBasisPoints,
    this.symbol,
    this.tokenMint,
    this.uuid,
    this.wallet,
  });

  /// The update authority of the candy machine
  String authority;

  num bump;

  /// The ID of the candy machine 
  String candyMachineId;

  /// The configuration public key address of the candy machine 
  String configAddress;

  List<GetCandyMetadataResponseCreators> creators;

  /// The unix timestamp of the start date of the candy machine 
  num goLiveDate;

  bool isMutable;

  /// The number of NFTs available for mint from the candy machine 
  num itemsAvailable;

  /// The number of NFTs minted already from the candy machine 
  num itemsRedeemed;

  num maxNumberOfLines;

  num maxSupply;

  /// The price in Lamports for minting an NFT from the candy machine. 1e9 Lamport  = 1 SOL 
  num price;

  bool retainAuthority;

  /// The royalty the creators receive on each sale after the primary sale (the initial minting) (denominated in basis points (e.g., 75 basis points = 0.75%)) 
  num sellerFeeBasisPoints;

  String symbol;

  String tokenMint;

  /// The uuid of the candy machine
  String uuid;

  /// The public key address of the wallet that recevies the proceeds from NFT mints 
  String wallet;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetCandyMetadataResponse &&
     other.authority == authority &&
     other.bump == bump &&
     other.candyMachineId == candyMachineId &&
     other.configAddress == configAddress &&
     other.creators == creators &&
     other.goLiveDate == goLiveDate &&
     other.isMutable == isMutable &&
     other.itemsAvailable == itemsAvailable &&
     other.itemsRedeemed == itemsRedeemed &&
     other.maxNumberOfLines == maxNumberOfLines &&
     other.maxSupply == maxSupply &&
     other.price == price &&
     other.retainAuthority == retainAuthority &&
     other.sellerFeeBasisPoints == sellerFeeBasisPoints &&
     other.symbol == symbol &&
     other.tokenMint == tokenMint &&
     other.uuid == uuid &&
     other.wallet == wallet;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (authority == null ? 0 : authority.hashCode) +
    (bump == null ? 0 : bump.hashCode) +
    (candyMachineId == null ? 0 : candyMachineId.hashCode) +
    (configAddress == null ? 0 : configAddress.hashCode) +
    (creators == null ? 0 : creators.hashCode) +
    (goLiveDate == null ? 0 : goLiveDate.hashCode) +
    (isMutable == null ? 0 : isMutable.hashCode) +
    (itemsAvailable == null ? 0 : itemsAvailable.hashCode) +
    (itemsRedeemed == null ? 0 : itemsRedeemed.hashCode) +
    (maxNumberOfLines == null ? 0 : maxNumberOfLines.hashCode) +
    (maxSupply == null ? 0 : maxSupply.hashCode) +
    (price == null ? 0 : price.hashCode) +
    (retainAuthority == null ? 0 : retainAuthority.hashCode) +
    (sellerFeeBasisPoints == null ? 0 : sellerFeeBasisPoints.hashCode) +
    (symbol == null ? 0 : symbol.hashCode) +
    (tokenMint == null ? 0 : tokenMint.hashCode) +
    (uuid == null ? 0 : uuid.hashCode) +
    (wallet == null ? 0 : wallet.hashCode);

  @override
  String toString() => 'GetCandyMetadataResponse[authority=$authority, bump=$bump, candyMachineId=$candyMachineId, configAddress=$configAddress, creators=$creators, goLiveDate=$goLiveDate, isMutable=$isMutable, itemsAvailable=$itemsAvailable, itemsRedeemed=$itemsRedeemed, maxNumberOfLines=$maxNumberOfLines, maxSupply=$maxSupply, price=$price, retainAuthority=$retainAuthority, sellerFeeBasisPoints=$sellerFeeBasisPoints, symbol=$symbol, tokenMint=$tokenMint, uuid=$uuid, wallet=$wallet]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (authority != null) {
      json[r'authority'] = authority;
    }
    if (bump != null) {
      json[r'bump'] = bump;
    }
    if (candyMachineId != null) {
      json[r'candy_machine_id'] = candyMachineId;
    }
    if (configAddress != null) {
      json[r'config_address'] = configAddress;
    }
    if (creators != null) {
      json[r'creators'] = creators;
    }
    if (goLiveDate != null) {
      json[r'go_live_date'] = goLiveDate;
    }
    if (isMutable != null) {
      json[r'is_mutable'] = isMutable;
    }
    if (itemsAvailable != null) {
      json[r'items_available'] = itemsAvailable;
    }
    if (itemsRedeemed != null) {
      json[r'items_redeemed'] = itemsRedeemed;
    }
    if (maxNumberOfLines != null) {
      json[r'max_number_of_lines'] = maxNumberOfLines;
    }
    if (maxSupply != null) {
      json[r'max_supply'] = maxSupply;
    }
    if (price != null) {
      json[r'price'] = price;
    }
    if (retainAuthority != null) {
      json[r'retain_authority'] = retainAuthority;
    }
    if (sellerFeeBasisPoints != null) {
      json[r'seller_fee_basis_points'] = sellerFeeBasisPoints;
    }
    if (symbol != null) {
      json[r'symbol'] = symbol;
    }
    if (tokenMint != null) {
      json[r'token_mint'] = tokenMint;
    }
    if (uuid != null) {
      json[r'uuid'] = uuid;
    }
    if (wallet != null) {
      json[r'wallet'] = wallet;
    }
    return json;
  }

  /// Returns a new [GetCandyMetadataResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCandyMetadataResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GetCandyMetadataResponse(
        authority: mapValueOfType<String>(json, r'authority'),
        bump: json[r'bump'] == null
          ? null
          : num.parse(json[r'bump'].toString()),
        candyMachineId: mapValueOfType<String>(json, r'candy_machine_id'),
        configAddress: mapValueOfType<String>(json, r'config_address'),
        creators: GetCandyMetadataResponseCreators.listFromJson(json[r'creators']),
        goLiveDate: json[r'go_live_date'] == null
          ? null
          : num.parse(json[r'go_live_date'].toString()),
        isMutable: mapValueOfType<bool>(json, r'is_mutable'),
        itemsAvailable: json[r'items_available'] == null
          ? null
          : num.parse(json[r'items_available'].toString()),
        itemsRedeemed: json[r'items_redeemed'] == null
          ? null
          : num.parse(json[r'items_redeemed'].toString()),
        maxNumberOfLines: json[r'max_number_of_lines'] == null
          ? null
          : num.parse(json[r'max_number_of_lines'].toString()),
        maxSupply: json[r'max_supply'] == null
          ? null
          : num.parse(json[r'max_supply'].toString()),
        price: json[r'price'] == null
          ? null
          : num.parse(json[r'price'].toString()),
        retainAuthority: mapValueOfType<bool>(json, r'retain_authority'),
        sellerFeeBasisPoints: json[r'seller_fee_basis_points'] == null
          ? null
          : num.parse(json[r'seller_fee_basis_points'].toString()),
        symbol: mapValueOfType<String>(json, r'symbol'),
        tokenMint: mapValueOfType<String>(json, r'token_mint'),
        uuid: mapValueOfType<String>(json, r'uuid'),
        wallet: mapValueOfType<String>(json, r'wallet'),
      );
    }
    return null;
  }

  static List<GetCandyMetadataResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetCandyMetadataResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetCandyMetadataResponse>[];

  static Map<String, GetCandyMetadataResponse> mapFromJson(dynamic json) {
    final map = <String, GetCandyMetadataResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GetCandyMetadataResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GetCandyMetadataResponse-objects as value to a dart map
  static Map<String, List<GetCandyMetadataResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetCandyMetadataResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GetCandyMetadataResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

