import 'package:base_template_general_framework_project_scheme/database_scheme/account_database.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/account.dart';

extension AccountDatabaseExtension on AccountDatabase {
  Account toAccount() {
    return Account.create(
      id: id,
      first_name: first_name,
      last_name: last_name,
      username: username,
    );
  }
}
