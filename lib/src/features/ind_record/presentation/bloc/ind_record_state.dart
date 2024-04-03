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
  final bool isGeneratingText;
  final String text;
  const IndRecordSuccessState({
    required this.message,
    required this.filePath,
    this.isGeneratingText = false,
    this.text = "",
  });
}

class IndRecordErrorState extends IndRecordState {
  final String message;
  const IndRecordErrorState(this.message);
}
