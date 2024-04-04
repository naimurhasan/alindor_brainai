import 'package:alindor_brainai/src/core/utils/constants.dart';
import 'package:alindor_brainai/src/features/ind_record/data/model/text_analyzed_result/text_analyzed_result.dart';
import 'package:alindor_brainai/src/features/ind_record/presentation/widgets/personality_score_widget.dart';
import 'package:alindor_brainai/src/features/ind_record/presentation/widgets/reflecting_quotes.dart';
import 'package:alindor_brainai/src/features/ind_record/presentation/widgets/trait_gridview.dart';
import 'package:flutter/material.dart';

class TextAnalysisResultView extends StatelessWidget {
  final TextAnalysisResult data;

  const TextAnalysisResultView({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(data.tinyTitle),
        const SizedBox(height: AppSizes.padding),
        PersonalityScoreWidget(personalityScore: data.personalityTest),
        const SizedBox(height: AppSizes.padding),
        TraitsGridView(traits: data.traits),
        const SizedBox(height: AppSizes.padding),
        ReflectingQuotes(quotes: data.reflectingQuotes),
        const SizedBox(height: AppSizes.padding * 10),
      ],
    );
  }
}
