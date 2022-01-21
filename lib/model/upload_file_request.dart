//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UploadFileRequest {
  /// Returns a new [UploadFileRequest] instance.
  UploadFileRequest({
    this.uploadMethod = const UploadFileRequestUploadMethodEnum._('IPFS'),
  });

  UploadFileRequestUploadMethodEnum uploadMethod;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UploadFileRequest &&
     other.uploadMethod == uploadMethod;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (uploadMethod == null ? 0 : uploadMethod.hashCode);

  @override
  String toString() => 'UploadFileRequest[uploadMethod=$uploadMethod]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (uploadMethod != null) {
      json[r'upload_method'] = uploadMethod;
    }
    return json;
  }

  /// Returns a new [UploadFileRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UploadFileRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return UploadFileRequest(
        uploadMethod: UploadFileRequestUploadMethodEnum.fromJson(json[r'upload_method']),
      );
    }
    return null;
  }

  static List<UploadFileRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UploadFileRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UploadFileRequest>[];

  static Map<String, UploadFileRequest> mapFromJson(dynamic json) {
    final map = <String, UploadFileRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = UploadFileRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UploadFileRequest-objects as value to a dart map
  static Map<String, List<UploadFileRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UploadFileRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = UploadFileRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class UploadFileRequestUploadMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const UploadFileRequestUploadMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const IPFS = UploadFileRequestUploadMethodEnum._(r'IPFS');
  static const arweave = UploadFileRequestUploadMethodEnum._(r'Arweave');
  static const filecoin = UploadFileRequestUploadMethodEnum._(r'Filecoin');

  /// List of all possible values in this [enum][UploadFileRequestUploadMethodEnum].
  static const values = <UploadFileRequestUploadMethodEnum>[
    IPFS,
    arweave,
    filecoin,
  ];

  static UploadFileRequestUploadMethodEnum fromJson(dynamic value) =>
    UploadFileRequestUploadMethodEnumTypeTransformer().decode(value);

  static List<UploadFileRequestUploadMethodEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UploadFileRequestUploadMethodEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UploadFileRequestUploadMethodEnum>[];
}

/// Transformation class that can [encode] an instance of [UploadFileRequestUploadMethodEnum] to String,
/// and [decode] dynamic data back to [UploadFileRequestUploadMethodEnum].
class UploadFileRequestUploadMethodEnumTypeTransformer {
  factory UploadFileRequestUploadMethodEnumTypeTransformer() => _instance ??= const UploadFileRequestUploadMethodEnumTypeTransformer._();

  const UploadFileRequestUploadMethodEnumTypeTransformer._();

  String encode(UploadFileRequestUploadMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UploadFileRequestUploadMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UploadFileRequestUploadMethodEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'IPFS': return UploadFileRequestUploadMethodEnum.IPFS;
        case r'Arweave': return UploadFileRequestUploadMethodEnum.arweave;
        case r'Filecoin': return UploadFileRequestUploadMethodEnum.filecoin;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UploadFileRequestUploadMethodEnumTypeTransformer] instance.
  static UploadFileRequestUploadMethodEnumTypeTransformer _instance;
}


