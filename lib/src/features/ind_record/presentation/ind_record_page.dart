import 'package:alindor_brainai/src/core/utils/constants.dart';
import 'package:alindor_brainai/src/features/auth/presentation/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class IndRecordPage extends StatelessWidget {
  const IndRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBar(
          title: Text("Record Something!"),
          centerTitle: true,
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.read<AuthenticationBloc>().add(SignOut());
              context.pushReplacementNamed(Routes.root);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: const Center(
        child: Text("Record Something!"),
      ),
    );
  }
}
