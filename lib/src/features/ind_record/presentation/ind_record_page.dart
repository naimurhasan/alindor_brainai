import 'package:alindor_brainai/src/core/utils/constants.dart';
import 'package:alindor_brainai/src/features/auth/presentation/bloc/authentication_bloc.dart';
import 'package:alindor_brainai/src/features/ind_record/presentation/bloc/ind_record_bloc.dart';
import 'package:alindor_brainai/src/features/ind_record/presentation/widgets/recorded_audio_player.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class IndRecordPage extends StatelessWidget {
  const IndRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IndRecordBloc>(
      create: (context) => IndRecordBloc(),
      child: IndRecordBody(),
    );
  }
}

class IndRecordBody extends StatelessWidget {
  const IndRecordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IndRecordBloc, IndRecordState>(
        builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: AppBar(
            title: const Text("Record Something!"),
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor:
              state is IndRecordRecordingState ? AppColors.negative : null,
          onPressed: () {
            if (state is IndRecordRecordingState) {
              context.read<IndRecordBloc>().add(IndRecordStopEvent());
            } else {
              context.read<IndRecordBloc>().add(IndRecordStartEvent());
            }
          },
          child:
              Icon(state is IndRecordRecordingState ? Icons.stop : Icons.mic),
        ),
        body: state is IndRecordSuccessState
            ? RecordSuccessStateBody(state)
            : const Center(
                child: Text("Record Something!"),
              ),
      );
    });
  }
}


class RecordSuccessStateBody extends StatelessWidget {
  final IndRecordSuccessState state;
  const RecordSuccessStateBody(this.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.padding),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RecordedAudioPlayer(state.filePath),
            const SizedBox(height: AppSizes.padding),
          ],
        ),
      ),
    );
  }
}

