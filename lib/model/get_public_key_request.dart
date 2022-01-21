//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetPublicKeyRequest {
  /// Returns a new [GetPublicKeyRequest] instance.
  GetPublicKeyRequest({
    @required this.wallet,
  });

  Wallet wallet;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetPublicKeyRequest &&
     other.wallet == wallet;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (wallet == null ? 0 : wallet.hashCode);

  @override
  String toString() => 'GetPublicKeyRequest[wallet=$wallet]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'wallet'] = wallet;
    return json;
  }

  /// Returns a new [GetPublicKeyRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetPublicKeyRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GetPublicKeyRequest(
        wallet: Wallet.fromJson(json[r'wallet']),
      );
    }
    return null;
  }

  static List<GetPublicKeyRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetPublicKeyRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetPublicKeyRequest>[];

  static Map<String, GetPublicKeyRequest> mapFromJson(dynamic json) {
    final map = <String, GetPublicKeyRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GetPublicKeyRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GetPublicKeyRequest-objects as value to a dart map
  static Map<String, List<GetPublicKeyRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetPublicKeyRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GetPublicKeyRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

