import 'package:base_template_general_framework_project_database_universe_scheme/database/scheme/account_database.dart';
import 'package:base_template_general_framework_project_database_universe_scheme/database/scheme/chat_database.dart';
import 'package:base_template_general_framework_project_database_universe_scheme/database/scheme/message_database.dart';
import 'package:base_template_general_framework_project_database_universe_scheme/database/scheme/message_local_database.dart';
import 'package:base_template_general_framework_project_database_universe_scheme/database/scheme/session_local_database.dart';
import 'package:database_universe/database_universe.dart';

///
class BaseTemplateGeneralFrameworkProjectDatabaseUniverseScheme {
  ///
  static final List<DatabaseUniverseGeneratedSchema> schemes = [
    AccountDatabaseSchema,
  
    ChatDatabaseSchema,
    MessageDatabaseSchema,
  
    MessageLocalDatabaseSchema,
  SessionLocalDatabaseSchema,
    SessionLocalDatabaseSchema,
  ];
}
