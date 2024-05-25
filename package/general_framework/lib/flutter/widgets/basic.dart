import 'package:general_framework/flutter/widgets/framework.dart';

class SizedBox extends Widget {
  const SizedBox({
    super.key,
  });
}

class Align extends SingleChildRenderObjectWidget {
  /// Creates an alignment widget.
  ///
  /// The alignment defaults to [Alignment.center].
  const Align({
    super.key,
    super.child,
  });
}

class Center extends Align {
  /// Creates a widget that centers its child.
  const Center({
    super.key,
    // super.widthFactor,
    // super.heightFactor,
    super.child,
  });
}
