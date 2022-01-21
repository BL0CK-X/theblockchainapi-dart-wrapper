//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MintNFTResponse {
  /// Returns a new [MintNFTResponse] instance.
  MintNFTResponse({
    this.transactionSignature,
  });

  /// The signature of the transaction. Just because this is returned does not mean it was successful.  To determine if the mint was successful, use this Gist: https://gist.github.com/joshwolff1/298e8251e43ff9b4815028683b1ca17d 
  String transactionSignature;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MintNFTResponse &&
     other.transactionSignature == transactionSignature;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (transactionSignature == null ? 0 : transactionSignature.hashCode);

  @override
  String toString() => 'MintNFTResponse[transactionSignature=$transactionSignature]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (transactionSignature != null) {
      json[r'transaction_signature'] = transactionSignature;
    }
    return json;
  }

  /// Returns a new [MintNFTResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MintNFTResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MintNFTResponse(
        transactionSignature: mapValueOfType<String>(json, r'transaction_signature'),
      );
    }
    return null;
  }

  static List<MintNFTResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MintNFTResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MintNFTResponse>[];

  static Map<String, MintNFTResponse> mapFromJson(dynamic json) {
    final map = <String, MintNFTResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MintNFTResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MintNFTResponse-objects as value to a dart map
  static Map<String, List<MintNFTResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MintNFTResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MintNFTResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

