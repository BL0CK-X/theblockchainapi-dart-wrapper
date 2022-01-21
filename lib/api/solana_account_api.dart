//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SolanaAccountApi {
  SolanaAccountApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get the details of an account on Solana
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-account/get-account\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Get the details of an account on Solana. Learn more about accounts <a href=\"https://docs.solana.com/developing/programming-model/accounts\" target=\"_blank\">here</a>.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID (devnet, mainnet-beta)
  ///
  /// * [String] publicKey (required):
  ///   The public key of the account
  Future<Response> solanaGetAccountWithHttpInfo(String network, String publicKey,) async {
    // Verify required params are set.
    if (network == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: network');
    }
    if (publicKey == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: publicKey');
    }

    // ignore: prefer_const_declarations
    final path = r'/solana/account/{network}/{public_key}'
      .replaceAll('{network}', network)
      .replaceAll('{public_key}', publicKey);

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

  /// Get the details of an account on Solana
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-account/get-account\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Get the details of an account on Solana. Learn more about accounts <a href=\"https://docs.solana.com/developing/programming-model/accounts\" target=\"_blank\">here</a>.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID (devnet, mainnet-beta)
  ///
  /// * [String] publicKey (required):
  ///   The public key of the account
  Future<Account> solanaGetAccount(String network, String publicKey,) async {
    final response = await solanaGetAccountWithHttpInfo(network, publicKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Account',) as Account;
    
    }
    return Future<Account>.value();
  }

  /// Get if account is candy machine
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-account/get-is-candy-machine\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Determine whether or not a public key address corresponds to a candy machine ID or candy machine configuration.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID (devnet, mainnet-beta)
  ///
  /// * [String] publicKey (required):
  ///   The public key of the account
  Future<Response> solanaGetAccountIsCandyMachineWithHttpInfo(String network, String publicKey,) async {
    // Verify required params are set.
    if (network == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: network');
    }
    if (publicKey == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: publicKey');
    }

    // ignore: prefer_const_declarations
    final path = r'/solana/account/{network}/{public_key}/is_candy_machine'
      .replaceAll('{network}', network)
      .replaceAll('{public_key}', publicKey);

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

  /// Get if account is candy machine
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-account/get-is-candy-machine\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Determine whether or not a public key address corresponds to a candy machine ID or candy machine configuration.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID (devnet, mainnet-beta)
  ///
  /// * [String] publicKey (required):
  ///   The public key of the account
  Future<AccountIsCandyMachine> solanaGetAccountIsCandyMachine(String network, String publicKey,) async {
    final response = await solanaGetAccountIsCandyMachineWithHttpInfo(network, publicKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountIsCandyMachine',) as AccountIsCandyMachine;
    
    }
    return Future<AccountIsCandyMachine>.value();
  }

  /// Get if account is NFT
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-account/get-is-nft\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Determine whether or not a public key is an NFT `mint address`  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID (devnet, mainnet-beta)
  ///
  /// * [String] publicKey (required):
  ///   The public key of the account
  Future<Response> solanaGetAccountIsNFTWithHttpInfo(String network, String publicKey,) async {
    // Verify required params are set.
    if (network == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: network');
    }
    if (publicKey == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: publicKey');
    }

    // ignore: prefer_const_declarations
    final path = r'/solana/account/{network}/{public_key}/is_nft'
      .replaceAll('{network}', network)
      .replaceAll('{public_key}', publicKey);

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

  /// Get if account is NFT
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-account/get-is-nft\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Determine whether or not a public key is an NFT `mint address`  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID (devnet, mainnet-beta)
  ///
  /// * [String] publicKey (required):
  ///   The public key of the account
  Future<AccountIsNFT> solanaGetAccountIsNFT(String network, String publicKey,) async {
    final response = await solanaGetAccountIsNFTWithHttpInfo(network, publicKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountIsNFT',) as AccountIsNFT;
    
    }
    return Future<AccountIsNFT>.value();
  }
}
