import 'package:alindor_brainai/src/core/utils/constants.dart';
import 'package:alindor_brainai/src/features/ind_record/data/model/reflecting_quote/relfecting_quote.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReflectingQuotes extends StatelessWidget {
  final List<ReflectingQuote> quotes;
  const ReflectingQuotes({
    super.key,
    required this.quotes,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: quotes
          .map((e) => QuoteWidget(
                quote: e,
              ))
          .toList(),
    );
  }
}

class QuoteWidget extends StatefulWidget {
  final ReflectingQuote quote;
  const QuoteWidget({super.key, required this.quote});

  @override
  State<QuoteWidget> createState() => _QuoteWidgetState();
}

class _QuoteWidgetState extends State<QuoteWidget> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.quote.topic),
        const SizedBox(height: AppSizes.padding),
        InkWell(
          onTap: (){
            setState(() {
              expanded = !expanded;
            });
          },
          child: Container(
            margin: const EdgeInsets.all(AppSizes.padding).copyWith(top: 0),
            padding: const EdgeInsets.all(AppSizes.padding),
            decoration: BoxDecoration(
              color: AppColors.scaffoldBG,
              border: Border.all(color: AppColors.btnBorder),
              borderRadius: BorderRadius.circular(AppSizes.borderRadius),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.btnBorder,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Text(
              widget.quote.quote,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          child: SizedBox(
            height: expanded ? null : 0,
            child: Text(
                widget.quote.quote,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
          ),
        ),
        const SizedBox(height: AppSizes.padding * 2),
      ],
    );
  }
}
