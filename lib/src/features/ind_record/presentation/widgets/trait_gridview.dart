
import 'package:alindor_brainai/src/core/utils/constants.dart';
import 'package:alindor_brainai/src/features/ind_record/data/model/trait/trait_model.dart';
import 'package:flutter/material.dart';

class TraitsGridView extends StatelessWidget {
  final List<Trait> traits;

  const TraitsGridView({super.key, required this.traits});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GridView.builder(
        padding: const EdgeInsets.all(
          AppSizes.padding,
        ),
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1 / 3,
          mainAxisSpacing: AppSizes.padding,
          crossAxisSpacing: AppSizes.padding,
        ),
        itemCount: traits.length,
        itemBuilder: (context, index) {
          return TraitWidget(trait: traits[index]);
        },
      ),
    );
  }
}

class TraitWidget extends StatelessWidget {
  final Trait trait;

  const TraitWidget({super.key, required this.trait});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(trait.name),
        const SizedBox(height: AppSizes.padding),
        LayoutBuilder(
          builder: (context, box) {
            return Container(
              width: box.maxWidth,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.btnBorder),
                  borderRadius: BorderRadius.circular(AppSizes.borderRadius),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.btnBorder,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 0),
                    ),
                  ]),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.scaffoldBG,
                    borderRadius: BorderRadius.circular(
                      AppSizes.borderRadius,
                    )),
                child: Container(
                    margin: EdgeInsets.only(
                      right: box.maxWidth * ( 1 - (trait.score / 10)),
                    ),
                    decoration: BoxDecoration(
                    gradient: const  LinearGradient(
                      colors: [
                        Color(0xFF021D5A),
                        Color(0xFF4CA7E8),
                      ]
                    ),
                    borderRadius: BorderRadius.circular(
                      AppSizes.borderRadius,
                    ),
                  ),
                  padding: const EdgeInsets.only(
                    left: AppSizes.padding,
                  ),
                  child: Stack(
                    children: [
                      Text(
                        "${trait.score.toInt()}",
                      ),
                      const Positioned(
                        right: 0,
                        child: CircleAvatar(
                          radius: 9,
                          backgroundColor: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        ),
      ],
    );
  }
}
