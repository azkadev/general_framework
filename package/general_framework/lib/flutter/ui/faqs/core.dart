
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

class FaqGeneralFrameworkData {
  final String question;
  final String answer;

  FaqGeneralFrameworkData({
    required this.question,
    required this.answer,
  });
}
