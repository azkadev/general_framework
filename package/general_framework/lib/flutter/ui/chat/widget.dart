/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// ignore_for_file: unused_element, empty_catches

import 'package:flutter/material.dart';
import 'package:general_framework/extension/extension.dart';
import 'package:general_framework/flutter/fork/skeletonizer/lib/skeletonizer.dart';
import 'package:general_framework/flutter/widget/widget.dart';
import 'package:general_framework/utils/utils.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import 'package:intl/intl.dart' as intl;

/// create chat message on main screen
class ChatMessageGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final bool isLoading;

  /// UncompleteDocumentation
  final Color? unreadCountColor;

  /// UncompleteDocumentation
  final BorderRadiusGeometry? unreadCountBorderRadius;

  /// UncompleteDocumentation
  final dynamic profilePicture;

  /// UncompleteDocumentation
  final String title;

  /// UncompleteDocumentation
  final String? message;

  /// UncompleteDocumentation
  final DateTime date;

  /// UncompleteDocumentation
  final num unreadCount;

  /// UncompleteDocumentation
  final WidgetBuilder? profilePictureBuilder;

  /// UncompleteDocumentation
  final WidgetBuilder? titleBuilder;

  /// UncompleteDocumentation
  final WidgetBuilder? messageBuilder;

  /// UncompleteDocumentation
  final WidgetBuilder? dateBuilder;

  /// UncompleteDocumentation
  final WidgetBuilder? unreadCountBuilder;

  /// UncompleteDocumentation
  final double spaceTrailing;

  /// UncompleteDocumentation
  final void Function()? profilePictureOnTap;

  /// UncompleteDocumentation
  final void Function()? profilePictureOnLongPress;

  /// UncompleteDocumentation
  final void Function()? onTap;

  /// UncompleteDocumentation
  final void Function()? onLongPress;

  /// UncompleteDocumentation
  final void Function(bool value)? onFocusChange;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? contentPadding;

  /// UncompleteDocumentation
  final String? locale;

  /// UncompleteDocumentation
  final bool profilePictureIsUseShadow;

  /// UncompleteDocumentation
  final bool profilePictureIsWithBorder;

  /// UncompleteDocumentation
  final BorderRadiusGeometry? profilePictureBorderRadius;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? profilePictureMargin;

  /// UncompleteDocumentation
  const ChatMessageGeneralFrameworkWidget({
    super.key,
    required this.isLoading,
    this.profilePictureMargin,
    this.profilePictureBorderRadius,
    this.profilePictureOnLongPress,
    this.profilePictureIsUseShadow = false,
    this.profilePictureIsWithBorder = false,
    this.profilePicture,
    this.profilePictureOnTap,
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
    this.locale,
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

  /// UncompleteDocumentation
  Widget profilePictureWidget({
    required BuildContext context,
  }) {
    if (profilePictureBuilder != null) {
      return profilePictureBuilder!(context);
    }
    final sizeProcces = context.extensionGeneralLibFlutterSizePhotoSmall();
    return ProfilePictureGeneralFrameworkWidget(
      height: sizeProcces.height,
      width: sizeProcces.width,
      pathImage: profilePicture,
      nick_name: title,
      margin: profilePictureMargin,
      borderRadius: profilePictureBorderRadius,
      onPressed: profilePictureOnTap,
      onLongPress: profilePictureOnLongPress,
      isUseShadow: profilePictureIsUseShadow,
      isWithBorder: profilePictureIsWithBorder,
    );
  }

  /// UncompleteDocumentation
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
      style: context.theme.textTheme.titleSmall,
    );
  }

  /// UncompleteDocumentation
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

  /// UncompleteDocumentation
  Widget dateWidget({
    required BuildContext context,
  }) {
    if (dateBuilder != null) {
      return dateBuilder!(context);
    }
    return Text(
      () {
        if (date.extensionGeneralFrameworkToThisDay().isAtSameMomentAs(
            DateTime.now().extensionGeneralFrameworkToThisDay())) {
          return intl.DateFormat("hh.mm", locale).format(date);
        } else {
          return intl.DateFormat("dd/mm/yy", locale).format(date);
        }
      }(),
      style: context.theme.textTheme.bodySmall,
    );
  }

  /// UncompleteDocumentation
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
