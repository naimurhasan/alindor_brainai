import 'dart:async';

import 'package:alindor_brainai/src/core/utils/logger.dart';
import 'package:alindor_brainai/src/features/ind_record/data/model/text_analyzed_result.dart';
import 'package:alindor_brainai/src/features/ind_record/domain/ind_record_repository.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'ind_record_event.dart';
part 'ind_record_state.dart';

class IndRecordBloc extends Bloc<IndRecordEvent, IndRecordState> {
  IndRecordBloc(this.repository) : super(IndRecordInitialState()) {
    on<IndRecordStartEvent>(_recordStart);
    on<IndRecordStopEvent>(_recordStop);
  }

  final IndRecordRepository repository;
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

    emit(IndRecordSuccessState(
        message: "The file is saved at $path",
        filePath: path,
        isGeneratingMessage: true));

    try {
      final text = await repository.speechToText(path);

      emit(IndRecordSuccessState(
        message: text,
        filePath: path,
        isGeneratingMessage: false,
        isGeneratingAnalysis: true,
      ));
    } on DioException catch (e, t) {
      emit(const IndRecordErrorState("Error in generating text"));
      Logger.log(
        message: "Dio Error in speech to text conversion",
        stackTrace: t,
      );
      return;
    } catch (e, t) {
      emit(const IndRecordErrorState("Error in generating text"));
      Logger.log(
        message: "Error in generating text",
        stackTrace: t,
      );
      return;
    }

    await Future.delayed(const Duration(seconds: 2));
    emit((state as IndRecordSuccessState).copyWith(
      isGeneratingAnalysis: false,
      textAnalysisResult: TextAnalysisResult(
        personalityTest: 5.0,
        fullSummary: "fullSummary",
        traits: [],
        reflectingQuotes: [],
      ),
    ));
  }

  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }
}
