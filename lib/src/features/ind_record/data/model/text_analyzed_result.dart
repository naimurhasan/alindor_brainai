class TextAnalysisResult {
  final double personalityTest;
  final String fullSummary;
  final List<Traits> traits;
  final List<ReflectingQuotes> reflectingQuotes;

  TextAnalysisResult(
      {required this.personalityTest,
      required this.fullSummary,
      required this.traits,
      required this.reflectingQuotes});
}

class Traits {
  final String name;
  final double percentage;
  Traits({required this.name, required this.percentage});
}

class ReflectingQuotes {
  final String topic;
  final String quote;

  ReflectingQuotes({required this.topic, required this.quote});
}
