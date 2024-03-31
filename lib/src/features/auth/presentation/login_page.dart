import 'package:alindor_brainai/src/core/utils/constants.dart';
import 'package:alindor_brainai/src/core/widgets/app_button.dart';
import 'package:alindor_brainai/src/features/auth/presentation/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBG,
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.padding),
        child: Center(
          child: AppButton(
            onPressed: () {
              context.read<AuthenticationBloc>().add(SignInWithGoogle());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FaIcon(FontAwesomeIcons.google, color: AppColors.white,),
                const SizedBox(width: AppSizes.padding,),
                Text(
                  "Google Login",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.white,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
