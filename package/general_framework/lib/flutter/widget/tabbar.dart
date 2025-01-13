import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

/// UncompleteDocumentation
class TabbarGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final bool isLoading;

  /// UncompleteDocumentation
  final TabController? controller;

  /// UncompleteDocumentation
  final void Function(int index)? onTap;

  /// UncompleteDocumentation
  final List<Widget> tabs;

  /// UncompleteDocumentation
  final bool isScrollable;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? padding;

  /// UncompleteDocumentation
  final Color? indicatorColor;

  /// UncompleteDocumentation
  final bool automaticIndicatorColorAdjustment;

  /// UncompleteDocumentation
  final double indicatorWeight;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry indicatorPadding;

  /// UncompleteDocumentation
  final Decoration? indicator;

  /// UncompleteDocumentation
  final TabBarIndicatorSize? indicatorSize;

  /// UncompleteDocumentation
  final Color? dividerColor;

  /// UncompleteDocumentation

  final double? dividerHeight;

  /// UncompleteDocumentation
  final Color? labelColor;

  /// UncompleteDocumentation
  final TextStyle? labelStyle;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? labelPadding;

  /// UncompleteDocumentation
  final Color? unselectedLabelColor;

  /// UncompleteDocumentation
  final TextStyle? unselectedLabelStyle;

  /// UncompleteDocumentation
  final DragStartBehavior dragStartBehavior;

  /// UncompleteDocumentation
  final WidgetStateProperty<Color?>? overlayColor;

  /// UncompleteDocumentation
  final MouseCursor? mouseCursor;

  /// UncompleteDocumentation
  final bool? enableFeedback;

  /// UncompleteDocumentation
  final ScrollPhysics? physics;

  /// UncompleteDocumentation
  final InteractiveInkFeatureFactory? splashFactory;

  /// UncompleteDocumentation
  final BorderRadius? splashBorderRadius;

  /// UncompleteDocumentation
  final TabAlignment? tabAlignment;

  /// UncompleteDocumentation
  const TabbarGeneralFrameworkWidget({
    super.key,
    this.isLoading = false,
    required this.controller,
    required this.onTap,
    required this.tabs,
    this.isScrollable = false,
    this.padding,
    this.indicatorColor,
    this.automaticIndicatorColorAdjustment = true,
    this.indicatorWeight = 2.0,
    this.indicatorPadding = EdgeInsets.zero,
    this.indicator,
    this.indicatorSize,
    this.dividerColor,
    this.dividerHeight,
    this.labelColor,
    this.labelStyle,
    this.labelPadding,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
    this.dragStartBehavior = DragStartBehavior.start,
    this.overlayColor,
    this.mouseCursor,
    this.enableFeedback,
    this.physics,
    this.splashFactory,
    this.splashBorderRadius,
    this.tabAlignment,
  });

  /// UncompleteDocumentation
  static Widget builder({
    Key? key,
    bool isLoading = false,
    required TabController? controller,
    required void Function(int index)? onTap,
    required int itemCount,
    required Widget Function(bool isActiveOrSelected, int index) builder,
    bool isScrollable = false,
    EdgeInsetsGeometry? padding,
    Color? indicatorColor,
    bool automaticIndicatorColorAdjustment = true,
    double indicatorWeight = 2.0,
    EdgeInsetsGeometry indicatorPadding = EdgeInsets.zero,
    Decoration? indicator,
    TabBarIndicatorSize? indicatorSize,
    Color? dividerColor,
    double? dividerHeight,
    Color? labelColor,
    TextStyle? labelStyle,
    EdgeInsetsGeometry? labelPadding,
    Color? unselectedLabelColor,
    TextStyle? unselectedLabelStyle,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    WidgetStateProperty<Color?>? overlayColor,
    MouseCursor? mouseCursor,
    bool? enableFeedback,
    ScrollPhysics? physics,
    InteractiveInkFeatureFactory? splashFactory,
    BorderRadius? splashBorderRadius,
    TabAlignment? tabAlignment,
  }) {
    final int index = controller!.index;
    return TabbarGeneralFrameworkWidget(
      key: key,
      isLoading: isLoading,
      controller: controller,
      onTap: onTap,
      tabs: [
        for (var i = 0; i < itemCount; i++) ...[
          builder(index == i, i),
        ],
      ],
      isScrollable: isScrollable,
      padding: padding,
      indicatorColor: indicatorColor,
      automaticIndicatorColorAdjustment: automaticIndicatorColorAdjustment,
      indicatorWeight: indicatorWeight,
      indicatorPadding: indicatorPadding,
      indicator: indicator,
      indicatorSize: indicatorSize,
      dividerColor: dividerColor,
      dividerHeight: dividerHeight,
      labelColor: labelColor,
      labelStyle: labelStyle,
      labelPadding: labelPadding,
      unselectedLabelColor: unselectedLabelColor,
      unselectedLabelStyle: unselectedLabelStyle,
      dragStartBehavior: dragStartBehavior,
      overlayColor: overlayColor,
      mouseCursor: mouseCursor,
      enableFeedback: enableFeedback,
      physics: physics,
      splashFactory: splashFactory,
      splashBorderRadius: splashBorderRadius,
      tabAlignment: tabAlignment,
    );
  }

  @override
  Widget build(BuildContext context) {
    final child = TabBar(
      // indicatorColor: const Color.fromARGB(255, 255, 14, 14),
      controller: controller,
      isScrollable: true,
      tabAlignment: tabAlignment ?? TabAlignment.center,

      padding: padding ?? const EdgeInsets.all(0),
      labelPadding: labelPadding ?? const EdgeInsets.all(15),
      splashBorderRadius: splashBorderRadius ?? BorderRadius.circular(15),
      indicatorColor: indicatorColor ?? context.theme.indicatorColor,

      unselectedLabelColor: unselectedLabelColor ?? Colors.grey,
      dividerColor: dividerColor ?? context.theme.dividerColor,
      dividerHeight: dividerHeight ?? 0.2,
      onTap: onTap,

      tabs: tabs,
    );

    if (isLoading) {
      return SkeletonizerGeneralFramework(
        enabled: isLoading,
        child: child,
      );
    }
    return child;
  }
}
