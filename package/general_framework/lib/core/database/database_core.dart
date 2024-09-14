abstract class GeneralFrameworkDatabase {
  late final String currentPath;
  GeneralFrameworkDatabase();

  void ensureInitialized({
    required String currentPath,
  }) {
    this.currentPath = currentPath;
  }

  
}
