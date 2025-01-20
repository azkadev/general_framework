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
// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class ApplicationConfiguration extends JsonScheme {
  ApplicationConfiguration(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "applicationConfiguration",
      "is_lite": false,
      "is_notification": true,
      "notification_sound": "",
      "is_notification_private": true,
      "notification_private_sound": "",
      "is_notification_group": true,
      "notification_group_sound": "",
      "is_notification_channel": true,
      "notification_channel_sound": "",
      "is_notification_bot": true,
      "notification_bot_sound": "",
      "is_notification_calling": true,
      "notification_calling_sound": "",
      "language_code_id": ""
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == applicationConfiguration
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  /// create [ApplicationConfiguration]
  /// Empty
  static ApplicationConfiguration empty() {
    return ApplicationConfiguration({});
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_type(String? value) {
    rawData["@type"] = value;
  }

  bool? get is_lite {
    try {
      if (rawData["is_lite"] is bool == false) {
        return null;
      }
      return rawData["is_lite"] as bool;
    } catch (e) {
      return null;
    }
  }

  set is_lite(bool? value) {
    rawData["is_lite"] = value;
  }

  bool? get is_notification {
    try {
      if (rawData["is_notification"] is bool == false) {
        return null;
      }
      return rawData["is_notification"] as bool;
    } catch (e) {
      return null;
    }
  }

  set is_notification(bool? value) {
    rawData["is_notification"] = value;
  }

  String? get notification_sound {
    try {
      if (rawData["notification_sound"] is String == false) {
        return null;
      }
      return rawData["notification_sound"] as String;
    } catch (e) {
      return null;
    }
  }

  set notification_sound(String? value) {
    rawData["notification_sound"] = value;
  }

  bool? get is_notification_private {
    try {
      if (rawData["is_notification_private"] is bool == false) {
        return null;
      }
      return rawData["is_notification_private"] as bool;
    } catch (e) {
      return null;
    }
  }

  set is_notification_private(bool? value) {
    rawData["is_notification_private"] = value;
  }

  String? get notification_private_sound {
    try {
      if (rawData["notification_private_sound"] is String == false) {
        return null;
      }
      return rawData["notification_private_sound"] as String;
    } catch (e) {
      return null;
    }
  }

  set notification_private_sound(String? value) {
    rawData["notification_private_sound"] = value;
  }

  bool? get is_notification_group {
    try {
      if (rawData["is_notification_group"] is bool == false) {
        return null;
      }
      return rawData["is_notification_group"] as bool;
    } catch (e) {
      return null;
    }
  }

  set is_notification_group(bool? value) {
    rawData["is_notification_group"] = value;
  }

  String? get notification_group_sound {
    try {
      if (rawData["notification_group_sound"] is String == false) {
        return null;
      }
      return rawData["notification_group_sound"] as String;
    } catch (e) {
      return null;
    }
  }

  set notification_group_sound(String? value) {
    rawData["notification_group_sound"] = value;
  }

  bool? get is_notification_channel {
    try {
      if (rawData["is_notification_channel"] is bool == false) {
        return null;
      }
      return rawData["is_notification_channel"] as bool;
    } catch (e) {
      return null;
    }
  }

  set is_notification_channel(bool? value) {
    rawData["is_notification_channel"] = value;
  }

  String? get notification_channel_sound {
    try {
      if (rawData["notification_channel_sound"] is String == false) {
        return null;
      }
      return rawData["notification_channel_sound"] as String;
    } catch (e) {
      return null;
    }
  }

  set notification_channel_sound(String? value) {
    rawData["notification_channel_sound"] = value;
  }

  bool? get is_notification_bot {
    try {
      if (rawData["is_notification_bot"] is bool == false) {
        return null;
      }
      return rawData["is_notification_bot"] as bool;
    } catch (e) {
      return null;
    }
  }

  set is_notification_bot(bool? value) {
    rawData["is_notification_bot"] = value;
  }

  String? get notification_bot_sound {
    try {
      if (rawData["notification_bot_sound"] is String == false) {
        return null;
      }
      return rawData["notification_bot_sound"] as String;
    } catch (e) {
      return null;
    }
  }

  set notification_bot_sound(String? value) {
    rawData["notification_bot_sound"] = value;
  }

  bool? get is_notification_calling {
    try {
      if (rawData["is_notification_calling"] is bool == false) {
        return null;
      }
      return rawData["is_notification_calling"] as bool;
    } catch (e) {
      return null;
    }
  }

  set is_notification_calling(bool? value) {
    rawData["is_notification_calling"] = value;
  }

  String? get notification_calling_sound {
    try {
      if (rawData["notification_calling_sound"] is String == false) {
        return null;
      }
      return rawData["notification_calling_sound"] as String;
    } catch (e) {
      return null;
    }
  }

  set notification_calling_sound(String? value) {
    rawData["notification_calling_sound"] = value;
  }

  String? get language_code_id {
    try {
      if (rawData["language_code_id"] is String == false) {
        return null;
      }
      return rawData["language_code_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set language_code_id(String? value) {
    rawData["language_code_id"] = value;
  }

  static ApplicationConfiguration create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "applicationConfiguration",
    bool? is_lite,
    bool? is_notification,
    String? notification_sound,
    bool? is_notification_private,
    String? notification_private_sound,
    bool? is_notification_group,
    String? notification_group_sound,
    bool? is_notification_channel,
    String? notification_channel_sound,
    bool? is_notification_bot,
    String? notification_bot_sound,
    bool? is_notification_calling,
    String? notification_calling_sound,
    String? language_code_id,
  }) {
    // ApplicationConfiguration applicationConfiguration = ApplicationConfiguration({
    final Map applicationConfiguration_data_create_json = {
      "@type": special_type,
      "is_lite": is_lite,
      "is_notification": is_notification,
      "notification_sound": notification_sound,
      "is_notification_private": is_notification_private,
      "notification_private_sound": notification_private_sound,
      "is_notification_group": is_notification_group,
      "notification_group_sound": notification_group_sound,
      "is_notification_channel": is_notification_channel,
      "notification_channel_sound": notification_channel_sound,
      "is_notification_bot": is_notification_bot,
      "notification_bot_sound": notification_bot_sound,
      "is_notification_calling": is_notification_calling,
      "notification_calling_sound": notification_calling_sound,
      "language_code_id": language_code_id,
    };

    applicationConfiguration_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (applicationConfiguration_data_create_json.containsKey(key) ==
            false) {
          applicationConfiguration_data_create_json[key] = value;
        }
      });
    }
    return ApplicationConfiguration(applicationConfiguration_data_create_json);
  }
}
