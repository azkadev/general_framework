import 'package:base_template_general_framework_project_scheme/database_scheme/database_scheme.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/session.dart';

extension SessionDatabaseExtension on SessionDatabase {
  Session toSession() {
    return Session.create(
      account_user_id: account_user_id,
      token: token,
    );
  }
}
