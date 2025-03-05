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
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../markdown_widget.dart';

///Tag: [MarkdownTag.img]
class ImageNode extends MarkdownSpanNodeGeneralFrameworkWidget {
  /// UncompleteDocumentation
  final Map<String, String> attributes;

  /// UncompleteDocumentation
  final MarkdownConfigGeneralFramework config;

  /// UncompleteDocumentation
  final WidgetVisitor visitor;

  /// UncompleteDocumentation
  ImgConfig get imgConfig => config.img;

  /// UncompleteDocumentation
  ImageNode(this.attributes, this.config, this.visitor);

  @override
  InlineSpan build() {
    double? width;
    double? height;
    if (attributes['width'] != null) width = double.parse(attributes['width']!);
    if (attributes['height'] != null) {
      height = double.parse(attributes['height']!);
    }
    final imageUrl = attributes['src'] ?? '';
    final alt = attributes['alt'] ?? '';
    final isNetImage = imageUrl.startsWith('http');
    final imgWidget = isNetImage
        ? Image.network(imageUrl,
            width: width,
            height: height,
            fit: BoxFit.cover, errorBuilder: (ctx, error, stacktrace) {
            return buildErrorImage(imageUrl, alt, error);
          })
        : Image.asset(imageUrl, width: width, height: height, fit: BoxFit.cover,
            errorBuilder: (ctx, error, stacktrace) {
            return buildErrorImage(imageUrl, alt, error);
          });
    final result = (parent != null && parent is LinkNode)
        ? imgWidget
        : Builder(builder: (context) {
            return InkWell(
              child: Hero(child: imgWidget, tag: imgWidget.hashCode),
              onTap: () => _showImage(context, imgWidget),
            );
          });
    return WidgetSpan(
        child: imgConfig.builder?.call(imageUrl, attributes) ?? result);
  }

  /// UncompleteDocumentation
  Widget buildErrorImage(String url, String alt, Object? error) {
    return MarkdownProxyRichTextGeneralFrameworkWidget(
      TextSpan(children: [
        WidgetSpan(
            child: Icon(Icons.broken_image,
                color: Colors.redAccent,
                size: (parentStyle?.fontSize ??
                        config.p.textStyle.fontSize ??
                        16) *
                    (parentStyle?.height ?? config.p.textStyle.height ?? 1.2))),
        TextSpan(text: alt, style: parentStyle ?? config.p.textStyle),
      ]),
      richTextBuilder: visitor.richTextBuilder,
    );
  }

  ///show image in a new window
  void _showImage(BuildContext context, Widget child) {
    Navigator.of(context).push(PageRouteBuilder(
        opaque: false, pageBuilder: (_, __, ___) => ImageViewer(child: child)));
  }
}

///config class for image, tag: img
class ImgConfig implements InlineConfig {
  ///use [builder] to return a custom image
  final ImgBuilder? builder;

  ///use [errorBuilder] to return a custom error image
  final ErrorImgBuilder? errorBuilder;

  /// UncompleteDocumentation
  const ImgConfig({this.builder, this.errorBuilder});

  @nonVirtual
  @override
  String get tag => MarkdownTag.img.name;
}

///show image with [InteractiveViewer]
class ImageViewer extends StatelessWidget {
  /// UncompleteDocumentation
  final Widget child;

  /// UncompleteDocumentation
  const ImageViewer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Scaffold(
        // backgroundColor: Colors.black.withOpacity(0.3),
        backgroundColor: Colors.black.withValues(alpha: 0.3),
        body: Stack(
          fit: StackFit.expand,
          children: [
            InteractiveViewer(
                child: Center(child: Hero(child: child, tag: child.hashCode))),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Container(
                    child: const Icon(
                      Icons.clear,
                      color: Colors.grey,
                    ),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      // color: Colors.white.withOpacity(0.2),
                      color: Colors.white.withValues(alpha: 0.2),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/// UncompleteDocumentation
typedef ImgBuilder = Widget Function(
    String url, Map<String, String> attributes);

/// UncompleteDocumentation
typedef ErrorImgBuilder = Widget Function(String url, String alt, Object error);
