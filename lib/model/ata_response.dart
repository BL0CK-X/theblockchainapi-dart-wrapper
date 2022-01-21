//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ATAResponse {
  /// Returns a new [ATAResponse] instance.
  ATAResponse({
    @required this.associatedTokenAddress,
  });

  /// The associated token address
  String associatedTokenAddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ATAResponse &&
     other.associatedTokenAddress == associatedTokenAddress;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (associatedTokenAddress == null ? 0 : associatedTokenAddress.hashCode);

  @override
  String toString() => 'ATAResponse[associatedTokenAddress=$associatedTokenAddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'associated_token_address'] = associatedTokenAddress;
    return json;
  }

  /// Returns a new [ATAResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ATAResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ATAResponse(
        associatedTokenAddress: mapValueOfType<String>(json, r'associated_token_address'),
      );
    }
    return null;
  }

  static List<ATAResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ATAResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ATAResponse>[];

  static Map<String, ATAResponse> mapFromJson(dynamic json) {
    final map = <String, ATAResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ATAResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ATAResponse-objects as value to a dart map
  static Map<String, List<ATAResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ATAResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ATAResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

