//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AirdropRequest {
  /// Returns a new [AirdropRequest] instance.
  AirdropRequest({
    @required this.recipientAddress,
  });

  /// The address to which to send the airdrop of 0.015 SOL
  String recipientAddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AirdropRequest &&
     other.recipientAddress == recipientAddress;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (recipientAddress == null ? 0 : recipientAddress.hashCode);

  @override
  String toString() => 'AirdropRequest[recipientAddress=$recipientAddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'recipient_address'] = recipientAddress;
    return json;
  }

  /// Returns a new [AirdropRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AirdropRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AirdropRequest(
        recipientAddress: mapValueOfType<String>(json, r'recipient_address'),
      );
    }
    return null;
  }

  static List<AirdropRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AirdropRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AirdropRequest>[];

  static Map<String, AirdropRequest> mapFromJson(dynamic json) {
    final map = <String, AirdropRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AirdropRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AirdropRequest-objects as value to a dart map
  static Map<String, List<AirdropRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AirdropRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AirdropRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

