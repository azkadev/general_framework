/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// ignore_for_file: non_constant_identifier_names

import 'package:base_template_general_framework_project_client/base_template_general_framework_project_client_core.dart';
import 'package:base_template_general_framework_project_scheme/api_scheme/api_scheme.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';
import 'package:general_framework/core/client/options.dart';

extension BaseTemplateGeneralFrameworkProjectClientExtensionInvokeApiGenerate
    on BaseTemplateGeneralFrameworkProjectClient {
  /// generate
  Future<Ok> api_signUp({
    required SignUp signUpParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: signUpParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Ok(result);
      },
    );
  }

  /// generate
  Future<Session> api_signIn({
    required SignIn signInParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: signInParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Session(result);
      },
    );
  }

  /// generate
  Future<Account> api_getMe({
    required GetMe getMeParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: getMeParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Account(result);
      },
    );
  }

  /// generate
  Future<Accounts> api_searchAccount({
    required SearchAccount searchAccountParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: searchAccountParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Accounts(result);
      },
    );
  }

  /// generate
  Future<Account> api_searchAccountByUsername({
    required SearchAccountByUsername searchAccountByUsernameParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: searchAccountByUsernameParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Account(result);
      },
    );
  }

  /// generate
  Future<Account> api_getChat({
    required GetChat getChatParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: getChatParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Account(result);
      },
    );
  }

  /// generate
  Future<Account> api_getUser({
    required GetUser getUserParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: getUserParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Account(result);
      },
    );
  }

  /// generate
  Future<Ok> api_setName({
    required SetName setNameParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: setNameParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Ok(result);
      },
    );
  }

  /// generate
  Future<Ok> api_setUsername({
    required SetUsername setUsernameParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: setUsernameParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Ok(result);
      },
    );
  }

  /// generate
  Future<Ok> api_setBio({
    required SetBio setBioParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: setBioParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Ok(result);
      },
    );
  }

  /// generate
  Future<Message> api_sendMessage({
    required SendMessage sendMessageParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: sendMessageParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Message(result);
      },
    );
  }

  /// generate
  Future<Messages> api_getAllMessages({
    required GetAllMessages getAllMessagesParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: getAllMessagesParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Messages(result);
      },
    );
  }

  /// generate
  Future<Messages> api_getMessages({
    required GetMessages getMessagesParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: getMessagesParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Messages(result);
      },
    );
  }

  /// generate
  Future<Message> api_getMessage({
    required GetMessage getMessageParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: getMessageParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Message(result);
      },
    );
  }

  /// generate
  Future<Update> api_getUpdate({
    required GetUpdate getUpdateParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: getUpdateParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Update(result);
      },
    );
  }

  /// generate
  Future<Sessions> api_getSessions({
    required GetSessions getSessionsParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: getSessionsParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Sessions(result);
      },
    );
  }

  /// generate
  Future<Ok> api_logOut({
    required LogOut logOutParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: logOutParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Ok(result);
      },
    );
  }
}
