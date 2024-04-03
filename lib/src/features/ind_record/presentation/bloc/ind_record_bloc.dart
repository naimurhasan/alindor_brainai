import 'dart:async';

import 'package:alindor_brainai/src/core/utils/logger.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'ind_record_event.dart';
part 'ind_record_state.dart';

class IndRecordBloc extends Bloc<IndRecordEvent, IndRecordState> {
  IndRecordBloc() : super(IndRecordInitialState()) {
    on<IndRecordStartEvent>(_recordStart);
    on<IndRecordStopEvent>(_recordStop);
  }

  late RecorderController controller;

  FutureOr<void> _recordStart(
      IndRecordStartEvent event, Emitter<IndRecordState> emit) async {
    controller = RecorderController();
    final hasPermission = await controller.checkPermission();
    if (!hasPermission) {
      emit(IndRecordErrorState("Permission Denied"));
      Logger.log(message: "Permission Denied");
      return;
    }
    emit(IndRecordRecordingState());
    await controller.record();
    Logger.log(message: "IND RECORD START");
  }

  FutureOr<void> _recordStop(
      IndRecordStopEvent event, Emitter<IndRecordState> emit) async {
    final path = await controller.stop();

    if (path == null) {
      emit(const IndRecordErrorState("Error in saving file"));
      Logger.log(
        message: "Error in saving file",
      );
      return;
    }

    Logger.log(message: "IND RECORD STOP $path");
    emit(IndRecordSuccessState(
      message: "The file is saved at $path",
      filePath: path,
    ));
  }

  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }
}
