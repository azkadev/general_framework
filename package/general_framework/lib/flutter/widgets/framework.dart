import 'package:general_framework/flutter/foundation/key.dart';
import 'package:meta/meta.dart';

abstract class Widget {
  final Key? key;

  /// Initializes [key] for subclasses.
  const Widget({this.key});
}

abstract class BuildContext {
  /// The current configuration of the [Element] that is this [BuildContext].
  Widget get widget;
}

abstract class StatefulWidget extends Widget {
  /// Initializes [key] for subclasses.
  const StatefulWidget({super.key});
  @protected
  @factory
  State createState();
}

abstract class StatelessWidget extends Widget {
  /// Initializes [key] for subclasses.
  const StatelessWidget({super.key});
  @protected
  Widget build(BuildContext context);
}

@optionalTypeArgs
abstract class State<T extends StatefulWidget> {
  /// The current configuration.
  ///
  /// A [State] object's configuration is the corresponding [StatefulWidget]
  /// instance. This property is initialized by the framework before calling
  /// [initState]. If the parent updates this location in the tree to a new
  /// widget with the same [runtimeType] and [Widget.key] as the current
  /// configuration, the framework will update this property to refer to the new
  /// widget and then call [didUpdateWidget], passing the old configuration as
  /// an argument.
  T get widget => _widget!;
  T? _widget;

  @protected
  @mustCallSuper
  void initState() {

  }

  @protected
  @mustCallSuper
  void dispose() { 
  }
  @protected
  Widget build(BuildContext context);
}

abstract class RenderObjectWidget extends Widget {
  /// Abstract const constructor. This constructor enables subclasses to provide
  /// const constructors so that they can be used in const expressions.
  const RenderObjectWidget({super.key});
}

abstract class SingleChildRenderObjectWidget extends RenderObjectWidget {
  /// Abstract const constructor. This constructor enables subclasses to provide
  /// const constructors so that they can be used in const expressions.
  const SingleChildRenderObjectWidget({super.key, this.child});

  /// The widget below this widget in the tree.
  ///
  /// {@macro flutter.widgets.ProxyWidget.child}
  final Widget? child;
}
