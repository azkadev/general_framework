// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "inline_keyboard.dart";

class ContentAds extends JsonScheme {
  ContentAds(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "contentAds",
      "ads_unique_id": "",
      "content_type": "",
      "medias": [""],
      "caption": "",
      "inline_keyboard": [
        [
          {"@type": "inlineKeyboard", "url": ""}
        ]
      ]
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == contentAds
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

  /// create [ContentAds]
  /// Empty
  static ContentAds empty() {
    return ContentAds({});
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

  String? get ads_unique_id {
    try {
      if (rawData["ads_unique_id"] is String == false) {
        return null;
      }
      return rawData["ads_unique_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set ads_unique_id(String? value) {
    rawData["ads_unique_id"] = value;
  }

  String? get content_type {
    try {
      if (rawData["content_type"] is String == false) {
        return null;
      }
      return rawData["content_type"] as String;
    } catch (e) {
      return null;
    }
  }

  set content_type(String? value) {
    rawData["content_type"] = value;
  }

  ///
  /// default:
  ///
  ///
  List<String> get medias {
    try {
      if (rawData["medias"] is List == false) {
        return [];
      }
      return (rawData["medias"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  set medias(List<String> value) {
    rawData["medias"] = value;
  }

  String? get caption {
    try {
      if (rawData["caption"] is String == false) {
        return null;
      }
      return rawData["caption"] as String;
    } catch (e) {
      return null;
    }
  }

  set caption(String? value) {
    rawData["caption"] = value;
  }

  List<List<InlineKeyboard>> get inline_keyboard {
    try {
      if (rawData["inline_keyboard"] is List == false) {
        return [];
      }
      return ((rawData["inline_keyboard"] as List).cast<List>())
          .map((e) => e
              .map((e) => InlineKeyboard(e as Map))
              .toList()
              .cast<InlineKeyboard>())
          .toList()
          .cast<List<InlineKeyboard>>();
    } catch (e) {
      return [];
    }
  }

  set inline_keyboard(List<List<InlineKeyboard>> values) {
    rawData["inline_keyboard"] = values
        .map((value) => value.map((value) => value.toJson()).toList())
        .toList();
  }

  static ContentAds create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "contentAds",
    String? ads_unique_id,
    String? content_type,
    List<String>? medias,
    String? caption,
    List<List<InlineKeyboard>>? inline_keyboard,
  }) {
    // ContentAds contentAds = ContentAds({
    final Map contentAds_data_create_json = {
      "@type": special_type,
      "ads_unique_id": ads_unique_id,
      "content_type": content_type,
      "medias": medias,
      "caption": caption,
      "inline_keyboard": (inline_keyboard != null)
          ? inline_keyboard
              .map((res) => res.map((e) => e.toJson()).toList().cast<Map>())
              .toList()
              .cast<List<Map>>()
          : null,
    };

    contentAds_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (contentAds_data_create_json.containsKey(key) == false) {
          contentAds_data_create_json[key] = value;
        }
      });
    }
    return ContentAds(contentAds_data_create_json);
  }
}
