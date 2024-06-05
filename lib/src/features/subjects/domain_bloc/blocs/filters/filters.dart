import 'package:admin_panel_for_library/src/features/subjects/data/models/filter_model.dart';
import 'package:admin_panel_for_library/src/features/subjects/data/repositories_interface/filters_repository_interface.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters.freezed.dart';

@freezed
sealed class FiltersEvent with _$FiltersEvent {
  const FiltersEvent._();

  @With<_ErrorStateEmitter>()
  @With<_SuccessStateEmitter>()
  @With<_LoadingStateEmitter>()
  @With<_IdleStateEmitter>()
  const factory FiltersEvent.fetchFaculties() = _$FetchFacultiesEvent;

  @With<_ErrorStateEmitter>()
  @With<_SuccessStateEmitter>()
  @With<_LoadingStateEmitter>()
  @With<_IdleStateEmitter>()
  const factory FiltersEvent.fetchFields() = _$FetchFieldsEvent;
}

@freezed
sealed class FiltersState with _$FiltersState {
  const FiltersState._();

  const factory FiltersState.idle({
    required List<FilterModel> faculties,
    required List<FilterModel> fields,
  }) = _$IdleFiltersState;

  const factory FiltersState.loading({
    required List<FilterModel> faculties,
    required List<FilterModel> fields,
  }) = _$LoadingFacultiesFiltersState;

  const factory FiltersState.success({
    required List<FilterModel> faculties,
    required List<FilterModel> fields,
  }) = _$SuccessFiltersState;

  const factory FiltersState.error({
    @Default('Неизвестная ошибка') String? errorMsg,
    required List<FilterModel> faculties,
    required List<FilterModel> fields,
  }) = _$ErrorFiltersState;

  static FiltersState initialState = const FiltersState.idle(faculties: [], fields: []);
}

typedef Emit = Emitter<FiltersState>;

final class FiltersBloc extends Bloc<FiltersEvent, FiltersState> {
  FiltersBloc({
    required IFiltersLifecycleRepository facultyRepository,
    required IFiltersLifecycleRepository fieldsRepository,
  })  : _facultyRepository = facultyRepository,
        _fieldsRepository = fieldsRepository,
        super(FiltersState.initialState) {
    on<FiltersEvent>((event, emit) {
      event.map(
        fetchFaculties: (event) => _fetchFaculties(event, emit),
        fetchFields: (event) => _fetchFields(event, emit),
      );
    });
  }

  final IFiltersLifecycleRepository _facultyRepository;
  final IFiltersLifecycleRepository _fieldsRepository;

  Future<void> _fetchFaculties(_$FetchFacultiesEvent event, Emit emit) async {
    try {
      emit(event.loading(state: state));

      final faculties = await _facultyRepository.getAllFilters();

      emit(event.success(state: state, faculties: faculties));
    } on DioException catch (error, _) {
      rethrow;
    } on Object catch (error, _) {
      rethrow;
    }
  }

  Future<void> _fetchFields(_$FetchFieldsEvent event, Emit emit) async {
    try {
      emit(event.loading(state: state));

      final fields = await _fieldsRepository.getAllFilters();

      emit(event.success(state: state, fields: fields));
    } on DioException catch (error, _) {
      rethrow;
    } on Object catch (error, _) {
      rethrow;
    }
  }
}

//mixins
mixin _IdleStateEmitter on FiltersEvent {
  FiltersState idle({
    required final List<FilterModel> faculties,
    required final List<FilterModel> fields,
  }) {
    return FiltersState.idle(
      faculties: faculties,
      fields: faculties,
    );
  }
}

mixin _LoadingStateEmitter on FiltersEvent {
  FiltersState loading({required FiltersState state}) {
    return FiltersState.loading(
      fields: state.fields,
      faculties: state.faculties,
    );
  }
}

mixin _SuccessStateEmitter on FiltersEvent {
  FiltersState success({
    required FiltersState state,
    List<FilterModel>? faculties,
    List<FilterModel>? fields,
  }) {
    return FiltersState.success(
      faculties: faculties ?? state.faculties,
      fields: fields ?? state.fields,
    );
  }
}

mixin _ErrorStateEmitter on FiltersEvent {
  FiltersState error({
    String? errorMsg,
    required FiltersState state,
  }) {
    return FiltersState.error(
      errorMsg: errorMsg ?? errorMsg,
      faculties: state.faculties,
      fields: state.fields,
    );
  }
}
