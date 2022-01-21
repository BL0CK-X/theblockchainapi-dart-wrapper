//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SolanaWalletApi {
  SolanaWalletApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Derive an associated token account address
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/derive-associated-token-account-address\" target=\"_blank\">See example (Python, JavaScript)</a>.      *Each wallet can own tokens, but in Solana, each token is actually held by an <a href=\"https://spl.solana.com/associated-token-account\" target=\"_blank\">associated token account</a> (ATA), which is an account specific for a token owned by the wallet. When you transfer an SPL token, such as Serum, or transfer an NFT, you're transfering from an ATA you own to another person's ATA for that specific token. With this endpoint, you can derive an associated token address given a wallet and a token address.*  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] publicKey (required):
  ///   The public key of the wallet
  ///
  /// * [String] mintAddress (required):
  ///   The mint address of the token (either SPL or NFT)
  Future<Response> solanaDeriveAssociatedTokenAccountAddressWithHttpInfo(String publicKey, String mintAddress,) async {
    // Verify required params are set.
    if (publicKey == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: publicKey');
    }
    if (mintAddress == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: mintAddress');
    }

    // ignore: prefer_const_declarations
    final path = r'/solana/wallet/{public_key}/associated_token_account/{mint_address}'
      .replaceAll('{public_key}', publicKey)
      .replaceAll('{mint_address}', mintAddress);

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

  /// Derive an associated token account address
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/derive-associated-token-account-address\" target=\"_blank\">See example (Python, JavaScript)</a>.      *Each wallet can own tokens, but in Solana, each token is actually held by an <a href=\"https://spl.solana.com/associated-token-account\" target=\"_blank\">associated token account</a> (ATA), which is an account specific for a token owned by the wallet. When you transfer an SPL token, such as Serum, or transfer an NFT, you're transfering from an ATA you own to another person's ATA for that specific token. With this endpoint, you can derive an associated token address given a wallet and a token address.*  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Parameters:
  ///
  /// * [String] publicKey (required):
  ///   The public key of the wallet
  ///
  /// * [String] mintAddress (required):
  ///   The mint address of the token (either SPL or NFT)
  Future<ATAResponse> solanaDeriveAssociatedTokenAccountAddress(String publicKey, String mintAddress,) async {
    final response = await solanaDeriveAssociatedTokenAccountAddressWithHttpInfo(publicKey, mintAddress,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ATAResponse',) as ATAResponse;
    
    }
    return Future<ATAResponse>.value();
  }

  /// Derive private key
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/derive-private-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Returns a private key array and a base58-encoded private key given wallet authentication.  A wallet is defined by a public key. A public key is derived from a combination of seed phrase, derivation path, and passphrase. Changing any *one* of these three will change the public key output.  *You can generate a unique public key with each combination of secret recovery phrase, passphrase, and derivation path. Thus, with a single secret recovery phrase, you can generate many public keys. If you are just starting, just supply the secret recovery phrase you generated with the Solana Wallet Secret Recovery Phrase endpoint.*  *If you are trying to get a public key that already exists (e.g., created in the Phantom wallet), make sure you use the correct derivation path and passphrase. To read more about that, see the descriptions of those parameters below.*  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GetPublicKeyRequest] getPublicKeyRequest (required):
  Future<Response> solanaDerivePrivateKeyWithHttpInfo(GetPublicKeyRequest getPublicKeyRequest,) async {
    // Verify required params are set.
    if (getPublicKeyRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: getPublicKeyRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/solana/wallet/private_key';

    // ignore: prefer_final_locals
    Object postBody = getPublicKeyRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['APIKeyID', 'APISecretKey'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Derive private key
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/derive-private-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Returns a private key array and a base58-encoded private key given wallet authentication.  A wallet is defined by a public key. A public key is derived from a combination of seed phrase, derivation path, and passphrase. Changing any *one* of these three will change the public key output.  *You can generate a unique public key with each combination of secret recovery phrase, passphrase, and derivation path. Thus, with a single secret recovery phrase, you can generate many public keys. If you are just starting, just supply the secret recovery phrase you generated with the Solana Wallet Secret Recovery Phrase endpoint.*  *If you are trying to get a public key that already exists (e.g., created in the Phantom wallet), make sure you use the correct derivation path and passphrase. To read more about that, see the descriptions of those parameters below.*  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Parameters:
  ///
  /// * [GetPublicKeyRequest] getPublicKeyRequest (required):
  Future<GeneratePrivateKey> solanaDerivePrivateKey(GetPublicKeyRequest getPublicKeyRequest,) async {
    final response = await solanaDerivePrivateKeyWithHttpInfo(getPublicKeyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GeneratePrivateKey',) as GeneratePrivateKey;
    
    }
    return Future<GeneratePrivateKey>.value();
  }

  /// Derive public key
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/derive-public-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Returns a public key given wallet authentication.  A wallet is identified by a public key. A public key is derived from a combination of seed phrase, derivation path, and passphrase. Changing any *one* of these three will change the public key output.   It can also be derived from a private key.  *You can generate a unique public key with each combination of secret recovery phrase, passphrase, and derivation path; or from a private key. Thus, with a single secret recovery phrase, you can generate many public keys; however, with a private key, you can only generate one public key. If you are just starting, generate a <a href=\"#operation/solanaGenerateSecretRecoveryPhrase\">secret recovery phrase</a> or <a href=\"#operation/solanaGeneratePrivateKey\">private key</a>.  *If you are trying to get a public key that already exists (e.g., created in the Phantom wallet), make sure you use the correct derivation path and passphrase; or just use the private key. To read more about that, see the descriptions of those parameters below.*  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GetPublicKeyRequest] getPublicKeyRequest (required):
  Future<Response> solanaDerivePublicKeyWithHttpInfo(GetPublicKeyRequest getPublicKeyRequest,) async {
    // Verify required params are set.
    if (getPublicKeyRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: getPublicKeyRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/solana/wallet/public_key';

    // ignore: prefer_final_locals
    Object postBody = getPublicKeyRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['APIKeyID', 'APISecretKey'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Derive public key
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/derive-public-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Returns a public key given wallet authentication.  A wallet is identified by a public key. A public key is derived from a combination of seed phrase, derivation path, and passphrase. Changing any *one* of these three will change the public key output.   It can also be derived from a private key.  *You can generate a unique public key with each combination of secret recovery phrase, passphrase, and derivation path; or from a private key. Thus, with a single secret recovery phrase, you can generate many public keys; however, with a private key, you can only generate one public key. If you are just starting, generate a <a href=\"#operation/solanaGenerateSecretRecoveryPhrase\">secret recovery phrase</a> or <a href=\"#operation/solanaGeneratePrivateKey\">private key</a>.  *If you are trying to get a public key that already exists (e.g., created in the Phantom wallet), make sure you use the correct derivation path and passphrase; or just use the private key. To read more about that, see the descriptions of those parameters below.*  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Parameters:
  ///
  /// * [GetPublicKeyRequest] getPublicKeyRequest (required):
  Future<PublicKey> solanaDerivePublicKey(GetPublicKeyRequest getPublicKeyRequest,) async {
    final response = await solanaDerivePublicKeyWithHttpInfo(getPublicKeyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PublicKey',) as PublicKey;
    
    }
    return Future<PublicKey>.value();
  }

  /// Generate private key
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/generate-private-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to securely and randomly generate a private key for a Solana wallet.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> solanaGeneratePrivateKeyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/solana/wallet/generate/private_key';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['APIKeyID', 'APISecretKey'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Generate private key
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/generate-private-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to securely and randomly generate a private key for a Solana wallet.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  Future<GeneratePrivateKey> solanaGeneratePrivateKey() async {
    final response = await solanaGeneratePrivateKeyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GeneratePrivateKey',) as GeneratePrivateKey;
    
    }
    return Future<GeneratePrivateKey>.value();
  }

  /// Generate secret phrase
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/generate-secret-phrase\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to securely and randomly generate a secret recovery phrase for a Solana wallet.   `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> solanaGenerateSecretRecoveryPhraseWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/solana/wallet/generate/secret_recovery_phrase';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['APIKeyID', 'APISecretKey'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Generate secret phrase
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/generate-secret-phrase\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to securely and randomly generate a secret recovery phrase for a Solana wallet.   `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  Future<SecretPhrase> solanaGenerateSecretRecoveryPhrase() async {
    final response = await solanaGenerateSecretRecoveryPhraseWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SecretPhrase',) as SecretPhrase;
    
    }
    return Future<SecretPhrase>.value();
  }

  /// Get an airdrop on devnet
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-airdrop\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Use this endpoint to get an airdrop of SOL on the devnet (not real SOL). Amount of 0.015,  which is the minimum amount of SOL you need to mint a Metaplex NFT and then transfer it to another wallet.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AirdropRequest] airdropRequest:
  Future<Response> solanaGetAirdropWithHttpInfo({ AirdropRequest airdropRequest, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/solana/wallet/airdrop';

    // ignore: prefer_final_locals
    Object postBody = airdropRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['APIKeyID', 'APISecretKey'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get an airdrop on devnet
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-airdrop\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Use this endpoint to get an airdrop of SOL on the devnet (not real SOL). Amount of 0.015,  which is the minimum amount of SOL you need to mint a Metaplex NFT and then transfer it to another wallet.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Parameters:
  ///
  /// * [AirdropRequest] airdropRequest:
  Future<TransferResponse> solanaGetAirdrop({ AirdropRequest airdropRequest, }) async {
    final response = await solanaGetAirdropWithHttpInfo( airdropRequest: airdropRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TransferResponse',) as TransferResponse;
    
    }
    return Future<TransferResponse>.value();
  }

  /// Get wallet's balance in SOL or any SPL
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-wallet-balance\" target=\"_blank\">See examples (Python, JavaScript)</a>.      See the balance of a wallet in SOL or any SPL token.  To get the balance of an SPL token, supply the `mint_address` of the SPL token. The list of SPL tokens can be viewed <a href=\"https://raw.githubusercontent.com/solana-labs/token-list/main/src/tokens/solana.tokenlist.json\" target=\"_blank\">here</a>.  You can also use this endpoint to see whether or not a person owns an NFT. Just supply the `mint_address` of the NFT. A balance of \"1\" means the person owns the NFT, and a balance of \"0\" means the person does not own the NFT. This works in most cases, but we are aware of one edge case where a balance of \"0\" will show up for a person who is actually the owner of the NFT. We just recommend using the <a href=\"#operation/solanaGetNFTOwner\">getNFTOwner</a> endpoint and comparing that output to the expected address.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BalanceRequest] balanceRequest:
  Future<Response> solanaGetBalanceWithHttpInfo({ BalanceRequest balanceRequest, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/solana/wallet/balance';

    // ignore: prefer_final_locals
    Object postBody = balanceRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['APIKeyID', 'APISecretKey'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get wallet's balance in SOL or any SPL
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-wallet-balance\" target=\"_blank\">See examples (Python, JavaScript)</a>.      See the balance of a wallet in SOL or any SPL token.  To get the balance of an SPL token, supply the `mint_address` of the SPL token. The list of SPL tokens can be viewed <a href=\"https://raw.githubusercontent.com/solana-labs/token-list/main/src/tokens/solana.tokenlist.json\" target=\"_blank\">here</a>.  You can also use this endpoint to see whether or not a person owns an NFT. Just supply the `mint_address` of the NFT. A balance of \"1\" means the person owns the NFT, and a balance of \"0\" means the person does not own the NFT. This works in most cases, but we are aware of one edge case where a balance of \"0\" will show up for a person who is actually the owner of the NFT. We just recommend using the <a href=\"#operation/solanaGetNFTOwner\">getNFTOwner</a> endpoint and comparing that output to the expected address.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Parameters:
  ///
  /// * [BalanceRequest] balanceRequest:
  Future<BalanceResponse> solanaGetBalance({ BalanceRequest balanceRequest, }) async {
    final response = await solanaGetBalanceWithHttpInfo( balanceRequest: balanceRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BalanceResponse',) as BalanceResponse;
    
    }
    return Future<BalanceResponse>.value();
  }

  /// Get address's NFTs
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-wallet-nfts\" target=\"_blank\">See examples (Python, JavaScript)</a>.      See the NFTs that belong to a given public key address  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID (devnet, mainnet-beta)
  ///
  /// * [String] publicKey (required):
  ///   The public key of the account whose list of owned NFTs you want to get
  Future<Response> solanaGetNFTsBelongingToWalletWithHttpInfo(String network, String publicKey,) async {
    // Verify required params are set.
    if (network == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: network');
    }
    if (publicKey == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: publicKey');
    }

    // ignore: prefer_const_declarations
    final path = r'/solana/wallet/{network}/{public_key}/nfts'
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

  /// Get address's NFTs
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-wallet-nfts\" target=\"_blank\">See examples (Python, JavaScript)</a>.      See the NFTs that belong to a given public key address  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID (devnet, mainnet-beta)
  ///
  /// * [String] publicKey (required):
  ///   The public key of the account whose list of owned NFTs you want to get
  Future<ListNFTsResponse> solanaGetNFTsBelongingToWallet(String network, String publicKey,) async {
    final response = await solanaGetNFTsBelongingToWalletWithHttpInfo(network, publicKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListNFTsResponse',) as ListNFTsResponse;
    
    }
    return Future<ListNFTsResponse>.value();
  }

  /// Get address's tokens and respective balances
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-wallet-token-holdings\" target=\"_blank\">See examples (Python, JavaScript)</a>.      See the token holdings of a given public key address  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID (devnet, mainnet-beta)
  ///
  /// * [String] publicKey (required):
  ///   The public key of the account whose list of owned NFTs you want to get
  ///
  /// * [bool] includeNfts:
  ///   Whether or not to include NFTs in the response
  ///
  /// * [bool] includeZeroBalanceHoldings:
  ///   Whether or not to include holdings that have zero balance. This indicates that the wallet held this token or NFT in the past, but no longer holds it.
  Future<Response> solanaGetTokensBelongingToWalletWithHttpInfo(String network, String publicKey, { bool includeNfts, bool includeZeroBalanceHoldings, }) async {
    // Verify required params are set.
    if (network == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: network');
    }
    if (publicKey == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: publicKey');
    }

    // ignore: prefer_const_declarations
    final path = r'/solana/wallet/{network}/{public_key}/tokens'
      .replaceAll('{network}', network)
      .replaceAll('{public_key}', publicKey);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includeNfts != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'include_nfts', includeNfts));
    }
    if (includeZeroBalanceHoldings != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'include_zero_balance_holdings', includeZeroBalanceHoldings));
    }

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

  /// Get address's tokens and respective balances
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-wallet-token-holdings\" target=\"_blank\">See examples (Python, JavaScript)</a>.      See the token holdings of a given public key address  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID (devnet, mainnet-beta)
  ///
  /// * [String] publicKey (required):
  ///   The public key of the account whose list of owned NFTs you want to get
  ///
  /// * [bool] includeNfts:
  ///   Whether or not to include NFTs in the response
  ///
  /// * [bool] includeZeroBalanceHoldings:
  ///   Whether or not to include holdings that have zero balance. This indicates that the wallet held this token or NFT in the past, but no longer holds it.
  Future<List<Object>> solanaGetTokensBelongingToWallet(String network, String publicKey, { bool includeNfts, bool includeZeroBalanceHoldings, }) async {
    final response = await solanaGetTokensBelongingToWalletWithHttpInfo(network, publicKey,  includeNfts: includeNfts, includeZeroBalanceHoldings: includeZeroBalanceHoldings, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Object>') as List)
        .cast<Object>()
        .toList(growable: false);

    }
    return Future<List<Object>>.value();
  }

  /// Transfer SOL, a token, or an NFT to another address
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/transfer-sol\" target=\"_blank\">See transfer SOL example (Python, JavaScript)</a>.  <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/transfer-nft\" target=\"_blank\">See transfer NFT example (can also be used for SPL token) (Python, JavaScript)</a>.  Transfer SOL, a token or an NFT to another address. If you're transferring an NFT, supply the `mint` (the address of the mint) for the `token_address`.  SENDER: Note that the wallet information (`secret_recovery_phrase`, `passphrase`, `derivation_path`) is used to authorize the sending of the tokens and identifies the source of the tokens.   RECEIVER: `recipient_address` identifies the receiver. This is entirely separate from the information used for the SENDER above. So, in this API call, there are two wallets involved, but only one (namely, the SENDER) is needed to authorize the transaction.  If you're transfering a token, supply the token address found on the explorer (e.g., see `SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt` for <a href=\"https://explorer.solana.com/address/SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt\" target=\"_blank\">Serum Token</a>) for the `token_address`. If you're transferring SOL, do not supply a value for `token_address`.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TransferRequest] transferRequest:
  Future<Response> solanaTransferWithHttpInfo({ TransferRequest transferRequest, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/solana/wallet/transfer';

    // ignore: prefer_final_locals
    Object postBody = transferRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['APIKeyID', 'APISecretKey'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Transfer SOL, a token, or an NFT to another address
  ///
  /// <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/transfer-sol\" target=\"_blank\">See transfer SOL example (Python, JavaScript)</a>.  <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/transfer-nft\" target=\"_blank\">See transfer NFT example (can also be used for SPL token) (Python, JavaScript)</a>.  Transfer SOL, a token or an NFT to another address. If you're transferring an NFT, supply the `mint` (the address of the mint) for the `token_address`.  SENDER: Note that the wallet information (`secret_recovery_phrase`, `passphrase`, `derivation_path`) is used to authorize the sending of the tokens and identifies the source of the tokens.   RECEIVER: `recipient_address` identifies the receiver. This is entirely separate from the information used for the SENDER above. So, in this API call, there are two wallets involved, but only one (namely, the SENDER) is needed to authorize the transaction.  If you're transfering a token, supply the token address found on the explorer (e.g., see `SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt` for <a href=\"https://explorer.solana.com/address/SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt\" target=\"_blank\">Serum Token</a>) for the `token_address`. If you're transferring SOL, do not supply a value for `token_address`.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Parameters:
  ///
  /// * [TransferRequest] transferRequest:
  Future<TransferResponse> solanaTransfer({ TransferRequest transferRequest, }) async {
    final response = await solanaTransferWithHttpInfo( transferRequest: transferRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TransferResponse',) as TransferResponse;
    
    }
    return Future<TransferResponse>.value();
  }
}
