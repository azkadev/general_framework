import 'package:flutter/material.dart';

/// UncompleteDocumentation
class MediaQuerGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final MediaQueryData mediaQueryData;

  /// UncompleteDocumentation
  final WidgetBuilder builder;

  /// UncompleteDocumentation
  const MediaQuerGeneralFrameworkWidget({
    super.key,
    required this.mediaQueryData,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: mediaQueryData.size,
      child: MediaQuery(
        data: mediaQueryData,
        child: Builder(
          builder: builder,
        ),
      ),
    );
  }
}
