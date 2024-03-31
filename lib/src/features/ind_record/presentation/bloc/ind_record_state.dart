part of 'ind_record_bloc.dart';

abstract class IndRecordState {
  const IndRecordState();
}

class IndRecordInitialState extends IndRecordState {}

class IndRecordLoadingState extends IndRecordState {}

class IndRecordRecordingState extends IndRecordState {}

class IndRecordSuccessState extends IndRecordState {
  final String message;
  const IndRecordSuccessState(this.message);
}