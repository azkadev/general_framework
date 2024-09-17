// ignore_for_file: unused_element, empty_catches

import 'package:flutter/material.dart';
import 'package:general_framework/flutter/fork/skeletonizer/lib/skeletonizer.dart';
import 'package:general_framework/utils/utils.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import 'package:intl/intl.dart' as intl;

class ChatMessageGeneralFrameworkWidget extends StatelessWidget {
  final bool isLoading;
  final Color? unreadCountColor;
  final BorderRadiusGeometry? unreadCountBorderRadius;
  final dynamic profilePicture;
  final String title;
  final String? message;
  final DateTime date;
  final num unreadCount;
  final WidgetBuilder? profilePictureBuilder;
  final WidgetBuilder? titleBuilder;
  final WidgetBuilder? messageBuilder;
  final WidgetBuilder? dateBuilder;
  final WidgetBuilder? unreadCountBuilder;
  final double spaceTrailing;
  final void Function()? onTap;
  final void Function()? onLongPress;
  final void Function(bool value)? onFocusChange;
  final EdgeInsetsGeometry? contentPadding;
  const ChatMessageGeneralFrameworkWidget({
    super.key,
    required this.isLoading,
    this.profilePicture,
    this.profilePictureBuilder,
    required this.title,
    required this.message,
    required this.unreadCount,
    required this.date,
    this.contentPadding,
    this.unreadCountBorderRadius,
    this.unreadCountColor,
    this.titleBuilder,
    this.messageBuilder,
    this.dateBuilder,
    this.unreadCountBuilder,
    this.spaceTrailing = 5,
    this.onLongPress,
    this.onTap,
    this.onFocusChange,
  });

  @override
  Widget build(BuildContext context) {
     return SkeletonizerGeneralFramework(
      enabled: isLoading,
      child: ListTile(
        contentPadding: contentPadding,
        leading: profilePictureWidget(context: context),
        title: titleWidget(context: context),
        subtitle: messageWidget(context: context),
        trailing: () {
          if (unreadCount >= 1) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: dateWidget(context: context),
                ),
                SizedBox(
                  height: spaceTrailing,
                ),
                unreadCountWidget(context: context),
              ],
            );
          }
          return dateWidget(context: context);
        }(),
        onFocusChange: onFocusChange,
        onLongPress: onLongPress,
        onTap: onTap,
      ),
    );
  }

  Widget profilePictureWidget({
    required BuildContext context,
  }) {
    if (profilePictureBuilder != null) {
      return profilePictureBuilder!(context);
    }
    return CircleAvatar(
      child: Text(
        () {
          try {
            return title.substring(0, 1);
          } catch (e) {}
          return "";
        }(),
        style: context.theme.textTheme.titleSmall,
      ),
    );
  }

  Widget titleWidget({
    required BuildContext context,
  }) {
    if (titleBuilder != null) {
      return titleBuilder!(context);
    }
    return Text(
      (isLoading == false)
          ? title
          : GeneralFrameworkUtils.generateAnyText(
              max: 15,
              min: 5,
            ),
      style: context.theme.textTheme.titleMedium,
    );
  }

  Widget? messageWidget({
    required BuildContext context,
  }) {
    if (messageBuilder != null) {
      return messageBuilder!(context);
    }
    if (isLoading) {
      return Text(
        GeneralFrameworkUtils.generateAnyText(max: 50, min: 10),
        style: context.theme.textTheme.bodySmall,
      );
    }

    if ((message ?? "").isEmpty) {
      return null;
    }
    return Text(
      message ?? "",
      style: context.theme.textTheme.bodySmall,
    );
  }

  Widget dateWidget({
    required BuildContext context,
  }) {
    if (dateBuilder != null) {
      return dateBuilder!(context);
    }
    return Text(
      () {
        if (date.extensionGeneralFrameworkToThisDay().isAtSameMomentAs(DateTime.now().extensionGeneralFrameworkToThisDay())) {
          return intl.DateFormat("hh.mm").format(date);
        } else {
          return intl.DateFormat("dd/mm/yy").format(date);
        }
      }(),
      style: context.theme.textTheme.bodySmall,
    );
  }

  Widget unreadCountWidget({
    required BuildContext context,
  }) {
    if (unreadCountBuilder != null) {
      return unreadCountBuilder!(context);
    }
    return Container(
      decoration: BoxDecoration(
        color: unreadCountColor ?? context.theme.primaryColor,
        borderRadius: unreadCountBorderRadius ?? BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(5),
      child: Text(
        "$unreadCount",
        style: context.theme.textTheme.bodySmall,
      ),
    );
  }
}

extension DateTimeExtensionGeneralFramework on DateTime {
  DateTime extensionGeneralFrameworkToThisDay() {
    return copyWith(
      hour: 0,
      minute: 0,
      second: 0,
      microsecond: 0,
      millisecond: 0,
    );
  }
}
