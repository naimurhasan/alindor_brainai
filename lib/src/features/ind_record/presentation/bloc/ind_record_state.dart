part of 'ind_record_bloc.dart';

abstract class IndRecordState {
  const IndRecordState();
}

class IndRecordInitialState extends IndRecordState {}

class IndRecordLoadingState extends IndRecordState {}

class IndRecordRecordingState extends IndRecordState {}

class IndRecordSuccessState extends IndRecordState {
  final String filePath;
  final String message;
  const IndRecordSuccessState({
    required this.message,
    required this.filePath,
  });
}

class IndRecordErrorState extends IndRecordState {
  final String message;
  const IndRecordErrorState(this.message);
}
