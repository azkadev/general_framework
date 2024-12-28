import 'package:flutter/material.dart';

class MediaQuerGeneralFrameworkWidget extends StatelessWidget {
  final MediaQueryData mediaQueryData;
  final WidgetBuilder builder;
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
