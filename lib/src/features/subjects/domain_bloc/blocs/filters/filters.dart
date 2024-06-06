import 'package:admin_panel_for_library/src/features/subjects/data/models/filter_model.dart';
import 'package:admin_panel_for_library/src/features/subjects/data/repositories_interface/filters_repository_interface.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
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
  const factory FiltersEvent.fetchFields({
    required int facultyId,
  }) = _$FetchFieldsEvent;
}

@freezed
sealed class FiltersState with _$FiltersState {
  const FiltersState._();

  const factory FiltersState.idle({
    required List<FacultyModel> faculties,
    required List<FieldModel> fields,
  }) = _$IdleFiltersState;

  const factory FiltersState.loading({
    required List<FacultyModel> faculties,
    required List<FieldModel> fields,
  }) = _$LoadingFacultiesFiltersState;

  const factory FiltersState.success({
    required List<FacultyModel> faculties,
    required List<FieldModel> fields,
  }) = _$SuccessFiltersState;

  const factory FiltersState.error({
    @Default('Неизвестная ошибка') String? errorMsg,
    required List<FacultyModel> faculties,
    required List<FieldModel> fields,
  }) = _$ErrorFiltersState;

  static FiltersState initialState = const FiltersState.idle(faculties: [], fields: []);
}

typedef Emit = Emitter<FiltersState>;

final class FiltersBloc extends Bloc<FiltersEvent, FiltersState> {
  FiltersBloc({
    required IFiltersRepository facultyRepository,
    required IFiltersRepository fieldsRepository,
  })  : _facultyRepository = facultyRepository,
        _fieldsRepository = fieldsRepository,
        super(FiltersState.initialState) {
    on<FiltersEvent>(
      (event, emit) async {
        await event.map(
          fetchFaculties: (event) => _fetchFaculties(event, emit),
          fetchFields: (event) => _fetchFields(event, emit),
        );
      },
      transformer: bloc_concurrency.droppable(),
    );
  }

  final IFiltersRepository _facultyRepository;
  final IFiltersRepository _fieldsRepository;

  Future<void> _fetchFaculties(_$FetchFacultiesEvent event, Emit emit) async {
    try {
      emit(event.loading(state: state));

      final faculties = await _facultyRepository.getAllFilters<List<FacultyModel>>();

      emit(event.success(state: state, faculties: faculties));
    } on DioException catch (error, _) {
      rethrow;
    } on Object catch (error, _) {
      print(error);
      print(_);
    } finally {
      emit(event.idle(faculties: state.faculties, fields: state.fields));
    }
  }

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
      emit(event.idle(faculties: state.faculties, fields: state.fields));
    }
  }
}

//mixins
mixin _IdleStateEmitter on FiltersEvent {
  FiltersState idle({
    required final List<FacultyModel> faculties,
    required final List<FieldModel> fields,
  }) {
    return FiltersState.idle(
      faculties: faculties,
      fields: fields,
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
    List<FacultyModel>? faculties,
    List<FieldModel>? fields,
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
