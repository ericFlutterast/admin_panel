import 'package:admin_panel_for_library/src/features/subject_management/data/data_sources/subject_data_source_interface.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_subject.freezed.dart';

@freezed
sealed class CreateSubjectEvent with _$CreateSubjectEvent {
  const CreateSubjectEvent._();

  @With<_IdleStateEmitter>()
  @With<_ErrorStateEmitter>()
  @With<_SuccessStateEmitter>()
  @With<_LoadingStateEmitter>()
  const factory CreateSubjectEvent.createSubject() = _$MakeCreateSubjectEvent;
}

@freezed
sealed class CreateSubjectState with _$CreateSubjectState {
  const CreateSubjectState._();

  const factory CreateSubjectState.idle() = _$IdleCreateSubjectState;

  const factory CreateSubjectState.loading() = _$LoadingCreateSubjectState;

  const factory CreateSubjectState.success() = _$SuccessCreateSubjectState;

  const factory CreateSubjectState.error({
    @Default('Неизвестная ошибка') String? errorMsg,
  }) = _$ErrorCreateSubjectState;
}

typedef Emit = Emitter<CreateSubjectState>;

final class CreateSubjectBloc extends Bloc<CreateSubjectEvent, CreateSubjectState> {
  CreateSubjectBloc({
    required ISubjectDataSource subjectRepository,
  })  : _subjectRepository = subjectRepository,
        super(const CreateSubjectState.idle()) {
    on<CreateSubjectEvent>((event, emit) async {
      await event.map(
        createSubject: (event) => _createSubject(event, emit),
      );
    });
  }

  final ISubjectDataSource _subjectRepository;

  Future<void> _createSubject(_$MakeCreateSubjectEvent event, Emit emit) async {
    try {
      emit(event.loading());

      await _subjectRepository.createSubject(title: '');

      emit(event.success());
    } on DioException catch (error, _) {
      emit(event.error(errorMsg: 'Ошибка подключения сети'));
    } on Object catch (error, _) {
      emit(event.error(errorMsg: 'Неудалось распознать ошибку'));
    } finally {
      emit(event.idle());
    }
  }
}

//mixins
mixin _IdleStateEmitter on CreateSubjectEvent {
  CreateSubjectState idle() {
    return const CreateSubjectState.idle();
  }
}

mixin _LoadingStateEmitter on CreateSubjectEvent {
  CreateSubjectState loading() {
    return const CreateSubjectState.loading();
  }
}

mixin _SuccessStateEmitter on CreateSubjectEvent {
  CreateSubjectState success() {
    return const CreateSubjectState.success();
  }
}

mixin _ErrorStateEmitter on CreateSubjectEvent {
  CreateSubjectState error({String? errorMsg}) {
    return CreateSubjectState.error(errorMsg: errorMsg);
  }
}
