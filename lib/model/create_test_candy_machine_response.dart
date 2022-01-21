//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateTestCandyMachineResponse {
  /// Returns a new [CreateTestCandyMachineResponse] instance.
  CreateTestCandyMachineResponse({
    @required this.candyMachineId,
  });

  /// The ID of the candy machine created
  String candyMachineId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateTestCandyMachineResponse &&
     other.candyMachineId == candyMachineId;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (candyMachineId == null ? 0 : candyMachineId.hashCode);

  @override
  String toString() => 'CreateTestCandyMachineResponse[candyMachineId=$candyMachineId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'candy_machine_id'] = candyMachineId;
    return json;
  }

  /// Returns a new [CreateTestCandyMachineResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateTestCandyMachineResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CreateTestCandyMachineResponse(
        candyMachineId: mapValueOfType<String>(json, r'candy_machine_id'),
      );
    }
    return null;
  }

  static List<CreateTestCandyMachineResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CreateTestCandyMachineResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CreateTestCandyMachineResponse>[];

  static Map<String, CreateTestCandyMachineResponse> mapFromJson(dynamic json) {
    final map = <String, CreateTestCandyMachineResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CreateTestCandyMachineResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateTestCandyMachineResponse-objects as value to a dart map
  static Map<String, List<CreateTestCandyMachineResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateTestCandyMachineResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CreateTestCandyMachineResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

