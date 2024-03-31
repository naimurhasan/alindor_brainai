import 'dart:async';

import 'package:alindor_brainai/src/core/utils/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'ind_record_event.dart';
part 'ind_record_state.dart';

class IndRecordBloc extends Bloc<IndRecordEvent, IndRecordState> {
  IndRecordBloc() : super(IndRecordInitialState()) {
    on<IndRecordStartEvent>(_recordStart);
    on<IndRecordStopEvent>(_recordStop);
  }

  FutureOr<void> _recordStart(
      IndRecordStartEvent event, Emitter<IndRecordState> emit) {
        Logger.log(message: "IND RECORD START");
      }

  FutureOr<void> _recordStop(
      IndRecordStopEvent event, Emitter<IndRecordState> emit) {}
}
