import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class TabbarGeneralFrameworkWidget extends StatelessWidget {
  final bool isLoading;
  final TabController? controller;
  final void Function(int index)? onTap;
  final List<Widget> tabs;

  final bool isScrollable;
  final EdgeInsetsGeometry? padding;
  final Color? indicatorColor;
  final bool automaticIndicatorColorAdjustment;
  final double indicatorWeight;
  final EdgeInsetsGeometry indicatorPadding;
  final Decoration? indicator;
  final TabBarIndicatorSize? indicatorSize;
  final Color? dividerColor;
  final double? dividerHeight;
  final Color? labelColor;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? labelPadding;
  final Color? unselectedLabelColor;
  final TextStyle? unselectedLabelStyle;
  final DragStartBehavior dragStartBehavior;
  final WidgetStateProperty<Color?>? overlayColor;
  final MouseCursor? mouseCursor;
  final bool? enableFeedback;
  final ScrollPhysics? physics;
  final InteractiveInkFeatureFactory? splashFactory;
  final BorderRadius? splashBorderRadius;
  final TabAlignment? tabAlignment;
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
