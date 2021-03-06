//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Account {
  /// Returns a new [Account] instance.
  Account({
    this.context,
    this.value,
  });

  AccountContext context;

  AccountValue value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Account &&
     other.context == context &&
     other.value == value;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (context == null ? 0 : context.hashCode) +
    (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'Account[context=$context, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (context != null) {
      json[r'context'] = context;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  /// Returns a new [Account] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Account fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Account(
        context: AccountContext.fromJson(json[r'context']),
        value: AccountValue.fromJson(json[r'value']),
      );
    }
    return null;
  }

  static List<Account> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Account.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Account>[];

  static Map<String, Account> mapFromJson(dynamic json) {
    final map = <String, Account>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Account.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Account-objects as value to a dart map
  static Map<String, List<Account>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Account>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Account.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

