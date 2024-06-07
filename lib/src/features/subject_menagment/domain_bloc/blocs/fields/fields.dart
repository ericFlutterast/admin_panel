import 'package:admin_panel_for_library/src/features/subject_menagment/data/models/filter_model.dart';
import 'package:admin_panel_for_library/src/features/subject_menagment/data/repositories_interface/filters_repository_interface.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fields.freezed.dart';

@freezed
sealed class FieldsEvent with _$FieldsEvent {
  const FieldsEvent._();

  @With<_ErrorStateEmitter>()
  @With<_SuccessStateEmitter>()
  @With<_LoadingStateEmitter>()
  @With<_IdleStateEmitter>()
  const factory FieldsEvent.fetchFields({
    required int facultyId,
  }) = _$FetchFieldsEvent;
}

@freezed
sealed class FieldsState with _$FieldsState {
  const FieldsState._();

  const factory FieldsState.idle({
    required List<FieldModel> fields,
  }) = _$IdleFieldsState;

  const factory FieldsState.loading({
    required List<FieldModel> fields,
  }) = _$LoadingFieldsState;

  const factory FieldsState.success({
    required List<FieldModel> fields,
  }) = _$SuccessFieldsState;

  const factory FieldsState.error({
    @Default('Неизвестная ошибка') String? errorMsg,
    required List<FieldModel> fields,
  }) = _$ErrorFieldsState;

  static FieldsState initialState = const FieldsState.idle(fields: []);
}

typedef Emit = Emitter<FieldsState>;

final class FieldsBloc extends Bloc<FieldsEvent, FieldsState> {
  FieldsBloc({
    required IFiltersRepository fieldsRepository,
  })  : _fieldsRepository = fieldsRepository,
        super(FieldsState.initialState) {
    on<FieldsEvent>(
      (event, emit) async {
        await event.map(
          fetchFields: (event) => _fetchFields(event, emit),
        );
      },
      transformer: bloc_concurrency.droppable(),
    );
  }

  final IFiltersRepository _fieldsRepository;

  Future<void> _fetchFields(_$FetchFieldsEvent event, Emit emit) async {
    try {
      emit(event.loading(state: state));

      final fields = await _fieldsRepository.getAllFilters<List<FieldModel>>(id: event.facultyId);

      emit(event.success(state: state, fields: fields));
    } on DioException catch (error, _) {
      rethrow;
    } on Object catch (error, _) {
      rethrow;
    } finally {
      emit(event.idle(fields: state.fields));
    }
  }
}

//mixins
mixin _IdleStateEmitter on FieldsEvent {
  FieldsState idle({
    required final List<FieldModel> fields,
  }) {
    return FieldsState.idle(fields: fields);
  }
}

mixin _LoadingStateEmitter on FieldsEvent {
  FieldsState loading({required FieldsState state}) {
    return FieldsState.loading(fields: state.fields);
  }
}

mixin _SuccessStateEmitter on FieldsEvent {
  FieldsState success({
    required FieldsState state,
    List<FieldModel>? fields,
  }) {
    return FieldsState.success(
      fields: fields ?? state.fields,
    );
  }
}

mixin _ErrorStateEmitter on FieldsEvent {
  FieldsState error({
    String? errorMsg,
    required FieldsState state,
  }) {
    return FieldsState.error(
      errorMsg: errorMsg ?? errorMsg,
      fields: state.fields,
    );
  }
}
