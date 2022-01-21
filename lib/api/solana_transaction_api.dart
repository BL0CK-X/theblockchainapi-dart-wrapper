//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SolanaTransactionApi {
  SolanaTransactionApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get the details of a transaction made on Solana
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-transaction/get-transaction\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Get the details of a transaction made on Solana.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID (devnet, mainnet-beta)
  ///
  /// * [String] txSignature (required):
  ///   The transaction signature of the transaction
  Future<Response> solanaGetTransactionWithHttpInfo(String network, String txSignature,) async {
    // Verify required params are set.
    if (network == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: network');
    }
    if (txSignature == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: txSignature');
    }

    // ignore: prefer_const_declarations
    final path = r'/solana/transaction/{network}/{tx_signature}'
      .replaceAll('{network}', network)
      .replaceAll('{tx_signature}', txSignature);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['APIKeyID', 'APISecretKey'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get the details of a transaction made on Solana
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-transaction/get-transaction\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Get the details of a transaction made on Solana.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID (devnet, mainnet-beta)
  ///
  /// * [String] txSignature (required):
  ///   The transaction signature of the transaction
  Future<Transaction> solanaGetTransaction(String network, String txSignature,) async {
    final response = await solanaGetTransactionWithHttpInfo(network, txSignature,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Transaction',) as Transaction;
    
    }
    return Future<Transaction>.value();
  }
}
