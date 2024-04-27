/* <!-- START LICENSE -->


Program Ini Di buat Oleh DEVELOPER Dari PERUSAHAAN GLOBAL CORPORATION 
Social Media: 

- Youtube: https://youtube.com/@Global_Corporation 
- Github: https://github.com/globalcorporation
- TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

Seluruh kode disini di buat 100% murni tanpa jiplak / mencuri kode lain jika ada akan ada link komment di baris code

Jika anda mau mengedit pastikan kredit ini tidak di hapus / di ganti!

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

import "pubspec_general_framework_platforms.dart";
import "pubspec_general_framework_environment.dart";
import "pubspec_general_framework_dependencies.dart";
import "pubspec_general_framework_dev_dependencies.dart";
import "general_framework_pubspec_config.dart";

class PubspecGeneralFramework extends JsonScheme {
  PubspecGeneralFramework(super.rawData);

  static Map get defaultData {
    return {
      "@type": "pubspecGeneralFramework",
      "name": "example",
      "description": "A sample command-line application.",
      "version": "0.0.0",
      "publish_to": "none",
      "homepage": "https://youtube.com/{youtube_owner_username}",
      "repository": "https://github.com/azkadev/packagex.git",
      "issue_tracker": "https://github.com/azkadev/general_framework/issues",
      "documentation": "https://github.com/azkadev/general_framework/tree/main/docs",
      "funding": ["https://github.com/sponsors/azkadev"],
      "platforms": {"@type": "pubspecGeneralFrameworkPlatforms", "android": null, "ios": null, "linux": null, "macos": null, "web": null, "windows": null},
      "environment": {"@type": "pubspecGeneralFrameworkEnvironment", "sdk": ">=2.18.5 <3.0.0"},
      "dependencies": {
        "@type": "pubspecGeneralFrameworkDependencies",
        "flutter": {"@type": "pubspecGeneralFrameworkDependenciesExtra", "sdk": "flutter"},
        "cupertino_icons": "^1.0.2"
      },
      "dev_dependencies": {
        "@type": "pubspecGeneralFrameworkDevDependencies",
        "lints": "^2.0.0",
        "test": "^1.16.0",
        "packagex": {"@type": "pubspecGeneralFrameworkDevDependenciesExtra", "path": "../"},
        "msix": "^1.0.6"
      },
      "general_framework": {"@type": "packageFullTemplatePubspecConfig"}
    };
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

  String? get name {
    try {
      if (rawData["name"] is String == false) {
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }

  set name(String? value) {
    rawData["name"] = value;
  }

  String? get description {
    try {
      if (rawData["description"] is String == false) {
        return null;
      }
      return rawData["description"] as String;
    } catch (e) {
      return null;
    }
  }

  set description(String? value) {
    rawData["description"] = value;
  }

  String? get version {
    try {
      if (rawData["version"] is String == false) {
        return null;
      }
      return rawData["version"] as String;
    } catch (e) {
      return null;
    }
  }

  set version(String? value) {
    rawData["version"] = value;
  }

  String? get publish_to {
    try {
      if (rawData["publish_to"] is String == false) {
        return null;
      }
      return rawData["publish_to"] as String;
    } catch (e) {
      return null;
    }
  }

  set publish_to(String? value) {
    rawData["publish_to"] = value;
  }

  String? get homepage {
    try {
      if (rawData["homepage"] is String == false) {
        return null;
      }
      return rawData["homepage"] as String;
    } catch (e) {
      return null;
    }
  }

  set homepage(String? value) {
    rawData["homepage"] = value;
  }

  String? get repository {
    try {
      if (rawData["repository"] is String == false) {
        return null;
      }
      return rawData["repository"] as String;
    } catch (e) {
      return null;
    }
  }

  set repository(String? value) {
    rawData["repository"] = value;
  }

  String? get issue_tracker {
    try {
      if (rawData["issue_tracker"] is String == false) {
        return null;
      }
      return rawData["issue_tracker"] as String;
    } catch (e) {
      return null;
    }
  }

  set issue_tracker(String? value) {
    rawData["issue_tracker"] = value;
  }

  String? get documentation {
    try {
      if (rawData["documentation"] is String == false) {
        return null;
      }
      return rawData["documentation"] as String;
    } catch (e) {
      return null;
    }
  }

  set documentation(String? value) {
    rawData["documentation"] = value;
  }

  List<String> get funding {
    try {
      if (rawData["funding"] is List == false) {
        return [];
      }
      return (rawData["funding"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  set funding(List<String> value) {
    rawData["funding"] = value;
  }

  PubspecGeneralFrameworkPlatforms get platforms {
    try {
      if (rawData["platforms"] is Map == false) {
        return PubspecGeneralFrameworkPlatforms({});
      }
      return PubspecGeneralFrameworkPlatforms(rawData["platforms"] as Map);
    } catch (e) {
      return PubspecGeneralFrameworkPlatforms({});
    }
  }

  set platforms(PubspecGeneralFrameworkPlatforms value) {
    rawData["platforms"] = value.toJson();
  }

  PubspecGeneralFrameworkEnvironment get environment {
    try {
      if (rawData["environment"] is Map == false) {
        return PubspecGeneralFrameworkEnvironment({});
      }
      return PubspecGeneralFrameworkEnvironment(rawData["environment"] as Map);
    } catch (e) {
      return PubspecGeneralFrameworkEnvironment({});
    }
  }

  set environment(PubspecGeneralFrameworkEnvironment value) {
    rawData["environment"] = value.toJson();
  }

  PubspecGeneralFrameworkDependencies get dependencies {
    try {
      if (rawData["dependencies"] is Map == false) {
        return PubspecGeneralFrameworkDependencies({});
      }
      return PubspecGeneralFrameworkDependencies(rawData["dependencies"] as Map);
    } catch (e) {
      return PubspecGeneralFrameworkDependencies({});
    }
  }

  set dependencies(PubspecGeneralFrameworkDependencies value) {
    rawData["dependencies"] = value.toJson();
  }

  PubspecGeneralFrameworkDevDependencies get dev_dependencies {
    try {
      if (rawData["dev_dependencies"] is Map == false) {
        return PubspecGeneralFrameworkDevDependencies({});
      }
      return PubspecGeneralFrameworkDevDependencies(rawData["dev_dependencies"] as Map);
    } catch (e) {
      return PubspecGeneralFrameworkDevDependencies({});
    }
  }

  set dev_dependencies(PubspecGeneralFrameworkDevDependencies value) {
    rawData["dev_dependencies"] = value.toJson();
  }

  GeneralFrameworkPubspecConfig get general_framework {
    try {
      if (rawData["general_framework"] is Map == false) {
        return GeneralFrameworkPubspecConfig({});
      }
      return GeneralFrameworkPubspecConfig(rawData["general_framework"] as Map);
    } catch (e) {
      return GeneralFrameworkPubspecConfig({});
    }
  }

  set general_framework(GeneralFrameworkPubspecConfig value) {
    rawData["general_framework"] = value.toJson();
  }

  static PubspecGeneralFramework create({
    String special_type = "pubspecGeneralFramework",
    String? name,
    String? description,
    String? version,
    String? publish_to,
    String? homepage,
    String? repository,
    String? issue_tracker,
    String? documentation,
    List<String>? funding,
    PubspecGeneralFrameworkPlatforms? platforms,
    PubspecGeneralFrameworkEnvironment? environment,
    PubspecGeneralFrameworkDependencies? dependencies,
    PubspecGeneralFrameworkDevDependencies? dev_dependencies,
    GeneralFrameworkPubspecConfig? general_framework,
  }) {
    // PubspecGeneralFramework pubspecGeneralFramework = PubspecGeneralFramework({
    Map pubspecGeneralFramework_data_create_json = {
      "@type": special_type,
      "name": name,
      "description": description,
      "version": version,
      "publish_to": publish_to,
      "homepage": homepage,
      "repository": repository,
      "issue_tracker": issue_tracker,
      "documentation": documentation,
      "funding": funding,
      "platforms": (platforms != null) ? platforms.toJson() : null,
      "environment": (environment != null) ? environment.toJson() : null,
      "dependencies": (dependencies != null) ? dependencies.toJson() : null,
      "dev_dependencies": (dev_dependencies != null) ? dev_dependencies.toJson() : null,
      "general_framework": (general_framework != null) ? general_framework.toJson() : null,
    };

    pubspecGeneralFramework_data_create_json.removeWhere((key, value) => value == null);
    PubspecGeneralFramework pubspecGeneralFramework_data_create = PubspecGeneralFramework(pubspecGeneralFramework_data_create_json);

    return pubspecGeneralFramework_data_create;
  }
}
