import 'package:alindor_brainai/src/core/utils/constants.dart';
import 'package:alindor_brainai/src/features/ind_record/data/model/text_analyzed_result/text_analyzed_result.dart';
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
        const SizedBox(
          height: AppSizes.padding,
        ),
        // personality score
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: AppSizes.padding,
            horizontal: AppSizes.padding * 2,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.white),
            borderRadius: BorderRadius.circular(AppSizes.borderRadius),
          ),
          child: Row(
            children: [
              CircleAvatar(
                child: Icon(Icons.bar_chart),
                backgroundColor: AppColors.btnBorder,
              ),
              const SizedBox(
                width: AppSizes.padding,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Personality Score:"),
                  Text(
                    "${data.personalityTest} / 10.0",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: AppSizes.padding,
        ),
      ],
    );
  }
}
