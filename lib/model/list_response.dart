//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListResponse {
  /// Returns a new [ListResponse] instance.
  ListResponse({
    this.transactionSignature,
  });

  /// The signature of the `list` transaction 
  String transactionSignature;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListResponse &&
     other.transactionSignature == transactionSignature;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (transactionSignature == null ? 0 : transactionSignature.hashCode);

  @override
  String toString() => 'ListResponse[transactionSignature=$transactionSignature]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (transactionSignature != null) {
      json[r'transaction_signature'] = transactionSignature;
    }
    return json;
  }

  /// Returns a new [ListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListResponse(
        transactionSignature: mapValueOfType<String>(json, r'transaction_signature'),
      );
    }
    return null;
  }

  static List<ListResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListResponse>[];

  static Map<String, ListResponse> mapFromJson(dynamic json) {
    final map = <String, ListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ListResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListResponse-objects as value to a dart map
  static Map<String, List<ListResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ListResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

