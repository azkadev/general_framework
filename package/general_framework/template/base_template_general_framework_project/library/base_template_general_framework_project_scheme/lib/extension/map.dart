// ignore_for_file: non_constant_identifier_names

extension MapExtensionScheme on Map {
  String base_template_general_framework_project_scheme_utils_special_extra() {
    if (this["@extra"] is String == false) {
      this["@extra"] = "";
    }
    return this["@extra"] as String;
  }
  String base_template_general_framework_project_scheme_utils_special_client_token() {
    if (this["@client_token"] is String == false) {
      this["@client_token"] = "";
    }
    return this["@client_token"] as String;
  }
}
