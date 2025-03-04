import 'package:flutter/cupertino.dart';

///
class AnimatedGradientContainerGeneralFrameworkWidget extends StatelessWidget {
  ///
  final List<Color> gradientColors;

  ///
  final double gradientAngle;

  ///
  final BorderRadiusGeometry borderRadius;

  ///
  const AnimatedGradientContainerGeneralFrameworkWidget({
    super.key,
    required this.gradientColors,
    required this.gradientAngle,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(borderRadius: borderRadius, gradient: SweepGradient(colors: [...gradientColors, ...gradientColors.reversed], stops: _generateColorStops([...gradientColors, ...gradientColors.reversed]), transform: GradientRotation(gradientAngle))));
  }

  List<double> _generateColorStops(List<dynamic> colors) {
    return colors.asMap().entries.map((entry) {
      double percentageStop = entry.key / colors.length;
      return percentageStop;
    }).toList();
  }
}
