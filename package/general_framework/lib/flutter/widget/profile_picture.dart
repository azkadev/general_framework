// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

// import 'package:hive_flutter/hive_flutter.dart';

import 'package:general_framework/flutter/image/image_core.dart';
import 'package:general_framework/flutter/utils/utils.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import 'package:flutter/material.dart';

class ProfilePictureGeneralFrameworkWidget extends StatelessWidget {
  final dynamic pathImage;
  final String nick_name;
  final double width;
  final double height;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;
  final void Function()? onLongPress;
  final void Function(bool data)? onHighlightChanged;
  final bool isWithBorder;
  final bool is_loading;
  final void Function(Object e, StackTrace? stackTrace)? onError;
  final Widget Function(BuildContext context, Object error, StackTrace? stackTrace)? errorBuilder;
  final bool isUseShadow;
  const ProfilePictureGeneralFrameworkWidget({
    super.key,
    this.onError,
    this.isUseShadow = true,
    this.is_loading = false,
    this.isWithBorder = false,
    required this.pathImage,
    required this.width,
    required this.height,
    this.nick_name = "-",
    this.borderRadius,
    this.onLongPress,
    this.onHighlightChanged,
    this.errorBuilder,
    required this.onPressed,
  });

  String get path_image {
    if (pathImage is String) {
      return pathImage.toString().trim();
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    final DecorationImage image = ImageGeneralUiGeneralFramework.decorationImage(
      pathImage: pathImage,
      onError: (error, stackTrace) {
        if (onError != null) {
          onError!(error, stackTrace);
        }
      },
      imageGeneralUiOptions: ImageGeneralUiGeneralFrameworkOptions(
        height: height,
        width: width,
        errorBuilder: errorBuilder ??
            (_, __, ___) {
              return const SizedBox.shrink();
            },
        fit: BoxFit.cover,
      ),
    );

    final Widget child = Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: GeneralFrameworkFlutterUtils.randomColors(),
        borderRadius: borderRadius ??
            BorderRadius.circular(
              15,
            ),
        image: image,
        gradient: (isWithBorder)
            ? null
            : const LinearGradient(
                colors: [
                  Colors.pinkAccent,
                  Colors.blue,
                ],
              ),
        boxShadow: () {
          if (isUseShadow) {
            return (isWithBorder)
                ? [
                    BoxShadow(
                      color: context.theme.shadowColor.withAlpha(110),

                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ]
                : const [
                    BoxShadow(
                      color: Colors.pink,
                      offset: Offset(-2, 0),
                      blurRadius: 15,
                    ),
                    BoxShadow(
                      color: Colors.blue,
                      offset: Offset(2, 0),
                      blurRadius: 15,
                    ),
                  ];
          }
          return null;
        }(),
      ),
      clipBehavior: Clip.antiAlias,
      child: MaterialButton(
        clipBehavior: Clip.antiAlias,
        minWidth: 0,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHighlightChanged: onHighlightChanged,
        highlightColor: Colors.transparent,
        child: Visibility(
          visible: path_image.isEmpty,
          child: Center(
            child: Text(
              nick_name.characters.firstOrNull ?? "-",
              style: const TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
    );
    if (isWithBorder) {
      return Container(
        padding: const EdgeInsets.all(2),
        // alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.theme.scaffoldBackgroundColor,
          borderRadius: borderRadius ??
              BorderRadius.circular(
                15,
              ),
          border: Border.all(
            color: context.theme.indicatorColor,
            width: 1.5,
          ),
          boxShadow: () {
            if (isUseShadow) {
              return [
                BoxShadow(
                  color: context.theme.shadowColor.withAlpha(110),

                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ];
            }
            return null;
          }(),
        ),
        child: child,
      );
    }
    return child;
  }
}
