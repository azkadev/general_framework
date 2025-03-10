import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'theme.freezed.dart';

/// The theme gives a [style] to all its descentant device frames.
///
/// The only customizable visuals are the keyboard style.
class DeviceFrameTheme extends InheritedWidget {
  /// Give a [style] to all descentant in [child] device frames.
  const DeviceFrameTheme({
    super.key,
    required this.style,
    required super.child,
  });

  /// The style of the device frame.
  final DeviceFrameStyle style;

  /// The data from the closest instance of this class that encloses the given
  /// [context].
  static DeviceFrameStyle of(BuildContext context) {
    final widget =
        context.dependOnInheritedWidgetOfExactType<DeviceFrameTheme>();

    return widget?.style ?? DeviceFrameStyle.dark();
  }

  @override
  bool updateShouldNotify(DeviceFrameTheme oldWidget) {
    return oldWidget.style != style;
  }
}

/// The device frame style only allows to update the [keyboardStyle] for now.
///
/// See also:
///
/// * [DeviceKeyboardStyle] to customize the virtual on screen keyboard.
// @freezed
class DeviceFrameStyle {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final DeviceKeyboardStyle keyboardStyle;

  /// Create a [DeviceFrameStyle] with the given [keyboardStyle].
  const DeviceFrameStyle({
    required this.keyboardStyle,
  });

  /// A default dark theme.
  factory DeviceFrameStyle.dark({DeviceKeyboardStyle? keyboardStyle}) =>
      DeviceFrameStyle(
        keyboardStyle: keyboardStyle ?? DeviceKeyboardStyle.dark(),
      );
}

/// The keyboard style allows to customize the virtual onscreen keyboard visuals.
// @freezed
class DeviceKeyboardStyle {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Color backgroundColor;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Color button1BackgroundColor;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Color button1ForegroundColor;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Color button2BackgroundColor;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Color button2ForegroundColor;

  /// Creates a new style for the virtual keyboard.
  const DeviceKeyboardStyle({
    required this.backgroundColor,
    required this.button1BackgroundColor,
    required this.button1ForegroundColor,
    required this.button2BackgroundColor,
    required this.button2ForegroundColor,
  });

  /// A default dark theme for the virtual keyboard.
  factory DeviceKeyboardStyle.dark() => const DeviceKeyboardStyle(
        backgroundColor: Color(0xDD2B2B2D),
        button1BackgroundColor: Color(0xFF6D6D6E),
        button1ForegroundColor: Colors.white,
        button2BackgroundColor: Color(0xFF4A4A4B),
        button2ForegroundColor: Colors.white,
      );
}
