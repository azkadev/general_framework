import 'package:general_lib/general_lib.dart';
import 'package:universal_io/io.dart';

void main(List<String> args) {
  Process.runSync("nautilus", [Dart.pub.hosted_directory.path]);
}
