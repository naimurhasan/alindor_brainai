import 'package:alindor_brainai/src/core/utils/constants.dart';
import 'package:alindor_brainai/src/core/widgets/app_button.dart';
import 'package:flutter/material.dart';

class TextSwitchingWidgets extends StatefulWidget {
  final String text1;
  final String text2;

  const TextSwitchingWidgets(
      {super.key, required this.text1, required this.text2});

  @override
  State<TextSwitchingWidgets> createState() => _TextSwitchingWidgetsState();
}

class _TextSwitchingWidgetsState extends State<TextSwitchingWidgets> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _index == 0 ? widget.text1 : widget.text2,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: AppSizes.padding * 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(
              child: Text("Full Text"),
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
            ),
            SizedBox(
              width: AppSizes.padding * 3,
            ),
            AppButton(
              child: Text("Full Summary"),
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
