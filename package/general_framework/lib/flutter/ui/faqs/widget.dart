import "package:flutter/material.dart";
import "package:general_lib_flutter/general_lib_flutter.dart";

import "core.dart";

/// UncompleteDocumentation
class FaqGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final EdgeInsetsGeometry? margin;

  /// UncompleteDocumentation
  final FaqGeneralFrameworkSubData faq;

  /// UncompleteDocumentation
  const FaqGeneralFrameworkWidget({
    super.key,
    required this.margin,
    required this.faq,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: context.theme.primaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        border: context.extensionGeneralLibFlutterBorderAll(),
        boxShadow: context.extensionGeneralLibFlutterBoxShadows(),
      ),
      clipBehavior: Clip.antiAlias,
      child: ExpansionTile(
        shape: const Border(),
        title: Text(
          faq.question,
          style: context.theme.textTheme.titleSmall,
        ),
        collapsedIconColor: context.theme.indicatorColor,
        iconColor: context.theme.indicatorColor,
        clipBehavior: Clip.antiAlias,
        expandedAlignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              faq.answer,
              style: context.theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
