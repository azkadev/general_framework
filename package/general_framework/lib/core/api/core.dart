import 'package:general_framework/core/database/database_core.dart';

/// GeneralFrameworkClient
/// is universal client for help you connection to rest api server super easy friendly
abstract class GeneralFrameworkApiBase<D extends GeneralFrameworkDatabase> {
  final D generalFrameworkDatabase;
  GeneralFrameworkApiBase({
    required this.generalFrameworkDatabase,
  });
  void ensureInitialized({
    required String currentPath,
  }) {
    generalFrameworkDatabase.ensureInitialized(currentPath: currentPath);
  }
}
