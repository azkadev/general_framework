import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageGeneralUiGeneralFrameworkOptions {
  final double? height;
  final double? width;
  final BoxFit? fit;

  final Widget Function(BuildContext context, Object error, StackTrace? stackTrace)? errorBuilder;
  const ImageGeneralUiGeneralFrameworkOptions({
    this.width,
    this.height,
    this.errorBuilder,
    this.fit,
  });
}

class ImageGeneralUiGeneralFramework {
  const ImageGeneralUiGeneralFramework();

  static ImageGeneralUiGeneralFrameworkOptions imageGeneralUiOptionsDefault = const ImageGeneralUiGeneralFrameworkOptions(
    fit: BoxFit.cover,
  );

  static ImageGeneralUiGeneralFrameworkOptions getImageGeneralUiGeneralFrameworkOptions({
    required ImageGeneralUiGeneralFrameworkOptions? imageGeneralUiOptions,
  }) {
    return imageGeneralUiOptions ?? imageGeneralUiOptionsDefault;
  }

  static DecorationImage decorationImage({
    required dynamic pathImage,
    ImageGeneralUiGeneralFrameworkOptions? imageGeneralUiOptions,
    void Function(Object error, StackTrace? stackTrace)? onError,
  }) {
    final ImageGeneralUiGeneralFrameworkOptions imageGeneralUiGeneralFrameworkOptions = getImageGeneralUiGeneralFrameworkOptions(imageGeneralUiOptions: imageGeneralUiOptions);
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

  static DecorationImage? decorationImageOrNull({
    required dynamic pathImage,
    ImageGeneralUiGeneralFrameworkOptions? imageGeneralUiOptions,
    void Function(Object error, StackTrace? stackTrace)? onError,
  }) {
    try {
      final ImageGeneralUiGeneralFrameworkOptions imageGeneralUiGeneralFrameworkOptions = getImageGeneralUiGeneralFrameworkOptions(
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
        fit: imageGeneralUiGeneralFrameworkOptions.fit,
        image: image.image,
      );
    } catch (e) {
      return null;
    }
  }

  static Image image({
    required dynamic pathImage,
    ImageGeneralUiGeneralFrameworkOptions? imageGeneralUiOptions,
    Image Function()? onNotFound,
  }) {
    final ImageGeneralUiGeneralFrameworkOptions imageGeneralUiGeneralFrameworkOptions = getImageGeneralUiGeneralFrameworkOptions(imageGeneralUiOptions: imageGeneralUiOptions);

    return imageOrNull(pathImage: pathImage, imageGeneralUiOptions: imageGeneralUiGeneralFrameworkOptions) ??
        Image.asset(
          "",
          errorBuilder: imageGeneralUiGeneralFrameworkOptions.errorBuilder,
          fit: imageGeneralUiGeneralFrameworkOptions.fit,
        );
  }

  static Image? imageOrNull({
    required dynamic pathImage,
    ImageGeneralUiGeneralFrameworkOptions? imageGeneralUiOptions,
  }) {
    try {
      final ImageGeneralUiGeneralFrameworkOptions imageGeneralUiGeneralFrameworkOptions = getImageGeneralUiGeneralFrameworkOptions(imageGeneralUiOptions: imageGeneralUiOptions);
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
        return Image.network(
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