library;

import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'animated_gradient_container.dart';

/// This Widget creates a glowing, animated gradient border around your widgets.
///
/// [gradientColors] specify which colors to use for the gradient
/// [borderSize] specifies how big the hard border is around your widget
/// [glowSize] specifies how far and intense the glow should be
/// [borderRadius] should match the border radius of the child to make it look nice
/// [animationProgress] if != null, the gradient will rotate towards its destination. Value between 0..1
/// [child] content does not get blurred, is surrounded by the glowing border
/// [stretchAlongAxis] use if you place this widget inside column or row with stretch alignment
/// [stretchAxis] choose depending on row or column
class AnimatedGradientBorderGeneralFrameworkWidget extends StatefulWidget {
  ///
  final Widget child;

  ///
  final double? borderSize;

  ///
  final double? glowSize;

  ///
  final List<Color> gradientColors;

  ///
  final BorderRadiusGeometry borderRadius;

  ///
  final int? animationTime;

  ///
  final double? animationProgress;

  ///
  final bool stretchAlongAxis;

  ///
  final Axis stretchAxis;

  ///
  const AnimatedGradientBorderGeneralFrameworkWidget({
    super.key,
    required this.child,
    required this.gradientColors,
    required this.borderRadius,
    this.animationTime,
    this.borderSize,
    this.glowSize,
    this.animationProgress,
    this.stretchAlongAxis = false,
    this.stretchAxis = Axis.horizontal,
  });
  @override
  State<StatefulWidget> createState() => AnimatedGradientState();
}

///
class AnimatedGradientState
    extends State<AnimatedGradientBorderGeneralFrameworkWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _angleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(seconds: widget.animationTime ?? 2));
    _controller.addListener(() => setState(() {}));
    _angleAnimation =
        Tween<double>(begin: 0.1, end: 2 * math.pi).animate(_controller);
    if (widget.animationProgress != null) {
      _controller.forward();
    } else {
      _controller.repeat();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(
      covariant AnimatedGradientBorderGeneralFrameworkWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    final animateTo = widget.animationProgress;
    if (animateTo != null) {
      _controller.animateTo(animateTo);
    } else {
      _controller.repeat();
    }
  }

  @override
  Widget build(BuildContext context) {
    final negativeMargin = -1.0 * (widget.borderSize ?? 0);
    return Container(
      padding: EdgeInsets.all(
          (widget.glowSize ?? 5) * 3 + (widget.borderSize ?? 0) * 3),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: widget.borderRadius),
      child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: negativeMargin,
              left: negativeMargin,
              right: negativeMargin,
              bottom: negativeMargin,
              child: AnimatedGradientContainerGeneralFrameworkWidget(
                gradientColors: widget.gradientColors,
                borderRadius: widget.borderRadius,
                gradientAngle: _angleAnimation.value,
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: widget.glowSize ?? 0, sigmaY: widget.glowSize ?? 0),
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: negativeMargin,
                    right: negativeMargin,
                    left: negativeMargin,
                    bottom: negativeMargin,
                    child: AnimatedGradientContainerGeneralFrameworkWidget(
                      gradientColors: widget.gradientColors,
                      borderRadius: widget.borderRadius,
                      gradientAngle: _angleAnimation.value,
                    ),
                  ),
                  if (widget.stretchAlongAxis) ...[
                    SizedBox(
                      width: widget.stretchAxis == Axis.horizontal
                          ? double.infinity
                          : null,
                      height: widget.stretchAxis == Axis.vertical
                          ? double.infinity
                          : null,
                      child: widget.child,
                    )
                  ] else ...[
                    widget.child,
                  ],
                ],
              ),
            ),
          ]),
    );
  }
}
