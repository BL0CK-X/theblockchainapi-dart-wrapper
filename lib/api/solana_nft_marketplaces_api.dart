//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SolanaNFTMarketplacesApi {
  SolanaNFTMarketplacesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Buy
  ///
  /// <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/solana-nft-marketplaces/buy-nft\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Buy an NFT on a Solana Exchange.  Exchanges supported: SolSea, Magic Eden  **We are not responsible for any SOL or NFT lost.**  `Cost: 25 Credits`, `Cost: 3 Credits on Devnet`  Limited to $29/mo plans and above. (<a href=\"#section/Pricing\">See Pricing</a>)  (You are able to try on the `Free` plan as well, until you run out of credits.)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID
  ///
  /// * [String] exchange (required):
  ///   The NFT exchange to interact with
  ///
  /// * [String] mintAddress (required):
  ///   The mint address of the NFT you want to buy
  ///
  /// * [BuyRequest] buyRequest:
  Future<Response> solanaBuyNFTWithHttpInfo(String network, String exchange, String mintAddress, { BuyRequest buyRequest, }) async {
    // Verify required params are set.
    if (network == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: network');
    }
    if (exchange == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: exchange');
    }
    if (mintAddress == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: mintAddress');
    }

    // ignore: prefer_const_declarations
    final path = r'/solana/nft/marketplaces/{exchange}/buy/{network}/{mint_address}'
      .replaceAll('{network}', network)
      .replaceAll('{exchange}', exchange)
      .replaceAll('{mint_address}', mintAddress);

    // ignore: prefer_final_locals
    Object postBody = buyRequest;

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

  /// Buy
  ///
  /// <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/solana-nft-marketplaces/buy-nft\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Buy an NFT on a Solana Exchange.  Exchanges supported: SolSea, Magic Eden  **We are not responsible for any SOL or NFT lost.**  `Cost: 25 Credits`, `Cost: 3 Credits on Devnet`  Limited to $29/mo plans and above. (<a href=\"#section/Pricing\">See Pricing</a>)  (You are able to try on the `Free` plan as well, until you run out of credits.)
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID
  ///
  /// * [String] exchange (required):
  ///   The NFT exchange to interact with
  ///
  /// * [String] mintAddress (required):
  ///   The mint address of the NFT you want to buy
  ///
  /// * [BuyRequest] buyRequest:
  Future<BuyResponse> solanaBuyNFT(String network, String exchange, String mintAddress, { BuyRequest buyRequest, }) async {
    final response = await solanaBuyNFTWithHttpInfo(network, exchange, mintAddress,  buyRequest: buyRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BuyResponse',) as BuyResponse;
    
    }
    return Future<BuyResponse>.value();
  }

  /// Delist
  ///
  /// <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/solana-nft-marketplaces/delist-nft\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Delist an NFT from a Solana Exchange.  Exchanges supported: SolSea, Magic Eden  **We are not responsible for any SOL or NFT lost.**  `Cost: 8 Credits`, `Cost: 3 Credits on Devnet`  Limited to $29/mo plans and above. (<a href=\"#section/Pricing\">See Pricing</a>)  (You are able to try on the `Free` plan as well, until you run out of credits.)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID
  ///
  /// * [String] exchange (required):
  ///   The NFT exchange to interact with
  ///
  /// * [String] mintAddress (required):
  ///   The mint address of the NFT you want to buy
  ///
  /// * [DelistRequest] delistRequest:
  Future<Response> solanaDelistNFTWithHttpInfo(String network, String exchange, String mintAddress, { DelistRequest delistRequest, }) async {
    // Verify required params are set.
    if (network == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: network');
    }
    if (exchange == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: exchange');
    }
    if (mintAddress == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: mintAddress');
    }

    // ignore: prefer_const_declarations
    final path = r'/solana/nft/marketplaces/{exchange}/delist/{network}/{mint_address}'
      .replaceAll('{network}', network)
      .replaceAll('{exchange}', exchange)
      .replaceAll('{mint_address}', mintAddress);

    // ignore: prefer_final_locals
    Object postBody = delistRequest;

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

  /// Delist
  ///
  /// <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/solana-nft-marketplaces/delist-nft\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Delist an NFT from a Solana Exchange.  Exchanges supported: SolSea, Magic Eden  **We are not responsible for any SOL or NFT lost.**  `Cost: 8 Credits`, `Cost: 3 Credits on Devnet`  Limited to $29/mo plans and above. (<a href=\"#section/Pricing\">See Pricing</a>)  (You are able to try on the `Free` plan as well, until you run out of credits.)
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID
  ///
  /// * [String] exchange (required):
  ///   The NFT exchange to interact with
  ///
  /// * [String] mintAddress (required):
  ///   The mint address of the NFT you want to buy
  ///
  /// * [DelistRequest] delistRequest:
  Future<DelistResponse> solanaDelistNFT(String network, String exchange, String mintAddress, { DelistRequest delistRequest, }) async {
    final response = await solanaDelistNFTWithHttpInfo(network, exchange, mintAddress,  delistRequest: delistRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DelistResponse',) as DelistResponse;
    
    }
    return Future<DelistResponse>.value();
  }

  /// Get NFT Listing
  ///
  /// <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/solana-nft-marketplaces/get-nft-listing\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Get the Marketplace listing of a Solana NFT.  Currently checks for the following Solana NFT martketplaces: SolSea, Magic Eden  `Cost: 1 Credits`, (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID
  ///
  /// * [String] mintAddress (required):
  ///   The mint address of the NFT you want to buy
  Future<Response> solanaGetNFTListingWithHttpInfo(String network, String mintAddress,) async {
    // Verify required params are set.
    if (network == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: network');
    }
    if (mintAddress == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: mintAddress');
    }

    // ignore: prefer_const_declarations
    final path = r'/solana/nft/marketplaces/listing/{network}/{mint_address}'
      .replaceAll('{network}', network)
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

  /// Get NFT Listing
  ///
  /// <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/solana-nft-marketplaces/get-nft-listing\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Get the Marketplace listing of a Solana NFT.  Currently checks for the following Solana NFT martketplaces: SolSea, Magic Eden  `Cost: 1 Credits`, (<a href=\"#section/Pricing\">See Pricing</a>)
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID
  ///
  /// * [String] mintAddress (required):
  ///   The mint address of the NFT you want to buy
  Future<GetNFTListingResponse> solanaGetNFTListing(String network, String mintAddress,) async {
    final response = await solanaGetNFTListingWithHttpInfo(network, mintAddress,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetNFTListingResponse',) as GetNFTListingResponse;
    
    }
    return Future<GetNFTListingResponse>.value();
  }

  /// List
  ///
  /// <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/solana-nft-marketplaces/list-nft\" target=\"_blank\">See examples (Python, JavaScript)</a>.  List an NFT on a Solana Exchange.  Exchanges supported: SolSea, Magic Eden  **We are not responsible for any SOL or NFT lost.**  `Cost: 12 Credits`, `Cost: 3 Credits on Devnet`  Limited to $29/mo plans and above. (<a href=\"#section/Pricing\">See Pricing</a>)  (You are able to try on the `Free` plan as well, until you run out of credits.)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID
  ///
  /// * [String] exchange (required):
  ///   The NFT exchange to interact with
  ///
  /// * [String] mintAddress (required):
  ///   The mint address of the NFT you want to buy
  ///
  /// * [ListRequest] listRequest:
  Future<Response> solanaListNFTWithHttpInfo(String network, String exchange, String mintAddress, { ListRequest listRequest, }) async {
    // Verify required params are set.
    if (network == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: network');
    }
    if (exchange == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: exchange');
    }
    if (mintAddress == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: mintAddress');
    }

    // ignore: prefer_const_declarations
    final path = r'/solana/nft/marketplaces/{exchange}/list/{network}/{mint_address}'
      .replaceAll('{network}', network)
      .replaceAll('{exchange}', exchange)
      .replaceAll('{mint_address}', mintAddress);

    // ignore: prefer_final_locals
    Object postBody = listRequest;

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

  /// List
  ///
  /// <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/solana-nft-marketplaces/list-nft\" target=\"_blank\">See examples (Python, JavaScript)</a>.  List an NFT on a Solana Exchange.  Exchanges supported: SolSea, Magic Eden  **We are not responsible for any SOL or NFT lost.**  `Cost: 12 Credits`, `Cost: 3 Credits on Devnet`  Limited to $29/mo plans and above. (<a href=\"#section/Pricing\">See Pricing</a>)  (You are able to try on the `Free` plan as well, until you run out of credits.)
  ///
  /// Parameters:
  ///
  /// * [String] network (required):
  ///   The network ID
  ///
  /// * [String] exchange (required):
  ///   The NFT exchange to interact with
  ///
  /// * [String] mintAddress (required):
  ///   The mint address of the NFT you want to buy
  ///
  /// * [ListRequest] listRequest:
  Future<ListResponse> solanaListNFT(String network, String exchange, String mintAddress, { ListRequest listRequest, }) async {
    final response = await solanaListNFTWithHttpInfo(network, exchange, mintAddress,  listRequest: listRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListResponse',) as ListResponse;
    
    }
    return Future<ListResponse>.value();
  }
}
