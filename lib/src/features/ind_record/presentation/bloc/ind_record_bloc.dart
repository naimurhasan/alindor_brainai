import 'dart:async';

import 'package:alindor_brainai/src/core/utils/logger.dart';
import 'package:alindor_brainai/src/features/ind_record/data/model/text_analyzed_result/text_analyzed_result.dart';
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
    // testing open ai
    emit(IndRecordSuccessState(
        filePath: '',
        message: "big long message",
        isGeneratingMessage: false,
        isGeneratingAnalysis: true));

    try {
      final result = await repository.analyzePersonality(
          """As I ventured into the heart of the Sundarbans, a sense of wonder and anticipation enveloped me. The dense mangrove forests seemed to breathe with life, each leaf whispering tales of mystery and resilience. Navigating through the labyrinthine waterways, I felt a deep connection to nature's raw beauty.

The air was heavy with the scent of salt and earth, mingled with the occasional roar of a distant tiger. My heart raced with excitement and a touch of apprehension at the thought of encountering these majestic creatures in their natural habitat.

As the boat glided through the murky waters, I marveled at the intricate network of roots that anchored the mangroves firmly in the soft soil. It was a testament to nature's ingenuity and adaptability, a fragile ecosystem thriving in the face of adversity.

Every corner of the Sundarbans seemed to teem with life. Birds soared overhead, their vibrant plumage a splash of color against the verdant backdrop. Occasionally, a playful dolphin would break the surface, a fleeting glimpse of grace in the vast expanse of water.

Despite the challenges posed by climate change and human encroachment, the Sundarbans stood as a symbol of resilience, a sanctuary for both wildlife and the human spirit. As I bid farewell to this enchanting wilderness, I carried with me memories that would last a lifetime, a testament to the enduring power of nature's embrace.
""");
      emit(IndRecordSuccessState(
        message: "big long message",
        textAnalysisResult: result,
        filePath: '',
      ));
    } catch (e, t) {
      emit(const IndRecordErrorState("Error in analyzing speech"));
      Logger.log(
        message: "Error in generating text. ${e.toString()}",
        stackTrace: t,
      );
      return;
    }

    // working code
    /*
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
    */
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
        tinyTitle: "tinyTitle",
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
