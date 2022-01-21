//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccountContext {
  /// Returns a new [AccountContext] instance.
  AccountContext({
    this.slot,
  });

  num slot;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountContext &&
     other.slot == slot;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (slot == null ? 0 : slot.hashCode);

  @override
  String toString() => 'AccountContext[slot=$slot]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (slot != null) {
      json[r'slot'] = slot;
    }
    return json;
  }

  /// Returns a new [AccountContext] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountContext fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AccountContext(
        slot: json[r'slot'] == null
          ? null
          : num.parse(json[r'slot'].toString()),
      );
    }
    return null;
  }

  static List<AccountContext> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AccountContext.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AccountContext>[];

  static Map<String, AccountContext> mapFromJson(dynamic json) {
    final map = <String, AccountContext>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AccountContext.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AccountContext-objects as value to a dart map
  static Map<String, List<AccountContext>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AccountContext>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AccountContext.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

