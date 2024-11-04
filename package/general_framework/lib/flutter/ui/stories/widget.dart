import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_framework/flutter/typedef/typedef.dart';
import 'package:general_framework/flutter/widget/profile_picture.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

enum StoriesGeneralFrameworkWidgetStyle {
  pofileInStories,
}

class StoriesGeneralFrameworkWidget extends StatelessWidget {
  final StoriesGeneralFrameworkWidgetStyle storiesGeneralFrameworkWidgetStyle;
  final dynamic content;
  final dynamic profile;
  final String title;
  final WidgetBuilderGeneralFrameworkWidget? profileBuilder;
  final WidgetBuilderGeneralFrameworkWidget? titleBuilder;
  final WidgetBuilderGeneralFrameworkWidget? contentBuilder;

  final void Function()? profileOnPressed;
  final void Function()? onPressed;
  final BorderRadiusGeometry? borderRadius;
  final bool isWithBlur;
  final bool profileIsUseShadow;
  final bool profileIsWithBorder;
  final bool isUseShadow;
  final bool isWithBorder;
  final bool isLoading;

  final ImageFilter? blurFilter;
  final BlendMode blurBlendMode;
  final ColorFilter? contentColorFilter;
  const StoriesGeneralFrameworkWidget({
    super.key,
    this.blurFilter,
    this.contentColorFilter,
    this.blurBlendMode = BlendMode.srcOver,
    this.isWithBlur = false,
    this.isLoading = false,
    this.profileIsUseShadow = true,
    this.profileIsWithBorder = true,
    this.contentBuilder,
    this.borderRadius,
    this.titleBuilder,
    this.profileBuilder,
    this.isUseShadow = true,
    this.profileOnPressed,
    this.isWithBorder = true,
    required this.profile,
    required this.title,
    required this.content,
    required this.onPressed,
    required this.storiesGeneralFrameworkWidgetStyle,
  });
  @override
  Widget build(BuildContext context) {
    final child = body(context);
    if (isLoading) {
      return SkeletonizerGeneralFramework(
        enabled: isLoading,
        child: child,
      );
    }
    return child;
  }
  

  Widget body(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        (contentBuilder ?? widgetBuilderGeneralFrameworkWidgetDefault).call(
          context,
          ProfilePictureGeneralFrameworkWidget(
            margin: const EdgeInsets.all(1),
            isUseShadow: isUseShadow,
            isWithBorder: isWithBorder,
            borderRadius: borderRadius,
            pathImage: content,
            width: context.width,
            height: context.height,
            onPressed: onPressed,
            colorFilter: contentColorFilter ?? const ColorFilter.mode(Color.fromARGB(100, 0, 0, 0), BlendMode.srcOver),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                (profileBuilder ?? widgetBuilderGeneralFrameworkWidgetDefault).call(
                  context,
                  ProfilePictureGeneralFrameworkWidget(
                    isUseShadow: profileIsUseShadow,
                    isWithBorder: profileIsWithBorder,
                    pathImage: profile,
                    nick_name: title,
                    width: 35,
                    height: 35,
                    onPressed: profileOnPressed,
                  ),
                ),
                (titleBuilder ?? widgetBuilderGeneralFrameworkWidgetDefault).call(
                  context,
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      title,
                      style: (context.theme.textTheme.titleSmall ?? const TextStyle()).copyWith(
                        shadows: context.extensionGeneralLibFlutterShadows(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
