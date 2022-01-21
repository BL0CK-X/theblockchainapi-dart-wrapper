//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DelistRequest {
  /// Returns a new [DelistRequest] instance.
  DelistRequest({
    @required this.wallet,
  });

  Wallet wallet;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DelistRequest &&
     other.wallet == wallet;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (wallet == null ? 0 : wallet.hashCode);

  @override
  String toString() => 'DelistRequest[wallet=$wallet]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'wallet'] = wallet;
    return json;
  }

  /// Returns a new [DelistRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DelistRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DelistRequest(
        wallet: Wallet.fromJson(json[r'wallet']),
      );
    }
    return null;
  }

  static List<DelistRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DelistRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DelistRequest>[];

  static Map<String, DelistRequest> mapFromJson(dynamic json) {
    final map = <String, DelistRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DelistRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DelistRequest-objects as value to a dart map
  static Map<String, List<DelistRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DelistRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DelistRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

