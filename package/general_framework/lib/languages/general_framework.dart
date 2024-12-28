// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps

final Map<String, Map> general_framework_language_scheme = () {
  return <String, Map>{
    /// sign: start
    "sign": {
      "in_title": {
        "id": "Masuk",
        "en": "Sign In",
      },
      "up_title": {
        "id": "Daftar",
        "en": "Sign up",
      },
    },

    /// sign: end
    /// ads: start
    "ads": {
      "title": {"en": "Ads", "id": "Iklan"},
    },
    // ads: end
  }.map((key, value) {
    return MapEntry(
      "general_framework_${key}",
      value,
    );
  });
}();
