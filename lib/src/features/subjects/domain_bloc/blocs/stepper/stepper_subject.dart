import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stepper_subject.freezed.dart';
part 'stepper_subjects_events.dart';

@freezed
sealed class StepperSubjectState with _$StepperSubjectState {
  const StepperSubjectState._();

  const factory StepperSubjectState.idle({
    required List<List<String>> filters,
    required List<Map<String, String>> selectedFilters,
    required int currentStep,
    @Default('Idle') final String message,
  }) = _$IdleStepperSubjectState;

  const factory StepperSubjectState.processing({
    required List<List<String>> filters,
    required List<Map<String, String>> selectedFilters,
    required int currentStep,
    @Default('Processing') final String message,
  }) = _$LoadingItemsStepperSubjectState;

  const factory StepperSubjectState.successful({
    required List<List<String>> filters,
    required List<Map<String, String>> selectedFilters,
    required int currentStep,
    @Default('Successful') final String message,
  }) = _$LoadedItemStepperSubjectState;

  const factory StepperSubjectState.error({
    required List<List<String>> filters,
    required List<Map<String, String>> selectedFilters,
    required int currentStep,
    @Default('Произошла ошибка') String? errorMessage,
  }) = _$ErrorStepperSubjectState;

  static const StepperSubjectState init = StepperSubjectState.idle(
    filters: [],
    selectedFilters: [],
    currentStep: 0,
  );

  bool get hasError => maybeMap<bool>(orElse: () => false, error: (_) => true);

  bool get isProcessing => maybeMap<bool>(orElse: () => false, error: (_) => true);
}

typedef Emit = Emitter<StepperSubjectState>;

class Stepper extends Bloc<StepperSubjectEvent, StepperSubjectState> {
  Stepper() : super(StepperSubjectState.init) {
    on<StepperSubjectEvent>((events, emit) async {
      await events.mapOrNull(
        nextStep: (event) => _nextStep(event, emit),
      );
    });
  }

  Future<void> _nextStep(_$NextStepStepperSubjectEvent event, Emit emit) async {
    try {
      //emit processing

      //emit success
    } on DioException catch (error, _) {
      // emit error
    } on Object catch (error, _) {
      // emit error
    } finally {
      // emit idle
    }
  }
}
