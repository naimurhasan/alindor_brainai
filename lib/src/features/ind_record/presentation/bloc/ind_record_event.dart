part of 'ind_record_bloc.dart';

abstract class IndRecordEvent {
  const IndRecordEvent();
}

class IndRecordStartEvent extends IndRecordEvent {}

class IndRecordStopEvent extends IndRecordEvent {}



