//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TransferRequest {
  /// Returns a new [TransferRequest] instance.
  TransferRequest({
    @required this.recipientAddress,
    @required this.wallet,
    this.tokenAddress,
    this.network = const TransferRequestNetworkEnum._('devnet'),
    this.amount = '1',
  });

  /// The public key address of the recipient to whom you want to send a token or NFT
  String recipientAddress;

  Wallet wallet;

  /// If you're transfering an NFT, supply the `mint` (the address of the mint) for the `token_address`. If you're transfering a token, supply the token address found on the explorer (e.g., see `SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt` for <a href=\"https://explorer.solana.com/address/SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt\" target=\"_blank\">Serum Token</a>) for the `token_address`. If you're transferring SOL, do not supply a value for `token_address`. 
  String tokenAddress;

  TransferRequestNetworkEnum network;

  /// This value must be a string. What you provide here depends on if you are sending an NFT, an SPL token, or SOL.  - NFT: This must be '1'. - SPL Token: This must be an integer in string format. To convert from what you see on a wallet UI (e.g., 1 ATLAS, 1 USDC) to an integer value, you have to multiply that value by 10^<i>x</i> where <i>x</i> is the number of decimals. For example, to transfer 0.2 USDC, if USDC uses 6 decimals, then the amount is 0.2 * 10^6 = 200000. You can get the number of decimals for a given SPL token <a href=\"#operation/solanaGetSPLToken\">here</a>. - SOL: Supply this value denominated in SOL in a string format. This does not need to be an integer. For example, if you want to send 0.0005 SOL, then amount = \"0.0005\".
  String amount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TransferRequest &&
     other.recipientAddress == recipientAddress &&
     other.wallet == wallet &&
     other.tokenAddress == tokenAddress &&
     other.network == network &&
     other.amount == amount;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (recipientAddress == null ? 0 : recipientAddress.hashCode) +
    (wallet == null ? 0 : wallet.hashCode) +
    (tokenAddress == null ? 0 : tokenAddress.hashCode) +
    (network == null ? 0 : network.hashCode) +
    (amount == null ? 0 : amount.hashCode);

  @override
  String toString() => 'TransferRequest[recipientAddress=$recipientAddress, wallet=$wallet, tokenAddress=$tokenAddress, network=$network, amount=$amount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'recipient_address'] = recipientAddress;
      json[r'wallet'] = wallet;
    if (tokenAddress != null) {
      json[r'token_address'] = tokenAddress;
    }
    if (network != null) {
      json[r'network'] = network;
    }
    if (amount != null) {
      json[r'amount'] = amount;
    }
    return json;
  }

  /// Returns a new [TransferRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TransferRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TransferRequest(
        recipientAddress: mapValueOfType<String>(json, r'recipient_address'),
        wallet: Wallet.fromJson(json[r'wallet']),
        tokenAddress: mapValueOfType<String>(json, r'token_address'),
        network: TransferRequestNetworkEnum.fromJson(json[r'network']),
        amount: mapValueOfType<String>(json, r'amount'),
      );
    }
    return null;
  }

  static List<TransferRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TransferRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TransferRequest>[];

  static Map<String, TransferRequest> mapFromJson(dynamic json) {
    final map = <String, TransferRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TransferRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TransferRequest-objects as value to a dart map
  static Map<String, List<TransferRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TransferRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TransferRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class TransferRequestNetworkEnum {
  /// Instantiate a new enum with the provided [value].
  const TransferRequestNetworkEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const devnet = TransferRequestNetworkEnum._(r'devnet');
  static const mainnetBeta = TransferRequestNetworkEnum._(r'mainnet-beta');

  /// List of all possible values in this [enum][TransferRequestNetworkEnum].
  static const values = <TransferRequestNetworkEnum>[
    devnet,
    mainnetBeta,
  ];

  static TransferRequestNetworkEnum fromJson(dynamic value) =>
    TransferRequestNetworkEnumTypeTransformer().decode(value);

  static List<TransferRequestNetworkEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TransferRequestNetworkEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TransferRequestNetworkEnum>[];
}

/// Transformation class that can [encode] an instance of [TransferRequestNetworkEnum] to String,
/// and [decode] dynamic data back to [TransferRequestNetworkEnum].
class TransferRequestNetworkEnumTypeTransformer {
  factory TransferRequestNetworkEnumTypeTransformer() => _instance ??= const TransferRequestNetworkEnumTypeTransformer._();

  const TransferRequestNetworkEnumTypeTransformer._();

  String encode(TransferRequestNetworkEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TransferRequestNetworkEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TransferRequestNetworkEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'devnet': return TransferRequestNetworkEnum.devnet;
        case r'mainnet-beta': return TransferRequestNetworkEnum.mainnetBeta;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TransferRequestNetworkEnumTypeTransformer] instance.
  static TransferRequestNetworkEnumTypeTransformer _instance;
}


