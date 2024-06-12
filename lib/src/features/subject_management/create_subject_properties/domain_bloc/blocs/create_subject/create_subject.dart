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
  const factory CreateSubjectEvent.createSubject({
    required final String title,
    required final int fieldId,
    required final int courseId,
  }) = _$MakeCreateSubjectEvent;
}

@freezed
sealed class CreateSubjectState with _$CreateSubjectState {
  const CreateSubjectState._();

  const factory CreateSubjectState.idle() = _$IdleCreateSubjectState;

  const factory CreateSubjectState.loading() = _$LoadingCreateSubjectState;

  const factory CreateSubjectState.success({
    required final int subjectId,
  }) = _$SuccessCreateSubjectState;

  const factory CreateSubjectState.error({
    @Default('Неизвестная ошибка') String? errorMsg,
  }) = _$ErrorCreateSubjectState;
}

typedef Emit = Emitter<CreateSubjectState>;

final class CreateSubjectBloc extends Bloc<CreateSubjectEvent, CreateSubjectState> {
  CreateSubjectBloc({
    required ISubjectController subjectService,
    required IManagementCourseLink managementCourseLink,
    required IManagementFieldLink managementFieldLink,
  })  : _subjectService = subjectService,
        _managementFieldLink = managementFieldLink,
        _managementCourseLink = managementCourseLink,
        super(const CreateSubjectState.idle()) {
    on<CreateSubjectEvent>((event, emit) async {
      await event.map(
        createSubject: (event) => _createSubject(event, emit),
      );
    });
  }

  final ISubjectController _subjectService;
  final IManagementCourseLink _managementCourseLink;
  final IManagementFieldLink _managementFieldLink;

  Future<void> _createSubject(_$MakeCreateSubjectEvent event, Emit emit) async {
    try {
      emit(event.loading());

      final subjectId = await _subjectService.createSubject(title: event.title);

      await Future.wait([
        _managementCourseLink.linkCourse(courseId: event.courseId, subjectId: subjectId),
        _managementFieldLink.linkField(fieldId: event.fieldId, subjectId: subjectId),
      ]);

      emit(event.success(subjectId: subjectId));
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
  CreateSubjectState success({required subjectId}) {
    return CreateSubjectState.success(subjectId: subjectId);
  }
}

mixin _ErrorStateEmitter on CreateSubjectEvent {
  CreateSubjectState error({String? errorMsg}) {
    return CreateSubjectState.error(errorMsg: errorMsg);
  }
}
