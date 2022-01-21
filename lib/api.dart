//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/file_api.dart';
part 'api/solana_account_api.dart';
part 'api/solana_candy_machine_api.dart';
part 'api/solana_nft_api.dart';
part 'api/solana_nft_marketplaces_api.dart';
part 'api/solana_spl_token_api.dart';
part 'api/solana_transaction_api.dart';
part 'api/solana_wallet_api.dart';

part 'model/ata_response.dart';
part 'model/account.dart';
part 'model/account_context.dart';
part 'model/account_is_candy_machine.dart';
part 'model/account_is_nft.dart';
part 'model/account_value.dart';
part 'model/airdrop_request.dart';
part 'model/b58_private_key.dart';
part 'model/balance_request.dart';
part 'model/balance_response.dart';
part 'model/buy_request.dart';
part 'model/buy_response.dart';
part 'model/candy_machine_search_request.dart';
part 'model/create_test_candy_machine_request.dart';
part 'model/create_test_candy_machine_response.dart';
part 'model/delist_request.dart';
part 'model/delist_response.dart';
part 'model/generate_private_key.dart';
part 'model/get_all_nfts_response.dart';
part 'model/get_all_nfts_response_minted_nfts.dart';
part 'model/get_all_nfts_response_unminted_nfts.dart';
part 'model/get_candy_machine_id_request.dart';
part 'model/get_candy_machine_id_response.dart';
part 'model/get_candy_metadata_error_response.dart';
part 'model/get_candy_metadata_request.dart';
part 'model/get_candy_metadata_response.dart';
part 'model/get_candy_metadata_response_creators.dart';
part 'model/get_file_response.dart';
part 'model/get_nft_listing_response.dart';
part 'model/get_public_key_request.dart';
part 'model/get_spl_token_response.dart';
part 'model/list_nfts_response.dart';
part 'model/list_request.dart';
part 'model/list_response.dart';
part 'model/mint_nft_error_response.dart';
part 'model/mint_nft_request.dart';
part 'model/mint_nft_response.dart';
part 'model/nft.dart';
part 'model/nft_data.dart';
part 'model/nft_mint_error_response.dart';
part 'model/nft_mint_fee.dart';
part 'model/nft_mint_request.dart';
part 'model/nft_owner_response.dart';
part 'model/nft_search_request.dart';
part 'model/nft_search_response.dart';
part 'model/private_key.dart';
part 'model/public_key.dart';
part 'model/secret_phrase.dart';
part 'model/secret_recovery_phrase.dart';
part 'model/transaction.dart';
part 'model/transaction_result.dart';
part 'model/transfer_request.dart';
part 'model/transfer_response.dart';
part 'model/upload_file_request.dart';
part 'model/wallet.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
