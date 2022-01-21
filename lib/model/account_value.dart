//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccountValue {
  /// Returns a new [AccountValue] instance.
  AccountValue({
    this.data,
    this.executable,
    this.owner,
    this.rentEpoch,
  });

  /// More info about the account. What are included depends on the type of account. See examples.
  Object data;

  /// Whether or not this account is marked as executable
  bool executable;

  /// The owner of the account
  String owner;

  num rentEpoch;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountValue &&
     other.data == data &&
     other.executable == executable &&
     other.owner == owner &&
     other.rentEpoch == rentEpoch;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (data == null ? 0 : data.hashCode) +
    (executable == null ? 0 : executable.hashCode) +
    (owner == null ? 0 : owner.hashCode) +
    (rentEpoch == null ? 0 : rentEpoch.hashCode);

  @override
  String toString() => 'AccountValue[data=$data, executable=$executable, owner=$owner, rentEpoch=$rentEpoch]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (data != null) {
      json[r'data'] = data;
    }
    if (executable != null) {
      json[r'executable'] = executable;
    }
    if (owner != null) {
      json[r'owner'] = owner;
    }
    if (rentEpoch != null) {
      json[r'rent_epoch'] = rentEpoch;
    }
    return json;
  }

  /// Returns a new [AccountValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountValue fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AccountValue(
        data: mapValueOfType<Object>(json, r'data'),
        executable: mapValueOfType<bool>(json, r'executable'),
        owner: mapValueOfType<String>(json, r'owner'),
        rentEpoch: json[r'rent_epoch'] == null
          ? null
          : num.parse(json[r'rent_epoch'].toString()),
      );
    }
    return null;
  }

  static List<AccountValue> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AccountValue.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AccountValue>[];

  static Map<String, AccountValue> mapFromJson(dynamic json) {
    final map = <String, AccountValue>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AccountValue.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AccountValue-objects as value to a dart map
  static Map<String, List<AccountValue>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AccountValue>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AccountValue.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

