import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_filter_bloc.freezed.dart';

@freezed
sealed class SelectFiltersEvent with _$SelectFiltersEvent {
  const SelectFiltersEvent._();

  @With<_LoadingEmitter>()
  @With<_SuccessesEmitter>()
  @With<_ErrorEmitter>()
  const factory SelectFiltersEvent.getFilter() = _$SelectFiltersGetFiltersEvent;
}

@freezed
sealed class SelectFiltersState with _$SelectFiltersState {
  const SelectFiltersState._();

  const factory SelectFiltersState.loading() = _$SelectFiltersLoadingState;

  const factory SelectFiltersState.success() = _$SelectFiltersSuccessState;

  const factory SelectFiltersState.error({
    @Default('Произошла не извеcтная ошибка') String? errorMsg,
  }) = _$SelectFiltersErrorState;
}

typedef Emit = Emitter<SelectFiltersState>;

final class SelectFilter extends Bloc<SelectFiltersEvent, SelectFiltersState> {
  SelectFilter() : super(const SelectFiltersState.loading()) {
    on<SelectFiltersEvent>((SelectFiltersEvent event, Emit emit) {
      event.map(
        getFilter: (event) => _getFilter(event, emit),
      );
    });
  }

  Future<void> _getFilter(_$SelectFiltersGetFiltersEvent event, Emit emit) async {
    try {
      emit(event.loading());

      emit(event.success());
    } on DioException catch (error, StackTrace) {
      emit(event.error());
    } catch (error, stackTrace) {
      emit(event.error());
    }
  }
}

//миксины
mixin _LoadingEmitter on SelectFiltersEvent {
  SelectFiltersState loading() => const SelectFiltersState.loading();
}

mixin _SuccessesEmitter on SelectFiltersEvent {
  SelectFiltersState success() => const SelectFiltersState.success();
}

mixin _ErrorEmitter on SelectFiltersEvent {
  SelectFiltersState error({final String? errorMsg}) => SelectFiltersState.error(errorMsg: errorMsg);
}
