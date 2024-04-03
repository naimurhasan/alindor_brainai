part of 'ind_record_bloc.dart';

abstract class IndRecordState {
  const IndRecordState();
}

class IndRecordInitialState extends IndRecordState {}

class IndRecordLoadingState extends IndRecordState {}

class IndRecordRecordingState extends IndRecordState {}

class IndRecordErrorState extends IndRecordState {
  final String message;
  const IndRecordErrorState(this.message);
}

class IndRecordSuccessState extends IndRecordState {
  final String filePath;
  final String message;
  final bool isGeneratingMessage;
  final bool isGeneratingAnalysis;
  final TextAnalysisResult? textAnalysisResult;
  const IndRecordSuccessState({
    this.message = "",
    required this.filePath,
    this.isGeneratingMessage = false,
    this.isGeneratingAnalysis = false,
    this.textAnalysisResult,
  });

  IndRecordSuccessState copyWith({
    String? filePath,
    String? message,
    bool? isGeneratingMessage,
    bool? isGeneratingAnalysis,
    TextAnalysisResult? textAnalysisResult,
  }) {
    return IndRecordSuccessState(
      filePath: filePath ?? this.filePath,
      isGeneratingMessage: isGeneratingMessage ?? this.isGeneratingMessage,
      message: message ?? this.message,
      isGeneratingAnalysis: isGeneratingAnalysis ?? this.isGeneratingAnalysis,
      textAnalysisResult: textAnalysisResult ?? this.textAnalysisResult,
    );
  }
}
