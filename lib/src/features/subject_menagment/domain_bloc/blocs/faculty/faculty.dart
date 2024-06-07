import 'package:admin_panel_for_library/src/features/subject_menagment/data/models/filter_model.dart';
import 'package:admin_panel_for_library/src/features/subject_menagment/data/repositories_interface/filters_repository_interface.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faculty.freezed.dart';

@freezed
sealed class FacultyEvent with _$FacultyEvent {
  const FacultyEvent._();

  @With<_ErrorStateEmitter>()
  @With<_SuccessStateEmitter>()
  @With<_LoadingStateEmitter>()
  @With<_IdleStateEmitter>()
  const factory FacultyEvent.fetchFaculties() = _$FetchFacultyEvent;
}

@freezed
sealed class FacultyState with _$FacultyState {
  const FacultyState._();

  const factory FacultyState.idle({
    required List<FacultyModel> faculties,
  }) = _$IdleFacultyState;

  const factory FacultyState.loading({
    required List<FacultyModel> faculties,
  }) = _$LoadingFacultyState;

  const factory FacultyState.success({
    required List<FacultyModel> faculties,
  }) = _$SuccessFacultyState;

  const factory FacultyState.error({
    @Default('Неизвестная ошибка') String? errorMsg,
    required List<FacultyModel> faculties,
  }) = _$ErrorFacultyState;

  static FacultyState initialState = const FacultyState.idle(faculties: []);
}

typedef Emit = Emitter<FacultyState>;

final class FacultyBloc extends Bloc<FacultyEvent, FacultyState> {
  FacultyBloc({
    required IFiltersRepository facultyRepository,
  })  : _facultyRepository = facultyRepository,
        super(FacultyState.initialState) {
    on<FacultyEvent>(
      (event, emit) async {
        await event.map(
          fetchFaculties: (event) => _fetchFaculties(event, emit),
        );
      },
      transformer: bloc_concurrency.droppable(),
    );
  }

  final IFiltersRepository _facultyRepository;

  Future<void> _fetchFaculties(_$FetchFacultyEvent event, Emit emit) async {
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
      emit(event.idle(faculties: state.faculties));
    }
  }
}

//mixins
mixin _IdleStateEmitter on FacultyEvent {
  FacultyState idle({
    required final List<FacultyModel> faculties,
  }) {
    return FacultyState.idle(
      faculties: faculties,
    );
  }
}

mixin _LoadingStateEmitter on FacultyEvent {
  FacultyState loading({required FacultyState state}) {
    return FacultyState.loading(
      faculties: state.faculties,
    );
  }
}

mixin _SuccessStateEmitter on FacultyEvent {
  FacultyState success({
    required FacultyState state,
    List<FacultyModel>? faculties,
  }) {
    return FacultyState.success(
      faculties: faculties ?? state.faculties,
    );
  }
}

mixin _ErrorStateEmitter on FacultyEvent {
  FacultyState error({
    String? errorMsg,
    required FacultyState state,
  }) {
    return FacultyState.error(
      errorMsg: errorMsg ?? errorMsg,
      faculties: state.faculties,
    );
  }
}
