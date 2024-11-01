
import 'dart:io';

extension DirectoryExtension on Directory {
  Directory recreate() {
    if (existsSync()) {
      deleteSync(recursive: true);
    }
    createSync(recursive: true);
    return this;
    // Directory(path.join(Directory.current.path, "lib", "language"));
  }
}
