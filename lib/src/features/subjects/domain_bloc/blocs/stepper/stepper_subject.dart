import 'package:freezed_annotation/freezed_annotation.dart';

part 'stepper_subject.freezed.dart';

@freezed
sealed class StepperSubjectEvent with _$StepperSubjectEvent {
  const StepperSubjectEvent._();

  const factory StepperSubjectEvent.loadItems() = _$LoadItemsStepperSubjectEvent;

  const factory StepperSubjectEvent.selectItem({
    required String item,
  }) = $SelectItemStepperSubjectEvent;
}

@freezed
sealed class StepperSubjectState with _$StepperSubjectState {
  const StepperSubjectState._();

  const factory StepperSubjectState.idle() = _$IdleStepperSubjectState;

  const factory StepperSubjectState.loadingItems() = _$LoadingItemsStepperSubjectState;

  const factory StepperSubjectState.loadedItems({
    required List<String> items,
  }) = _$LoadedItemStepperSubjectState;

  const factory StepperSubjectState.selectedItem({
    required List<String> items,
    required String selectedItem,
  }) = _$SelectedItemStepperSubjectState;

  const factory StepperSubjectState.error({
    @Default('Произошла ошибка') String? errorMessage,
  }) = _$ErrorStepperSubjectState;
}
