part of 'device.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class GenericPhoneFramePainter extends CustomPainter {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  const GenericPhoneFramePainter({
    this.outerBodyColor = defaultOuterBodyColor,
    this.innerBodyColor = defaultInnerBodyColor,
    this.outerBodyRadius = defaultOuterBodyRadius,
    this.innerBodyRadius = defaultInnerBodyRadius,
    this.innerBodyInsets = defaultInnerBodyInsets,
    this.screenInsets = defaultScreenInsets,
    this.buttonWidth = defaultButtonWidth,
    this.buttonColor = defaultButtonColor,
    this.screenRadius = defaultScreenRadius,
    this.rightSideButtonsGapsAndSizes = defaultRightSideButtonsGapsAndSizes,
    this.topSideButtonsGapsAndSizes = defaultTopSideButtonsGapsAndSizes,
    this.cameraBorderColor = defaultCameraBorderColor,
    this.cameraInnerColor = defaultCameraInnerColor,
    this.cameraReflectColor = defaultCameraReflectColor,
    this.cameraRadius = defaultCameraRadius,
    this.cameraBorderWidth = defaultCameraBorderWidth,
  });

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  Size calculateFrameSize(Size screenSize) {
    return Size(
      screenSize.width +
          innerBodyInsets.horizontal +
          screenInsets.horizontal +
          buttonWidth,
      screenSize.height +
          innerBodyInsets.vertical +
          screenInsets.vertical +
          buttonWidth,
    );
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  Path createScreenPath(Size screenSize) {
    final rect = Offset(
          innerBodyInsets.left + screenInsets.left,
          innerBodyInsets.top + screenInsets.top,
        ) &
        screenSize;
    final result = Path();
    result.addRRect(RRect.fromRectAndRadius(rect, screenRadius));
    return result;
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Color outerBodyColor;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Radius outerBodyRadius;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Color innerBodyColor;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Radius innerBodyRadius;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Radius screenRadius;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final EdgeInsets innerBodyInsets;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final EdgeInsets screenInsets;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final double buttonWidth;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Color buttonColor;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Color cameraBorderColor;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Color cameraInnerColor;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Color cameraReflectColor;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final double cameraRadius;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final double cameraBorderWidth;

  /// Starts with a gap from top to bottom, then a button size, and so on.
  final List<double> rightSideButtonsGapsAndSizes;

  /// Starts with a gap from right to left, then a button size, and so on.
  final List<double> topSideButtonsGapsAndSizes;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static const Color defaultButtonColor = Color(0xff121515);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static const Color defaultOuterBodyColor = Color(0xff3A4245);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static const Radius defaultOuterBodyRadius = Radius.circular(40);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static const Color defaultInnerBodyColor = Color(0xff121515);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static const Color defaultCameraBorderColor = Color(0xff262C2D);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static const Color defaultCameraInnerColor = Color(0xff121515);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static const Color defaultCameraReflectColor = Color(0xff465256);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static const double defaultCameraRadius = 8.0;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static const double defaultCameraBorderWidth = 5.0;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static const Radius defaultInnerBodyRadius = Radius.circular(35);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static const Radius defaultScreenRadius = Radius.circular(10);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static const double defaultButtonWidth = 4.0;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static const List<double> defaultRightSideButtonsGapsAndSizes = [
    100,
    80,
    15,
    80,
  ];

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static const List<double> defaultTopSideButtonsGapsAndSizes = [
    50,
    80,
  ];

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static const EdgeInsets defaultInnerBodyInsets = EdgeInsets.only(
    left: 6,
    top: 6,
    right: 6,
    bottom: 6,
  );

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static const EdgeInsets defaultScreenInsets = EdgeInsets.only(
    left: 15,
    top: 80,
    right: 15,
    bottom: 60,
  );

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;
    final bounds = Rect.fromLTWH(
      0,
      buttonWidth,
      size.width - buttonWidth,
      size.height - buttonWidth,
    );
    canvas.drawSideButtons(
      paint: paint,
      bounds: bounds,
      buttonWidth: buttonWidth,
      color: buttonColor,
      gapsAndSizes: topSideButtonsGapsAndSizes,
      inverted: true,
      side: SideButtonSide.top,
    );
    canvas.drawSideButtons(
      paint: paint,
      bounds: bounds,
      buttonWidth: buttonWidth,
      color: buttonColor,
      gapsAndSizes: rightSideButtonsGapsAndSizes,
      inverted: false,
      side: SideButtonSide.right,
    );
    canvas.drawDeviceBody(
      paint: paint,
      bounds: bounds,
      innerBodyColor: innerBodyColor,
      innerBodyInsets: innerBodyInsets,
      innerBodyRadius: innerBodyRadius,
      outerBodyColor: outerBodyColor,
      outerBodyRadius: outerBodyRadius,
    );
    canvas.drawCamera(
      paint: paint,
      center: Offset(
        (size.width - buttonWidth) * 0.5,
        buttonWidth + innerBodyInsets.top + (screenInsets.top / 2),
      ),
      borderColor: cameraBorderColor,
      borderWidth: cameraBorderWidth,
      innerColor: cameraInnerColor,
      radius: cameraRadius,
      reflectColor: cameraReflectColor,
    );
  }

  @override
  bool shouldRepaint(covariant GenericPhoneFramePainter oldDelegate) {
    return false;
  }
}
