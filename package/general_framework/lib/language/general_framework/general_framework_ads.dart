// ignore_for_file: non_constant_identifier_names

// import "general_framework_core.dart";
// import "general_framework_code_data.dart";
import "package:general_lib/scheme/language_code_data.dart";
import "package:general_lib/language/language_core.dart";
import "package:general_lib/regexp_replace/regexp_replace.dart";

final Map _general_framework_ads_title_data = {"id": "Iklan", "en": "Ads"};

// extension GeneralFrameworkAdsExtensionGeneralFramework on GeneralFramework {
extension GeneralFrameworkAdsExtensionGeneralFramework on Language {
  /// default return
  /// ```dart
  /// """
  /// Iklan
  /// """;
  /// ```
  String general_framework_ads_title({
    String? languageCode,
    List<RegExpReplace>? regexpReplaces,
  }) {
    return sendLanguage(
      languageCodeData: LanguageCodeData(
        _general_framework_ads_title_data,
      ),
      id: "general_framework_ads_title",
      regexpReplaces: regexpReplaces,
      languageCode: languageCode,
    );
  }
}
