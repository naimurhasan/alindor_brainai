import 'package:alindor_brainai/src/core/utils/constants.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget child;
  final void Function() onPressed;
  const AppButton({super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          decoration: BoxDecoration(
            color: AppColors.scaffoldBG,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color:  AppColors.btnBorder,
              width: 2.0,
            ),
            boxShadow: const [
                    BoxShadow(
                      color: AppColors.btnBorder,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 0),
                    ),
                  ]
                ,
          ),
          child: child,
        ),
      ),
    );
  }
}
