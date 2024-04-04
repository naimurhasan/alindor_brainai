class TextAnalysisResult {
  final double personalityTest;
  final String fullSummary;
  final List<Trait> traits;
  final List<ReflectingQuote> reflectingQuotes;

  TextAnalysisResult(
      {required this.personalityTest,
      required this.fullSummary,
      required this.traits,
      required this.reflectingQuotes});
}

class Trait {
  final String name;
  final double percentage;
  Trait({required this.name, required this.percentage});
}

class ReflectingQuote {
  final String topic;
  final String quote;

  ReflectingQuote({required this.topic, required this.quote});
}
