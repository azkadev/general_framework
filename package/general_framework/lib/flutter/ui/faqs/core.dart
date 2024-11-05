class FaqGeneralFrameworkOptions {
  final List<FaqGeneralFrameworkData> faqs;
  final String languageCodeId;
  FaqGeneralFrameworkOptions({
    required this.faqs,
    required this.languageCodeId,
  });
  static FaqGeneralFrameworkOptions empty() {
    return FaqGeneralFrameworkOptions(
      faqs: [],
      languageCodeId: "",
    );
  }
}
// MarkdownFlutterContentGeneralFramework

class FaqGeneralFrameworkData {
  final String title;
  final List<FaqGeneralFrameworkSubData> data;
  FaqGeneralFrameworkData({
    required this.title,
    
    required this.data,
  });
}

class FaqGeneralFrameworkSubData {
  final String question;
  final String answer;

  FaqGeneralFrameworkSubData({
    required this.question,
    required this.answer,
  });
}
