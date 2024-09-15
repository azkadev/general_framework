import 'package:base_template_general_framework_project_scheme/database_scheme/account_database.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/database_scheme.dart';
import 'package:general_lib/json_scheme/json_scheme.dart';

class InvokeRequestData {
  final JsonScheme parameters;
  final AccountDatabase accountDatabase;
  final SessionDatabase sessionDatabase;
  InvokeRequestData({
    required this.parameters,
    required this.accountDatabase,
    required this.sessionDatabase,
  });
}
