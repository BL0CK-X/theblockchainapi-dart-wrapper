//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccountIsCandyMachine {
  /// Returns a new [AccountIsCandyMachine] instance.
  AccountIsCandyMachine({
    @required this.isCandyMachine,
    this.candyMachineContractVersion,
  });

  bool isCandyMachine;

  /// Whether or not this corresponds to candy machine v1, candy machine v2, or a Magic Eden candy machine.
  AccountIsCandyMachineCandyMachineContractVersionEnum candyMachineContractVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountIsCandyMachine &&
     other.isCandyMachine == isCandyMachine &&
     other.candyMachineContractVersion == candyMachineContractVersion;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (isCandyMachine == null ? 0 : isCandyMachine.hashCode) +
    (candyMachineContractVersion == null ? 0 : candyMachineContractVersion.hashCode);

  @override
  String toString() => 'AccountIsCandyMachine[isCandyMachine=$isCandyMachine, candyMachineContractVersion=$candyMachineContractVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'is_candy_machine'] = isCandyMachine;
    if (candyMachineContractVersion != null) {
      json[r'candy_machine_contract_version'] = candyMachineContractVersion;
    }
    return json;
  }

  /// Returns a new [AccountIsCandyMachine] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountIsCandyMachine fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AccountIsCandyMachine(
        isCandyMachine: mapValueOfType<bool>(json, r'is_candy_machine'),
        candyMachineContractVersion: AccountIsCandyMachineCandyMachineContractVersionEnum.fromJson(json[r'candy_machine_contract_version']),
      );
    }
    return null;
  }

  static List<AccountIsCandyMachine> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AccountIsCandyMachine.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AccountIsCandyMachine>[];

  static Map<String, AccountIsCandyMachine> mapFromJson(dynamic json) {
    final map = <String, AccountIsCandyMachine>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AccountIsCandyMachine.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AccountIsCandyMachine-objects as value to a dart map
  static Map<String, List<AccountIsCandyMachine>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AccountIsCandyMachine>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AccountIsCandyMachine.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// Whether or not this corresponds to candy machine v1, candy machine v2, or a Magic Eden candy machine.
class AccountIsCandyMachineCandyMachineContractVersionEnum {
  /// Instantiate a new enum with the provided [value].
  const AccountIsCandyMachineCandyMachineContractVersionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const v1 = AccountIsCandyMachineCandyMachineContractVersionEnum._(r'v1');
  static const v2 = AccountIsCandyMachineCandyMachineContractVersionEnum._(r'v2');
  static const magicEdenV1 = AccountIsCandyMachineCandyMachineContractVersionEnum._(r'magic-eden-v1');

  /// List of all possible values in this [enum][AccountIsCandyMachineCandyMachineContractVersionEnum].
  static const values = <AccountIsCandyMachineCandyMachineContractVersionEnum>[
    v1,
    v2,
    magicEdenV1,
  ];

  static AccountIsCandyMachineCandyMachineContractVersionEnum fromJson(dynamic value) =>
    AccountIsCandyMachineCandyMachineContractVersionEnumTypeTransformer().decode(value);

  static List<AccountIsCandyMachineCandyMachineContractVersionEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AccountIsCandyMachineCandyMachineContractVersionEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AccountIsCandyMachineCandyMachineContractVersionEnum>[];
}

/// Transformation class that can [encode] an instance of [AccountIsCandyMachineCandyMachineContractVersionEnum] to String,
/// and [decode] dynamic data back to [AccountIsCandyMachineCandyMachineContractVersionEnum].
class AccountIsCandyMachineCandyMachineContractVersionEnumTypeTransformer {
  factory AccountIsCandyMachineCandyMachineContractVersionEnumTypeTransformer() => _instance ??= const AccountIsCandyMachineCandyMachineContractVersionEnumTypeTransformer._();

  const AccountIsCandyMachineCandyMachineContractVersionEnumTypeTransformer._();

  String encode(AccountIsCandyMachineCandyMachineContractVersionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AccountIsCandyMachineCandyMachineContractVersionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AccountIsCandyMachineCandyMachineContractVersionEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'v1': return AccountIsCandyMachineCandyMachineContractVersionEnum.v1;
        case r'v2': return AccountIsCandyMachineCandyMachineContractVersionEnum.v2;
        case r'magic-eden-v1': return AccountIsCandyMachineCandyMachineContractVersionEnum.magicEdenV1;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AccountIsCandyMachineCandyMachineContractVersionEnumTypeTransformer] instance.
  static AccountIsCandyMachineCandyMachineContractVersionEnumTypeTransformer _instance;
}


