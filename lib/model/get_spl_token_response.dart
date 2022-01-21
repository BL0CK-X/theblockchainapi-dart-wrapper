//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetSPLTokenResponse {
  /// Returns a new [GetSPLTokenResponse] instance.
  GetSPLTokenResponse({
    this.decimals,
    this.freezeAuthority,
    this.mintAuthority,
    this.isInitialized,
    this.supply,
  });

  /// The number of decimals of the token. For example, if the USDC token has 6 decimals, then you need 1 * 10e6 = 1,000,000 tokens to have 1 USDC. The purpose of this is that everything must be stored as  an integer. Thus, if there are $100 USDC in total, there must be $100 * 10e6 tokens in order for the $100 to be divisible into lower denominations than $1. 
  num decimals;

  /// Public key address
  String freezeAuthority;

  /// Public key address
  String mintAuthority;

  bool isInitialized;

  /// The supply of the token
  String supply;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetSPLTokenResponse &&
     other.decimals == decimals &&
     other.freezeAuthority == freezeAuthority &&
     other.mintAuthority == mintAuthority &&
     other.isInitialized == isInitialized &&
     other.supply == supply;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (decimals == null ? 0 : decimals.hashCode) +
    (freezeAuthority == null ? 0 : freezeAuthority.hashCode) +
    (mintAuthority == null ? 0 : mintAuthority.hashCode) +
    (isInitialized == null ? 0 : isInitialized.hashCode) +
    (supply == null ? 0 : supply.hashCode);

  @override
  String toString() => 'GetSPLTokenResponse[decimals=$decimals, freezeAuthority=$freezeAuthority, mintAuthority=$mintAuthority, isInitialized=$isInitialized, supply=$supply]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (decimals != null) {
      json[r'decimals'] = decimals;
    }
    if (freezeAuthority != null) {
      json[r'freeze_authority'] = freezeAuthority;
    }
    if (mintAuthority != null) {
      json[r'mint_authority'] = mintAuthority;
    }
    if (isInitialized != null) {
      json[r'is_initialized'] = isInitialized;
    }
    if (supply != null) {
      json[r'supply'] = supply;
    }
    return json;
  }

  /// Returns a new [GetSPLTokenResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetSPLTokenResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GetSPLTokenResponse(
        decimals: json[r'decimals'] == null
          ? null
          : num.parse(json[r'decimals'].toString()),
        freezeAuthority: mapValueOfType<String>(json, r'freeze_authority'),
        mintAuthority: mapValueOfType<String>(json, r'mint_authority'),
        isInitialized: mapValueOfType<bool>(json, r'is_initialized'),
        supply: mapValueOfType<String>(json, r'supply'),
      );
    }
    return null;
  }

  static List<GetSPLTokenResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetSPLTokenResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetSPLTokenResponse>[];

  static Map<String, GetSPLTokenResponse> mapFromJson(dynamic json) {
    final map = <String, GetSPLTokenResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GetSPLTokenResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GetSPLTokenResponse-objects as value to a dart map
  static Map<String, List<GetSPLTokenResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetSPLTokenResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GetSPLTokenResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

