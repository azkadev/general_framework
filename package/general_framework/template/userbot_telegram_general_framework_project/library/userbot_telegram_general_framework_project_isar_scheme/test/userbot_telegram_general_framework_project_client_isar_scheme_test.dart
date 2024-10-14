import 'package:userbot_telegram_general_framework_project_isar_scheme/userbot_telegram_general_framework_project_isar_scheme.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}
