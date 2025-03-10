import 'package:flutter/widgets.dart';

/// A [VirtualKeyboard] button.
class VirtualKeyboardButton extends StatelessWidget {
  /// Creates a [VirtualKeyboardButton].
  const VirtualKeyboardButton({
    super.key,
    required this.backgroundColor,
    required this.child,
    this.borderRadius = const BorderRadius.all(Radius.circular(4)),
    this.padding = const EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 6,
    ),
  });

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Widget child;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Color backgroundColor;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final EdgeInsets padding;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      padding: padding,
      alignment: Alignment.center,
      child: child,
    );
  }
}
