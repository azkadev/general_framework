import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_framework/flutter/image/image_core.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class ContentMediaPictureSimpleWithButtonGeneralFrameworkWidget extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final bool isLoading;
  final Size? size;
  final dynamic media;
  final String title;
  final String subtitle;
  final IconData iconData;
  final void Function()? onPressed;
  final BorderRadiusGeometry? borderRadius;

  final bool isWithBorder;
  final bool isWithBoxShadows;
  const ContentMediaPictureSimpleWithButtonGeneralFrameworkWidget({
    super.key,
    required this.isLoading,
    required this.media,
    required this.title,
    required this.subtitle,
    required this.iconData,
    required this.onPressed,
    this.isWithBorder = true,
    this.isWithBoxShadows = true,
    this.margin,
    this.size,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = this.size ?? Size(context.width, context.height / 3.5);
    final BorderRadiusGeometry borderRadius = this.borderRadius ?? BorderRadius.circular(20);
    return MediaQuery(
      data: context.mediaQueryData.copyWith(
        size: size,
      ),
      child: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.all(0),
        margin: margin ?? const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: context.theme.primaryColor,
          borderRadius: borderRadius,
          border: isWithBorder ? context.extensionGeneralLibFlutterBorderAll() : null,
          boxShadow: isWithBoxShadows ? context.extensionGeneralLibFlutterBoxShadows() : null,
        ),
        child: ClipRRect(
          borderRadius: borderRadius,
          child: Builder(
            builder: (context) {
              final child = Column(
                children: [
                  Expanded(
                    child: Container(
                      width: context.width,
                      decoration: BoxDecoration(
                        image: ImageGeneralUiGeneralFramework.decorationImage(
                          pathImage: media,
                          imageGeneralUiOptions: const ImageGeneralUiGeneralFrameworkOptions(
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: context.height / 3.5,
                    width: context.width,
                    decoration: BoxDecoration(
                      color: context.theme.primaryColor,
                      boxShadow: context.extensionGeneralLibFlutterBoxShadows(),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                                child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 15,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title.trim(),
                                style: context.theme.textTheme.titleSmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                  subtitle,
                                  style: context.theme.textTheme.bodySmall,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              
                            ],
                          ),
                        ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: context.theme.primaryColor,
                            borderRadius: BorderRadius.circular(20),
                            border: context.extensionGeneralLibFlutterBorderAll(),
                            boxShadow: context.extensionGeneralLibFlutterBoxShadows(),
                          ),
                          margin: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 15,
                          ),
                          child: IconButton(
                            padding: const EdgeInsets.all(15),
                            splashRadius: 15,
                            alignment: Alignment.center,
                            onPressed: onPressed,
                            icon: Icon(
                              iconData,
                              color: context.theme.indicatorColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );

              if (isLoading) {
                return SkeletonizerGeneralFramework(
                  enabled: isLoading,
                  child: child,
                );
              }

              return child;
            },
          ),
        ),
      ),
    );
  }
}
