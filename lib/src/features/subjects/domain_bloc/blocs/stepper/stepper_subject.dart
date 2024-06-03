import 'package:admin_panel_for_library/src/features/subjects/data/fake_repo/fake_repo.dart';
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

class StepperSubject extends Bloc<StepperSubjectEvent, StepperSubjectState> {
  StepperSubject({
    required IFakeRepo repository,
  })  : _repository = repository,
        super(StepperSubjectState.init) {
    on<StepperSubjectEvent>((events, emit) async {
      await events.mapOrNull(
        nextStep: (event) => _nextStep(event, emit),
      );
    });
  }

  final IFakeRepo _repository;

  Future<void> _nextStep(_$NextStepStepperSubjectEvent event, Emit emit) async {
    try {
      emit(event.processing(state: state));

      final step = state.currentStep + 1;

      final result = await _repository.getFilters(state.currentStep + 1);

      emit(event.successful(
        state: state,
        newFilters: result,
        newStep: step,
      ));
    } on DioException catch (error, _) {
      emit(event.error(state: state));
    } on Object catch (error, _) {
      emit(event.error(state: state));
    } finally {
      emit(event.idle(state: state));
    }
  }
}
