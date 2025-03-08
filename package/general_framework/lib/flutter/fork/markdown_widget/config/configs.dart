import '../widget/all.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
abstract class WidgetConfig {
  ///every config has a tag
  String get tag;
}

//the basic block config interface
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
abstract class BlockConfig implements WidgetConfig {}

//the inline widget config interface
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
abstract class InlineConfig implements WidgetConfig {}

//the container block config interface
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
abstract class ContainerConfig implements BlockConfig {}

//the leaf block config interface
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
abstract class LeafConfig implements BlockConfig {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef ValueCallback<T> = void Function(T value);

///the tags of markdown, see [https://spec.commonmark.org/0.30/]
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
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ol,
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  li,

  /// [table]
  ///
  /// It consists of rows and columns,
  /// with each row separated by a new line and each cell within a row separated by a pipe symbol (|)
  table,
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  thead,
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  tbody,
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  tr,
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  th,
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
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
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  h2,
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  h3,
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  h4,
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  h5,
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
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
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  other
}

///use [MarkdownConfig] to set various configurations for [MarkdownWidget]
class MarkdownConfig {
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  HrConfig get hr => _getConfig<HrConfig>(MarkdownTag.hr, const HrConfig());

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  HeadingConfig get h1 =>
      _getConfig<HeadingConfig>(MarkdownTag.h1, const H1Config());

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  HeadingConfig get h2 =>
      _getConfig<HeadingConfig>(MarkdownTag.h2, const H2Config());

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  HeadingConfig get h3 =>
      _getConfig<HeadingConfig>(MarkdownTag.h3, const H3Config());

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  HeadingConfig get h4 =>
      _getConfig<HeadingConfig>(MarkdownTag.h4, const H4Config());

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  HeadingConfig get h5 =>
      _getConfig<HeadingConfig>(MarkdownTag.h5, const H5Config());

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  HeadingConfig get h6 =>
      _getConfig<HeadingConfig>(MarkdownTag.h6, const H6Config());

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  PreConfig get pre =>
      _getConfig<PreConfig>(MarkdownTag.pre, const PreConfig());

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  LinkConfig get a => _getConfig<LinkConfig>(MarkdownTag.a, const LinkConfig());

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  PConfig get p => _getConfig<PConfig>(MarkdownTag.p, const PConfig());

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  BlockquoteConfig get blockquote => _getConfig<BlockquoteConfig>(
      MarkdownTag.blockquote, const BlockquoteConfig());

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ListConfig get li =>
      _getConfig<ListConfig>(MarkdownTag.li, const ListConfig());

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  TableConfig get table =>
      _getConfig<TableConfig>(MarkdownTag.table, const TableConfig());

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  CodeConfig get code =>
      _getConfig<CodeConfig>(MarkdownTag.code, const CodeConfig());

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ImgConfig get img =>
      _getConfig<ImgConfig>(MarkdownTag.img, const ImgConfig());

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  CheckBoxConfig get input =>
      _getConfig<CheckBoxConfig>(MarkdownTag.input, const CheckBoxConfig());

  T _getConfig<T>(MarkdownTag tag, T defaultValue) {
    final config = _tag2Config[tag.name];
    if (config == null || config is! T) {
      return defaultValue;
    }
    return config as T;
  }

  ///default [MarkdownConfig] for [MarkdownWidget]
  static MarkdownConfig get defaultConfig => MarkdownConfig();

  ///[darkConfig] is used for dark mode
  static MarkdownConfig get darkConfig => MarkdownConfig(configs: [
        HrConfig.darkConfig,
        H1Config.darkConfig,
        H2Config.darkConfig,
        H3Config.darkConfig,
        H4Config.darkConfig,
        H5Config.darkConfig,
        H6Config.darkConfig,
        PreConfig.darkConfig,
        PConfig.darkConfig,
        CodeConfig.darkConfig,
        BlockquoteConfig.darkConfig,
      ]);

  ///the key of [_tag2Config] is tag, the value is [WidgetConfig]
  final Map<String, WidgetConfig> _tag2Config = {};

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  MarkdownConfig({List<WidgetConfig> configs = const []}) {
    for (final config in configs) {
      _tag2Config[config.tag] = config;
    }
  }

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  MarkdownConfig copy({List<WidgetConfig> configs = const []}) {
    for (final config in configs) {
      _tag2Config[config.tag] = config;
    }
    return MarkdownConfig(configs: _tag2Config.values.toList());
  }
}
