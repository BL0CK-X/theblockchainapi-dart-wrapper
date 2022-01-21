//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DelistResponse {
  /// Returns a new [DelistResponse] instance.
  DelistResponse({
    this.transactionSignature,
  });

  /// The signature of the `delist` transaction 
  String transactionSignature;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DelistResponse &&
     other.transactionSignature == transactionSignature;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (transactionSignature == null ? 0 : transactionSignature.hashCode);

  @override
  String toString() => 'DelistResponse[transactionSignature=$transactionSignature]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (transactionSignature != null) {
      json[r'transaction_signature'] = transactionSignature;
    }
    return json;
  }

  /// Returns a new [DelistResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DelistResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DelistResponse(
        transactionSignature: mapValueOfType<String>(json, r'transaction_signature'),
      );
    }
    return null;
  }

  static List<DelistResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DelistResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DelistResponse>[];

  static Map<String, DelistResponse> mapFromJson(dynamic json) {
    final map = <String, DelistResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DelistResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DelistResponse-objects as value to a dart map
  static Map<String, List<DelistResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DelistResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DelistResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

