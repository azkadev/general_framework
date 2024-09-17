import 'dart:math';

import 'package:general_lib/general_lib.dart';

class GeneralFrameworkUtils {
  static String generateAnyText({
    required int max,
    required int min,
  }) {
    return generateUuid(Random().nextInt(max) + min) ;
  }
}
