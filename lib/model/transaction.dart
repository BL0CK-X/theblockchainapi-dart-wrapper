//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Transaction {
  /// Returns a new [Transaction] instance.
  Transaction({
    this.id,
    this.jsonrpc,
    this.result,
  });

  num id;

  String jsonrpc;

  TransactionResult result;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Transaction &&
     other.id == id &&
     other.jsonrpc == jsonrpc &&
     other.result == result;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (jsonrpc == null ? 0 : jsonrpc.hashCode) +
    (result == null ? 0 : result.hashCode);

  @override
  String toString() => 'Transaction[id=$id, jsonrpc=$jsonrpc, result=$result]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (jsonrpc != null) {
      json[r'jsonrpc'] = jsonrpc;
    }
    if (result != null) {
      json[r'result'] = result;
    }
    return json;
  }

  /// Returns a new [Transaction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Transaction fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Transaction(
        id: json[r'id'] == null
          ? null
          : num.parse(json[r'id'].toString()),
        jsonrpc: mapValueOfType<String>(json, r'jsonrpc'),
        result: TransactionResult.fromJson(json[r'result']),
      );
    }
    return null;
  }

  static List<Transaction> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Transaction.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Transaction>[];

  static Map<String, Transaction> mapFromJson(dynamic json) {
    final map = <String, Transaction>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Transaction.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Transaction-objects as value to a dart map
  static Map<String, List<Transaction>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Transaction>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Transaction.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

