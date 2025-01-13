/// UncompleteDocumentation
class FaqGeneralFrameworkOptions {
  /// UncompleteDocumentation
  final List<FaqGeneralFrameworkData> faqs;

  /// UncompleteDocumentation
  final String languageCodeId;

  /// UncompleteDocumentation
  FaqGeneralFrameworkOptions({
    required this.faqs,
    required this.languageCodeId,
  });

  /// UncompleteDocumentation
  static FaqGeneralFrameworkOptions empty() {
    return FaqGeneralFrameworkOptions(
      faqs: [],
      languageCodeId: "",
    );
  }
}
// MarkdownFlutterContentGeneralFramework

/// UncompleteDocumentation
class FaqGeneralFrameworkData {
  /// UncompleteDocumentation
  final String title;

  /// UncompleteDocumentation

  final List<FaqGeneralFrameworkSubData> data;

  /// UncompleteDocumentation
  FaqGeneralFrameworkData({
    required this.title,
    required this.data,
  });
}

/// UncompleteDocumentation
class FaqGeneralFrameworkSubData {
  /// UncompleteDocumentation
  final String question;

  /// UncompleteDocumentation
  final String answer;

  /// UncompleteDocumentation
  FaqGeneralFrameworkSubData({
    required this.question,
    required this.answer,
  });
}
