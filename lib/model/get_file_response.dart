//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetFileResponse {
  /// Returns a new [GetFileResponse] instance.
  GetFileResponse({
    this.uri,
    this.size,
    this.uploadTime,
  });

  String uri;

  /// File size in kilobytes
  String size;

  /// The time when the file was uploaded
  String uploadTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetFileResponse &&
     other.uri == uri &&
     other.size == size &&
     other.uploadTime == uploadTime;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (uri == null ? 0 : uri.hashCode) +
    (size == null ? 0 : size.hashCode) +
    (uploadTime == null ? 0 : uploadTime.hashCode);

  @override
  String toString() => 'GetFileResponse[uri=$uri, size=$size, uploadTime=$uploadTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (uri != null) {
      json[r'uri'] = uri;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (uploadTime != null) {
      json[r'upload_time'] = uploadTime;
    }
    return json;
  }

  /// Returns a new [GetFileResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetFileResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GetFileResponse(
        uri: mapValueOfType<String>(json, r'uri'),
        size: mapValueOfType<String>(json, r'size'),
        uploadTime: mapValueOfType<String>(json, r'upload_time'),
      );
    }
    return null;
  }

  static List<GetFileResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetFileResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetFileResponse>[];

  static Map<String, GetFileResponse> mapFromJson(dynamic json) {
    final map = <String, GetFileResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GetFileResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GetFileResponse-objects as value to a dart map
  static Map<String, List<GetFileResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetFileResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GetFileResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

