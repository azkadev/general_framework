import 'package:general_lib/general_lib.dart';
import 'package:io_universe/io_universe.dart';

void main(List<String> args) {
  Process.runSync("nautilus", [Dart.pub.hosted_directory.path]);
}
