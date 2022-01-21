# openapi.api.SolanaWalletApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.blockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**solanaDeriveAssociatedTokenAccountAddress**](SolanaWalletApi.md#solanaderiveassociatedtokenaccountaddress) | **GET** /solana/wallet/{public_key}/associated_token_account/{mint_address} | Derive an associated token account address
[**solanaDerivePrivateKey**](SolanaWalletApi.md#solanaderiveprivatekey) | **POST** /solana/wallet/private_key | Derive private key
[**solanaDerivePublicKey**](SolanaWalletApi.md#solanaderivepublickey) | **POST** /solana/wallet/public_key | Derive public key
[**solanaGeneratePrivateKey**](SolanaWalletApi.md#solanagenerateprivatekey) | **POST** /solana/wallet/generate/private_key | Generate private key
[**solanaGenerateSecretRecoveryPhrase**](SolanaWalletApi.md#solanageneratesecretrecoveryphrase) | **POST** /solana/wallet/generate/secret_recovery_phrase | Generate secret phrase
[**solanaGetAirdrop**](SolanaWalletApi.md#solanagetairdrop) | **POST** /solana/wallet/airdrop | Get an airdrop on devnet
[**solanaGetBalance**](SolanaWalletApi.md#solanagetbalance) | **POST** /solana/wallet/balance | Get wallet's balance in SOL or any SPL
[**solanaGetNFTsBelongingToWallet**](SolanaWalletApi.md#solanagetnftsbelongingtowallet) | **GET** /solana/wallet/{network}/{public_key}/nfts | Get address's NFTs
[**solanaGetTokensBelongingToWallet**](SolanaWalletApi.md#solanagettokensbelongingtowallet) | **GET** /solana/wallet/{network}/{public_key}/tokens | Get address's tokens and respective balances
[**solanaTransfer**](SolanaWalletApi.md#solanatransfer) | **POST** /solana/wallet/transfer | Transfer SOL, a token, or an NFT to another address


# **solanaDeriveAssociatedTokenAccountAddress**
> ATAResponse solanaDeriveAssociatedTokenAccountAddress(publicKey, mintAddress)

Derive an associated token account address

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/derive-associated-token-account-address\" target=\"_blank\">See example (Python, JavaScript)</a>.      *Each wallet can own tokens, but in Solana, each token is actually held by an <a href=\"https://spl.solana.com/associated-token-account\" target=\"_blank\">associated token account</a> (ATA), which is an account specific for a token owned by the wallet. When you transfer an SPL token, such as Serum, or transfer an NFT, you're transfering from an ATA you own to another person's ATA for that specific token. With this endpoint, you can derive an associated token address given a wallet and a token address.*  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKeyID
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: APISecretKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKeyPrefix = 'Bearer';

final api_instance = SolanaWalletApi();
final publicKey = 31LKs39pjT5oj6fWjC3F76dHWf9489asCthmgj8wu7pj; // String | The public key of the wallet
final mintAddress = 7EWJNaNYfPYMaqzdAAa4ps5kpqW95B7VHsjhW1kr18sj; // String | The mint address of the token (either SPL or NFT)

try {
    final result = api_instance.solanaDeriveAssociatedTokenAccountAddress(publicKey, mintAddress);
    print(result);
} catch (e) {
    print('Exception when calling SolanaWalletApi->solanaDeriveAssociatedTokenAccountAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicKey** | **String**| The public key of the wallet | 
 **mintAddress** | **String**| The mint address of the token (either SPL or NFT) | 

### Return type

[**ATAResponse**](ATAResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaDerivePrivateKey**
> GeneratePrivateKey solanaDerivePrivateKey(getPublicKeyRequest)

Derive private key

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/derive-private-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Returns a private key array and a base58-encoded private key given wallet authentication.  A wallet is defined by a public key. A public key is derived from a combination of seed phrase, derivation path, and passphrase. Changing any *one* of these three will change the public key output.  *You can generate a unique public key with each combination of secret recovery phrase, passphrase, and derivation path. Thus, with a single secret recovery phrase, you can generate many public keys. If you are just starting, just supply the secret recovery phrase you generated with the Solana Wallet Secret Recovery Phrase endpoint.*  *If you are trying to get a public key that already exists (e.g., created in the Phantom wallet), make sure you use the correct derivation path and passphrase. To read more about that, see the descriptions of those parameters below.*  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKeyID
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: APISecretKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKeyPrefix = 'Bearer';

final api_instance = SolanaWalletApi();
final getPublicKeyRequest = GetPublicKeyRequest(); // GetPublicKeyRequest | 

try {
    final result = api_instance.solanaDerivePrivateKey(getPublicKeyRequest);
    print(result);
} catch (e) {
    print('Exception when calling SolanaWalletApi->solanaDerivePrivateKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getPublicKeyRequest** | [**GetPublicKeyRequest**](GetPublicKeyRequest.md)|  | 

### Return type

[**GeneratePrivateKey**](GeneratePrivateKey.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaDerivePublicKey**
> PublicKey solanaDerivePublicKey(getPublicKeyRequest)

Derive public key

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/derive-public-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Returns a public key given wallet authentication.  A wallet is identified by a public key. A public key is derived from a combination of seed phrase, derivation path, and passphrase. Changing any *one* of these three will change the public key output.   It can also be derived from a private key.  *You can generate a unique public key with each combination of secret recovery phrase, passphrase, and derivation path; or from a private key. Thus, with a single secret recovery phrase, you can generate many public keys; however, with a private key, you can only generate one public key. If you are just starting, generate a <a href=\"#operation/solanaGenerateSecretRecoveryPhrase\">secret recovery phrase</a> or <a href=\"#operation/solanaGeneratePrivateKey\">private key</a>.  *If you are trying to get a public key that already exists (e.g., created in the Phantom wallet), make sure you use the correct derivation path and passphrase; or just use the private key. To read more about that, see the descriptions of those parameters below.*  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKeyID
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: APISecretKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKeyPrefix = 'Bearer';

final api_instance = SolanaWalletApi();
final getPublicKeyRequest = GetPublicKeyRequest(); // GetPublicKeyRequest | 

try {
    final result = api_instance.solanaDerivePublicKey(getPublicKeyRequest);
    print(result);
} catch (e) {
    print('Exception when calling SolanaWalletApi->solanaDerivePublicKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getPublicKeyRequest** | [**GetPublicKeyRequest**](GetPublicKeyRequest.md)|  | 

### Return type

[**PublicKey**](PublicKey.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGeneratePrivateKey**
> GeneratePrivateKey solanaGeneratePrivateKey()

Generate private key

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/generate-private-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to securely and randomly generate a private key for a Solana wallet.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKeyID
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: APISecretKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKeyPrefix = 'Bearer';

final api_instance = SolanaWalletApi();

try {
    final result = api_instance.solanaGeneratePrivateKey();
    print(result);
} catch (e) {
    print('Exception when calling SolanaWalletApi->solanaGeneratePrivateKey: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GeneratePrivateKey**](GeneratePrivateKey.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGenerateSecretRecoveryPhrase**
> SecretPhrase solanaGenerateSecretRecoveryPhrase()

Generate secret phrase

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/generate-secret-phrase\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to securely and randomly generate a secret recovery phrase for a Solana wallet.   `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKeyID
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: APISecretKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKeyPrefix = 'Bearer';

final api_instance = SolanaWalletApi();

try {
    final result = api_instance.solanaGenerateSecretRecoveryPhrase();
    print(result);
} catch (e) {
    print('Exception when calling SolanaWalletApi->solanaGenerateSecretRecoveryPhrase: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SecretPhrase**](SecretPhrase.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetAirdrop**
> TransferResponse solanaGetAirdrop(airdropRequest)

Get an airdrop on devnet

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-airdrop\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Use this endpoint to get an airdrop of SOL on the devnet (not real SOL). Amount of 0.015,  which is the minimum amount of SOL you need to mint a Metaplex NFT and then transfer it to another wallet.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKeyID
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: APISecretKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKeyPrefix = 'Bearer';

final api_instance = SolanaWalletApi();
final airdropRequest = AirdropRequest(); // AirdropRequest | 

try {
    final result = api_instance.solanaGetAirdrop(airdropRequest);
    print(result);
} catch (e) {
    print('Exception when calling SolanaWalletApi->solanaGetAirdrop: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **airdropRequest** | [**AirdropRequest**](AirdropRequest.md)|  | [optional] 

### Return type

[**TransferResponse**](TransferResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetBalance**
> BalanceResponse solanaGetBalance(balanceRequest)

Get wallet's balance in SOL or any SPL

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-wallet-balance\" target=\"_blank\">See examples (Python, JavaScript)</a>.      See the balance of a wallet in SOL or any SPL token.  To get the balance of an SPL token, supply the `mint_address` of the SPL token. The list of SPL tokens can be viewed <a href=\"https://raw.githubusercontent.com/solana-labs/token-list/main/src/tokens/solana.tokenlist.json\" target=\"_blank\">here</a>.  You can also use this endpoint to see whether or not a person owns an NFT. Just supply the `mint_address` of the NFT. A balance of \"1\" means the person owns the NFT, and a balance of \"0\" means the person does not own the NFT. This works in most cases, but we are aware of one edge case where a balance of \"0\" will show up for a person who is actually the owner of the NFT. We just recommend using the <a href=\"#operation/solanaGetNFTOwner\">getNFTOwner</a> endpoint and comparing that output to the expected address.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKeyID
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: APISecretKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKeyPrefix = 'Bearer';

final api_instance = SolanaWalletApi();
final balanceRequest = BalanceRequest(); // BalanceRequest | 

try {
    final result = api_instance.solanaGetBalance(balanceRequest);
    print(result);
} catch (e) {
    print('Exception when calling SolanaWalletApi->solanaGetBalance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **balanceRequest** | [**BalanceRequest**](BalanceRequest.md)|  | [optional] 

### Return type

[**BalanceResponse**](BalanceResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetNFTsBelongingToWallet**
> ListNFTsResponse solanaGetNFTsBelongingToWallet(network, publicKey)

Get address's NFTs

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-wallet-nfts\" target=\"_blank\">See examples (Python, JavaScript)</a>.      See the NFTs that belong to a given public key address  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKeyID
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: APISecretKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKeyPrefix = 'Bearer';

final api_instance = SolanaWalletApi();
final network = mainnet-beta; // String | The network ID (devnet, mainnet-beta)
final publicKey = 8WRsGBaDcs1X7bHWr4Ad5Nx3bW29BkcmEbyavrLXDC4i; // String | The public key of the account whose list of owned NFTs you want to get

try {
    final result = api_instance.solanaGetNFTsBelongingToWallet(network, publicKey);
    print(result);
} catch (e) {
    print('Exception when calling SolanaWalletApi->solanaGetNFTsBelongingToWallet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | **String**| The network ID (devnet, mainnet-beta) | 
 **publicKey** | **String**| The public key of the account whose list of owned NFTs you want to get | 

### Return type

[**ListNFTsResponse**](ListNFTsResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetTokensBelongingToWallet**
> List<Object> solanaGetTokensBelongingToWallet(network, publicKey, includeNfts, includeZeroBalanceHoldings)

Get address's tokens and respective balances

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-wallet-token-holdings\" target=\"_blank\">See examples (Python, JavaScript)</a>.      See the token holdings of a given public key address  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKeyID
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: APISecretKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKeyPrefix = 'Bearer';

final api_instance = SolanaWalletApi();
final network = mainnet-beta; // String | The network ID (devnet, mainnet-beta)
final publicKey = GKNcUmNacSJo4S2Kq3DuYRYRGw3sNUfJ4tyqd198t6vQ; // String | The public key of the account whose list of owned NFTs you want to get
final includeNfts = false; // bool | Whether or not to include NFTs in the response
final includeZeroBalanceHoldings = false; // bool | Whether or not to include holdings that have zero balance. This indicates that the wallet held this token or NFT in the past, but no longer holds it.

try {
    final result = api_instance.solanaGetTokensBelongingToWallet(network, publicKey, includeNfts, includeZeroBalanceHoldings);
    print(result);
} catch (e) {
    print('Exception when calling SolanaWalletApi->solanaGetTokensBelongingToWallet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | **String**| The network ID (devnet, mainnet-beta) | 
 **publicKey** | **String**| The public key of the account whose list of owned NFTs you want to get | 
 **includeNfts** | **bool**| Whether or not to include NFTs in the response | [optional] [default to false]
 **includeZeroBalanceHoldings** | **bool**| Whether or not to include holdings that have zero balance. This indicates that the wallet held this token or NFT in the past, but no longer holds it. | [optional] [default to false]

### Return type

[**List<Object>**](Object.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaTransfer**
> TransferResponse solanaTransfer(transferRequest)

Transfer SOL, a token, or an NFT to another address

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/transfer-sol\" target=\"_blank\">See transfer SOL example (Python, JavaScript)</a>.  <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/transfer-nft\" target=\"_blank\">See transfer NFT example (can also be used for SPL token) (Python, JavaScript)</a>.  Transfer SOL, a token or an NFT to another address. If you're transferring an NFT, supply the `mint` (the address of the mint) for the `token_address`.  SENDER: Note that the wallet information (`secret_recovery_phrase`, `passphrase`, `derivation_path`) is used to authorize the sending of the tokens and identifies the source of the tokens.   RECEIVER: `recipient_address` identifies the receiver. This is entirely separate from the information used for the SENDER above. So, in this API call, there are two wallets involved, but only one (namely, the SENDER) is needed to authorize the transaction.  If you're transfering a token, supply the token address found on the explorer (e.g., see `SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt` for <a href=\"https://explorer.solana.com/address/SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt\" target=\"_blank\">Serum Token</a>) for the `token_address`. If you're transferring SOL, do not supply a value for `token_address`.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKeyID
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyID').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: APISecretKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APISecretKey').apiKeyPrefix = 'Bearer';

final api_instance = SolanaWalletApi();
final transferRequest = TransferRequest(); // TransferRequest | 

try {
    final result = api_instance.solanaTransfer(transferRequest);
    print(result);
} catch (e) {
    print('Exception when calling SolanaWalletApi->solanaTransfer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transferRequest** | [**TransferRequest**](TransferRequest.md)|  | [optional] 

### Return type

[**TransferResponse**](TransferResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

