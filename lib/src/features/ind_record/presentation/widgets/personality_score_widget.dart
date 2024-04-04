import 'package:alindor_brainai/src/core/utils/constants.dart';
import 'package:flutter/material.dart';

class PersonalityScoreWidget extends StatelessWidget {
  final double personalityScore;
  const PersonalityScoreWidget({super.key, required this.personalityScore});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              const CircleAvatar(
                backgroundColor: AppColors.btnBorder,
                child: Icon(Icons.bar_chart),
              ),
              const SizedBox(
                width: AppSizes.padding,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Personality Score:"),
                  Text(
                    "$personalityScore / 10.0",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ],
          ),
        );
  }
}
