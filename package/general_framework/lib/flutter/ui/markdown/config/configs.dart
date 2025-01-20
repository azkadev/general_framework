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
import '../widget/all.dart';

/// UncompleteDocumentation
abstract class MarkdownWidgetConfig {
  ///every config has a tag
  String get tag;
}

/// the basic block config interface
abstract class BlockConfig implements MarkdownWidgetConfig {}

/// the inline widget config interface
abstract class InlineConfig implements MarkdownWidgetConfig {}

/// the container block config interface
abstract class ContainerConfig implements BlockConfig {}

/// the leaf block config interface
abstract class LeafConfig implements BlockConfig {}

/// UncompleteDocumentation
typedef ValueCallback<T> = void Function(T value);

//// the tags of markdown, see [https://spec.commonmark.org/0.30/]
enum MarkdownTag {
  ///------------------------------------------------------///
  ///container block: which can contain other blocks///

  /// [blockquote] A block quote marker, optionally preceded by up to three spaces of indentation,
  ///consists of (a) the character > together with a following space of indentation,
  ///or (b) a single character > not followed by a space of indentation.
  blockquote,

  /// [ul] unordered list
  /// [ol] ordered list
  /// [li] A list is a sequence of one or more list items of the same type.
  /// The list items may be separated by any number of blank lines.
  ul,

  /// UncompleteDocumentation
  ol,

  /// UncompleteDocumentation
  li,

  /// [table]
  ///
  /// It consists of rows and columns,
  /// with each row separated by a new line and each cell within a row separated by a pipe symbol (|)
  table,

  /// UncompleteDocumentation
  thead,

  /// UncompleteDocumentation
  tbody,

  /// UncompleteDocumentation
  tr,

  /// UncompleteDocumentation
  th,

  /// UncompleteDocumentation
  td,

  ///----------------------------------------------------///
  ///leaf block: which can not contain other blocks///

  /// [hr] Thematic breaks, also known as horizontal rules
  hr,

  /// [pre] An indented code block is composed of one or more indented chunks separated by blank lines
  /// A code fence is a sequence of at least three consecutive backtick characters (`) or tildes (~)
  pre,

  ///[h1]、[h2]、[h3]、[h4]、[h5]、[h6]
  ///An ATX heading consists of a string of characters
  ///A setext heading consists of one or more lines of text
  h1,

  /// UncompleteDocumentation
  h2,

  /// UncompleteDocumentation
  h3,

  /// UncompleteDocumentation

  h4,

  /// UncompleteDocumentation
  h5,

  /// UncompleteDocumentation
  h6,

  /// [a] Link reference definitions,A link reference definition consists of a link label
  a,

  /// [p] A sequence of non-blank lines that cannot be interpreted as other kinds of blocks forms a paragraph
  p,

  ///----------------------------------------------------///
  ///inlines: which is contained by blocks

  ///[code] A code fence is a sequence of at least three consecutive backtick characters (`) or tildes (~)
  code,

  ///[em] emphasis, Markdown treats asterisks (*) and underscores (_) as indicators of emphasis
  em,

  ///[del] double '~'swill be wrapped with an HTML <del> tag.
  del,

  ///[br] a hard line break
  br,

  ///[strong] double '*'s or '_'s will be wrapped with an HTML <strong> tag.
  strong,

  ///[img] a image tag
  img,

  ///[input] a checkbox, use '- [ ] ' or '- [x] '
  input,

  /// UncompleteDocumentation
  other
}

///use [MarkdownConfigGeneralFramework] to set various configurations for [MarkdownGeneralFrameworkWidget]
class MarkdownConfigGeneralFramework {
  /// UncompleteDocumentation
  HorizontalRulesConfig get hr => _getConfig<HorizontalRulesConfig>(
      MarkdownTag.hr, const HorizontalRulesConfig());

  /// UncompleteDocumentation
  HeadingConfig get h1 =>
      _getConfig<HeadingConfig>(MarkdownTag.h1, const H1Config());

