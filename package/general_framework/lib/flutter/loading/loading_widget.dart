import 'package:flutter/material.dart';
import 'package:general_lib_flutter/extension/build_context.dart';
import 'loading_controller.dart';
import 'loading_core.dart';

class LoadingGeneralFrameworkWidget extends StatelessWidget {
  final LoadingGeneralFrameworkController loadingGeneralFrameworkController;
  final LoadingGeneralFrameworkType loadingGeneralFrameworkType;
  const LoadingGeneralFrameworkWidget({
    super.key,
    required this.loadingGeneralFrameworkController,
    required this.loadingGeneralFrameworkType,
  });

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: loadingGeneralFrameworkController,
      builder: (context, childOrNull) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            () {
              final Widget child = CircularProgressIndicator(
                color: context.theme.indicatorColor,
              );

              if ([
                LoadingGeneralFrameworkType.page,
                LoadingGeneralFrameworkType.widget
              ].contains(loadingGeneralFrameworkType)) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: child,
                );
              }
              return Container(
                decoration: BoxDecoration(
                  color: context.theme.primaryColor.withOpacity(0.85),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: context.theme.indicatorColor,
                    width: 0.3,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: context.theme.shadowColor.withAlpha(110),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(
                        0,
                        3,
                      ),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                child: child,
              );
            }(),
            () {
              final Widget child = Text(
                loadingGeneralFrameworkController.loadingText.trim(),
                style: TextStyle(
                  color: context.theme.indicatorColor,
                  fontSize: 12,
                ),
              );
              if ([
                LoadingGeneralFrameworkType.page,
                LoadingGeneralFrameworkType.widget
              ].contains(loadingGeneralFrameworkType)) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: child,
                );
              }
              return Container(
                decoration: BoxDecoration(
                  color: context.theme.primaryColor.withOpacity(0.85),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: context.theme.indicatorColor,
                    width: 0.3,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: context.theme.shadowColor.withAlpha(110),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(
                        0,
                        3,
                      ),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                child: child,
              );
            }(),
          ],
        );
      },
    );
  }
}
