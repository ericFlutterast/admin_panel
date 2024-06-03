part of 'stepper_subject.dart';

@freezed
sealed class StepperSubjectEvent with _$StepperSubjectEvent {
  const StepperSubjectEvent._();

  @With<_ProcessingStateEmitter>()
  @With<_SuccessfulStateEmitter>()
  @With<_ErrorStateEmitter>()
  @With<_IdleStateEmitter>()
  const factory StepperSubjectEvent.nextStep() = _$NextStepStepperSubjectEvent;

  @With<_IdleStateEmitter>()
  const factory StepperSubjectEvent.selectItem() = _$SelectItemStepperSubjectEvent;

  const factory StepperSubjectEvent.addNewItem({
    required String newItem,
  }) = _$AddNewItemStepperSubjectEvent;
}

mixin _ProcessingStateEmitter on StepperSubjectEvent {
  StepperSubjectState processing({
    required final StepperSubjectState state,
    final String? message,
  }) {
    return StepperSubjectState.processing(
      filters: state.filters,
      selectedFilters: state.selectedFilters,
      currentStep: state.currentStep,
      message: message ?? 'Processing',
    );
  }
}

mixin _SuccessfulStateEmitter on StepperSubjectEvent {
  StepperSubjectState successful({
    required StepperSubjectState state,
    required List<String> newFilters,
    required int newStep,
    final String? message,
  }) {
    final updatedFilter = <List<String>>[];
    updatedFilter.addAll(state.filters);
    updatedFilter.add(newFilters);

    return StepperSubjectState.successful(
      filters: updatedFilter,
      selectedFilters: state.selectedFilters,
      currentStep: newStep,
      message: message ?? 'Successful',
    );
  }
}

mixin _ErrorStateEmitter on StepperSubjectEvent {
  StepperSubjectState error({
    required StepperSubjectState state,
    final String? message,
  }) {
    return StepperSubjectState.successful(
      filters: state.filters,
      selectedFilters: state.selectedFilters,
      currentStep: state.currentStep,
      message: message ?? 'Error',
    );
  }
}

mixin _IdleStateEmitter on StepperSubjectEvent {
  StepperSubjectState idle({
    required StepperSubjectState state,
    final String? message,
  }) {
    return StepperSubjectState.successful(
      filters: state.filters,
      selectedFilters: state.selectedFilters,
      currentStep: state.currentStep,
      message: message ?? 'Idle',
    );
  }
}
