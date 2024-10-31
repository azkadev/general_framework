// ignore_for_file: non_constant_identifier_names

// import "general_framework_core.dart";
// import "general_framework_code_data.dart";
import "package:general_lib/scheme/language_code_data.dart";
import "package:general_lib/language/language_core.dart";
import "package:general_lib/regexp_replace/regexp_replace.dart";

final Map _general_framework_sign_in_title_data = {
  "id": "Masuk",
  "en": "Sign In"
};

final Map _general_framework_sign_up_title_data = {
  "id": "Daftar",
  "en": "Sign up"
};

// extension GeneralFrameworkSignExtensionGeneralFramework on GeneralFramework {
extension GeneralFrameworkSignExtensionGeneralFramework on Language {
  /// default return
  /// ```dart
  /// """
  /// Masuk
  /// """;
  /// ```
  String general_framework_sign_in_title({
    String? languageCode,
    List<RegExpReplace>? regexpReplaces,
  }) {
    return sendLanguage(
      languageCodeData: LanguageCodeData(
        _general_framework_sign_in_title_data,
      ),
      id: "general_framework_sign_in_title",
      regexpReplaces: regexpReplaces,
      languageCode: languageCode,
    );
  }

  /// default return
  /// ```dart
  /// """
  /// Daftar
  /// """;
  /// ```
  String general_framework_sign_up_title({
    String? languageCode,
    List<RegExpReplace>? regexpReplaces,
  }) {
    return sendLanguage(
      languageCodeData: LanguageCodeData(
        _general_framework_sign_up_title_data,
      ),
      id: "general_framework_sign_up_title",
      regexpReplaces: regexpReplaces,
      languageCode: languageCode,
    );
  }
}
