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
import 'package:general_lib/crypto/crypto.dart';

class BaseTemplateGeneralFrameworkProjectSecretClientSide {
  final String apiUrl;
  final String pathApi;
  final String pathWebSocket;
  final Crypto crypto;

  BaseTemplateGeneralFrameworkProjectSecretClientSide({
    required this.apiUrl,
    required this.pathApi,
    required this.pathWebSocket,
    required this.crypto,
  });
  BaseTemplateGeneralFrameworkProjectSecretClientSide copyWith({
    String? apiUrl,
    String? pathApi,
    String? pathWebSocket,
    Crypto? crypto,
  }) {
    return BaseTemplateGeneralFrameworkProjectSecretClientSide(
      apiUrl: apiUrl ?? this.apiUrl,
      pathApi: pathApi ?? this.pathApi,
      pathWebSocket: pathWebSocket ?? this.pathWebSocket,
      crypto: crypto ?? this.crypto,
    );
  }

  static BaseTemplateGeneralFrameworkProjectSecretClientSide defaultData() {
    return BaseTemplateGeneralFrameworkProjectSecretClientSide(
      apiUrl: "http://0.0.0.0:3000",
      pathApi: "/api",
      pathWebSocket: "/ws",
      crypto: Crypto.defaultCrypto(),
    );
  }
}

class BaseTemplateGeneralFrameworkProjectSecretServerSide {
  final String supabaseUrl;
  final String supabaseKey;
  final String pathApi;
  final String pathWebSocket;
  final Crypto crypto;

  BaseTemplateGeneralFrameworkProjectSecretServerSide({
    required this.supabaseUrl,
    required this.supabaseKey,
    required this.pathApi,
    required this.pathWebSocket,
    required this.crypto,
  });

  BaseTemplateGeneralFrameworkProjectSecretServerSide copyWith({
    String? supabaseUrl,
    String? supabaseKey,
    String? pathApi,
    String? pathWebSocket,
    String? cryptoKey,
    String? cryptoIv,
  }) {
    return BaseTemplateGeneralFrameworkProjectSecretServerSide(
      supabaseUrl: supabaseUrl ?? this.supabaseUrl,
      supabaseKey: supabaseKey ?? this.supabaseKey,
      pathApi: pathApi ?? this.pathApi,
      pathWebSocket: pathWebSocket ?? this.pathWebSocket,
      crypto: crypto,
    );
  }

  static BaseTemplateGeneralFrameworkProjectSecretServerSide defaultData() {
    return BaseTemplateGeneralFrameworkProjectSecretServerSide(
      supabaseUrl: "http://0.0.0.0:6001",
      supabaseKey:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImV4cCI6MTk4MzgxMjk5Nn0.EGIM96RAZx35lJzdJsyH-qQwv8Hdp7fsn3W0YpN81IU",
      pathApi: "/api",
      pathWebSocket: "/ws",
      crypto: Crypto.defaultCrypto(),
    );
  }
}
