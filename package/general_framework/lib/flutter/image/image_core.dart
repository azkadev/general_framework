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
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// UncompleteDocumentation
class ImageGeneralUiGeneralFrameworkOptions {
  /// UncompleteDocumentation
  final double? height;

  /// UncompleteDocumentation

  final double? width;

  /// UncompleteDocumentation
  final BoxFit? fit;

  /// UncompleteDocumentation
  final ColorFilter? colorFilter;

  /// UncompleteDocumentation
  final Widget Function(
      BuildContext context, Object error, StackTrace? stackTrace)? errorBuilder;

  /// UncompleteDocumentation
  const ImageGeneralUiGeneralFrameworkOptions({
    this.colorFilter,
    this.width,
    this.height,
    this.errorBuilder,
    this.fit,
  });
}

/// UncompleteDocumentation

class ImageGeneralUiGeneralFramework {
  /// UncompleteDocumentation
  const ImageGeneralUiGeneralFramework();

  /// UncompleteDocumentation
  static ImageGeneralUiGeneralFrameworkOptions imageGeneralUiOptionsDefault =
      const ImageGeneralUiGeneralFrameworkOptions(
    fit: BoxFit.cover,
  );

  /// UncompleteDocumentation

  static ImageGeneralUiGeneralFrameworkOptions
      getImageGeneralUiGeneralFrameworkOptions({
    required ImageGeneralUiGeneralFrameworkOptions? imageGeneralUiOptions,
  }) {
    return imageGeneralUiOptions ?? imageGeneralUiOptionsDefault;
  }

  /// UncompleteDocumentation

  static DecorationImage decorationImage({
    required dynamic pathImage,
    ImageGeneralUiGeneralFrameworkOptions? imageGeneralUiOptions,
    void Function(Object error, StackTrace? stackTrace)? onError,
  }) {
    final ImageGeneralUiGeneralFrameworkOptions
        imageGeneralUiGeneralFrameworkOptions =
        getImageGeneralUiGeneralFrameworkOptions(
            imageGeneralUiOptions: imageGeneralUiOptions);
    return DecorationImage(
      onError: onError,
      fit: imageGeneralUiGeneralFrameworkOptions.fit,
      image: image(
        pathImage: pathImage,
        imageGeneralUiOptions: imageGeneralUiGeneralFrameworkOptions,
        onNotFound: () {
          return Image.asset(
            "",
            errorBuilder: imageGeneralUiGeneralFrameworkOptions.errorBuilder,
            fit: imageGeneralUiGeneralFrameworkOptions.fit,
          );
        },
      ).image,
    );
  }

  /// UncompleteDocumentation

  static DecorationImage? decorationImageOrNull({
    required dynamic pathImage,
    ImageGeneralUiGeneralFrameworkOptions? imageGeneralUiOptions,
    void Function(Object error, StackTrace? stackTrace)? onError,
  }) {
    try {
      final ImageGeneralUiGeneralFrameworkOptions
          imageGeneralUiGeneralFrameworkOptions =
          getImageGeneralUiGeneralFrameworkOptions(
        imageGeneralUiOptions: imageGeneralUiOptions,
      );
      final image = imageOrNull(
        pathImage: pathImage,
        imageGeneralUiOptions: imageGeneralUiGeneralFrameworkOptions,
      );
      if (image == null) {
        return null;
      }
      return DecorationImage(
        onError: onError,
        colorFilter: imageGeneralUiGeneralFrameworkOptions.colorFilter,
        fit: imageGeneralUiGeneralFrameworkOptions.fit,
        image: image.image,
      );
    } catch (e) {
      return null;
    }
  }

  /// UncompleteDocumentation
  static Image image({
    required dynamic pathImage,
    ImageGeneralUiGeneralFrameworkOptions? imageGeneralUiOptions,
    Image Function()? onNotFound,
  }) {
    final ImageGeneralUiGeneralFrameworkOptions
        imageGeneralUiGeneralFrameworkOptions =
        getImageGeneralUiGeneralFrameworkOptions(
            imageGeneralUiOptions: imageGeneralUiOptions);

    return imageOrNull(
            pathImage: pathImage,
            imageGeneralUiOptions: imageGeneralUiGeneralFrameworkOptions) ??
        Image.asset(
          "",
          errorBuilder: imageGeneralUiGeneralFrameworkOptions.errorBuilder,
          fit: imageGeneralUiGeneralFrameworkOptions.fit,
        );
  }

  /// UncompleteDocumentation

  static Image? imageOrNull({
    required dynamic pathImage,
    ImageGeneralUiGeneralFrameworkOptions? imageGeneralUiOptions,
  }) {
    try {
      final ImageGeneralUiGeneralFrameworkOptions
          imageGeneralUiGeneralFrameworkOptions =
          getImageGeneralUiGeneralFrameworkOptions(
              imageGeneralUiOptions: imageGeneralUiOptions);
      final errorBuilder = imageGeneralUiGeneralFrameworkOptions.errorBuilder;
      if (pathImage is String) {
        if (pathImage.isNotEmpty) {
          if (RegExp("^(assets|package)").hasMatch(pathImage)) {
            return Image.asset(
              pathImage,
              errorBuilder: errorBuilder,
              width: imageGeneralUiGeneralFrameworkOptions.width,
              height: imageGeneralUiGeneralFrameworkOptions.height,
              fit: imageGeneralUiGeneralFrameworkOptions.fit,
            );
          } else if (RegExp("^(http)").hasMatch(pathImage)) {
            return Image.network(
              pathImage,
              errorBuilder: errorBuilder,
              width: imageGeneralUiGeneralFrameworkOptions.width,
              height: imageGeneralUiGeneralFrameworkOptions.height,
              fit: imageGeneralUiGeneralFrameworkOptions.fit,
            );
          } else {
            final file = File(pathImage);
            if (file.existsSync() == false) {
              return null;
            }
            return Image.file(
              file,
              errorBuilder: errorBuilder,
              width: imageGeneralUiGeneralFrameworkOptions.width,
              height: imageGeneralUiGeneralFrameworkOptions.height,
              fit: imageGeneralUiGeneralFrameworkOptions.fit,
            );
          }
        }
      } else if (pathImage is List<int> || pathImage is Uint8List) {
        if (pathImage is List && pathImage.isEmpty) {
          return null;
        }

        return Image.memory(
          pathImage,
          errorBuilder: errorBuilder,
          width: imageGeneralUiGeneralFrameworkOptions.width,
          height: imageGeneralUiGeneralFrameworkOptions.height,
          fit: imageGeneralUiGeneralFrameworkOptions.fit,
        );
      } else if (pathImage is Widget) {
        return Image.asset(
          "",
          errorBuilder: (context, error, stackTrace) {
            return pathImage;
          },
          fit: imageGeneralUiGeneralFrameworkOptions.fit,
          width: imageGeneralUiGeneralFrameworkOptions.width,
          height: imageGeneralUiGeneralFrameworkOptions.height,
        );
      } else if (pathImage is File) {
        if (pathImage.existsSync() == false) {
          return null;
        }
        return Image.file(
          pathImage,
          errorBuilder: errorBuilder,
          fit: imageGeneralUiGeneralFrameworkOptions.fit,
          width: imageGeneralUiGeneralFrameworkOptions.width,
          height: imageGeneralUiGeneralFrameworkOptions.height,
        );
      }

      return null;
    } catch (e) {
      return null;
    }
  }
}