  /// UncompleteDocumentation
  HeadingConfig get h2 =>
      _getConfig<HeadingConfig>(MarkdownTag.h2, const H2Config());

  /// UncompleteDocumentation
  HeadingConfig get h3 =>
      _getConfig<HeadingConfig>(MarkdownTag.h3, const H3Config());

  /// UncompleteDocumentation
  HeadingConfig get h4 =>
      _getConfig<HeadingConfig>(MarkdownTag.h4, const H4Config());

  /// UncompleteDocumentation
  HeadingConfig get h5 =>
      _getConfig<HeadingConfig>(MarkdownTag.h5, const H5Config());

  /// UncompleteDocumentation
  HeadingConfig get h6 =>
      _getConfig<HeadingConfig>(MarkdownTag.h6, const H6Config());

  /// UncompleteDocumentation
  PreConfig get pre =>
      _getConfig<PreConfig>(MarkdownTag.pre, const PreConfig());

  /// UncompleteDocumentation
  LinkConfig get a => _getConfig<LinkConfig>(MarkdownTag.a, const LinkConfig());

  /// UncompleteDocumentation
  ParagraphMarkdownConfig get p => _getConfig<ParagraphMarkdownConfig>(
      MarkdownTag.p, const ParagraphMarkdownConfig());

  /// UncompleteDocumentation
  BlockquoteConfig get blockquote => _getConfig<BlockquoteConfig>(
      MarkdownTag.blockquote, const BlockquoteConfig());

  /// UncompleteDocumentation
  ListConfig get li =>
      _getConfig<ListConfig>(MarkdownTag.li, const ListConfig());

  /// UncompleteDocumentation
  TableConfig get table =>
      _getConfig<TableConfig>(MarkdownTag.table, const TableConfig());

  /// UncompleteDocumentation
  CodeConfig get code =>
      _getConfig<CodeConfig>(MarkdownTag.code, const CodeConfig());

  /// UncompleteDocumentation
  ImgConfig get img =>
      _getConfig<ImgConfig>(MarkdownTag.img, const ImgConfig());

  /// UncompleteDocumentation
  CheckBoxConfig get input =>
      _getConfig<CheckBoxConfig>(MarkdownTag.input, const CheckBoxConfig());

  T _getConfig<T>(MarkdownTag tag, T defaultValue) {
    final config = _tag2Config[tag.name];
    if (config == null || config is! T) {
      return defaultValue;
    }
    return config as T;
  }

  ///default [MarkdownConfigGeneralFramework] for [MarkdownGeneralFrameworkWidget]
  static MarkdownConfigGeneralFramework get defaultConfig =>
      MarkdownConfigGeneralFramework();

  ///[darkConfig] is used for dark mode
  static MarkdownConfigGeneralFramework get darkConfig =>
      MarkdownConfigGeneralFramework(configs: [
        HorizontalRulesConfig.darkConfig,
        H1Config.darkConfig,
        H2Config.darkConfig,
        H3Config.darkConfig,
        H4Config.darkConfig,
        H5Config.darkConfig,
        H6Config.darkConfig,
        PreConfig.darkConfig,
        ParagraphMarkdownConfig.darkConfig,
        CodeConfig.darkConfig,
        BlockquoteConfig.darkConfig,
      ]);

  //// the key of [_tag2Config] is tag, the value is [MarkdownWidgetConfig]
  final Map<String, MarkdownWidgetConfig> _tag2Config = {};

  /// UncompleteDocumentation
  MarkdownConfigGeneralFramework(
      {List<MarkdownWidgetConfig> configs = const []}) {
    for (final config in configs) {
      _tag2Config[config.tag] = config;
    }
  }

  /// UncompleteDocumentation
  MarkdownConfigGeneralFramework copy(
      {List<MarkdownWidgetConfig> configs = const []}) {
    for (final config in configs) {
      _tag2Config[config.tag] = config;
    }
    return MarkdownConfigGeneralFramework(configs: _tag2Config.values.toList());
  }
}
