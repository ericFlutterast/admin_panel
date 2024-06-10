// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateSubjectEvent {
  SubjectModel get subjectModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubjectModel subjectModel) createSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubjectModel subjectModel)? createSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubjectModel subjectModel)? createSubject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MakeCreateSubjectEvent value) createSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$MakeCreateSubjectEvent value)? createSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MakeCreateSubjectEvent value)? createSubject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateSubjectEventCopyWith<CreateSubjectEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSubjectEventCopyWith<$Res> {
  factory $CreateSubjectEventCopyWith(
          CreateSubjectEvent value, $Res Function(CreateSubjectEvent) then) =
      _$CreateSubjectEventCopyWithImpl<$Res, CreateSubjectEvent>;
  @useResult
  $Res call({SubjectModel subjectModel});
}

/// @nodoc
class _$CreateSubjectEventCopyWithImpl<$Res, $Val extends CreateSubjectEvent>
    implements $CreateSubjectEventCopyWith<$Res> {
  _$CreateSubjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectModel = null,
  }) {
    return _then(_value.copyWith(
      subjectModel: null == subjectModel
          ? _value.subjectModel
          : subjectModel // ignore: cast_nullable_to_non_nullable
              as SubjectModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$MakeCreateSubjectEventImplCopyWith<$Res>
    implements $CreateSubjectEventCopyWith<$Res> {
  factory _$$$MakeCreateSubjectEventImplCopyWith(
          _$$MakeCreateSubjectEventImpl value,
          $Res Function(_$$MakeCreateSubjectEventImpl) then) =
      __$$$MakeCreateSubjectEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SubjectModel subjectModel});
}

/// @nodoc
class __$$$MakeCreateSubjectEventImplCopyWithImpl<$Res>
    extends _$CreateSubjectEventCopyWithImpl<$Res,
        _$$MakeCreateSubjectEventImpl>
    implements _$$$MakeCreateSubjectEventImplCopyWith<$Res> {
  __$$$MakeCreateSubjectEventImplCopyWithImpl(
      _$$MakeCreateSubjectEventImpl _value,
      $Res Function(_$$MakeCreateSubjectEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectModel = null,
  }) {
    return _then(_$$MakeCreateSubjectEventImpl(
      subjectModel: null == subjectModel
          ? _value.subjectModel
          : subjectModel // ignore: cast_nullable_to_non_nullable
              as SubjectModel,
    ));
  }
}

/// @nodoc

class _$$MakeCreateSubjectEventImpl extends _$MakeCreateSubjectEvent
    with
        _IdleStateEmitter,
        _ErrorStateEmitter,
        _SuccessStateEmitter,
        _LoadingStateEmitter {
  const _$$MakeCreateSubjectEventImpl({required this.subjectModel}) : super._();

  @override
  final SubjectModel subjectModel;

  @override
  String toString() {
    return 'CreateSubjectEvent.createSubject(subjectModel: $subjectModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$MakeCreateSubjectEventImpl &&
            (identical(other.subjectModel, subjectModel) ||
                other.subjectModel == subjectModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subjectModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$MakeCreateSubjectEventImplCopyWith<_$$MakeCreateSubjectEventImpl>
      get copyWith => __$$$MakeCreateSubjectEventImplCopyWithImpl<
          _$$MakeCreateSubjectEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubjectModel subjectModel) createSubject,
  }) {
    return createSubject(subjectModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubjectModel subjectModel)? createSubject,
  }) {
    return createSubject?.call(subjectModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubjectModel subjectModel)? createSubject,
    required TResult orElse(),
  }) {
    if (createSubject != null) {
      return createSubject(subjectModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MakeCreateSubjectEvent value) createSubject,
  }) {
    return createSubject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$MakeCreateSubjectEvent value)? createSubject,
  }) {
    return createSubject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MakeCreateSubjectEvent value)? createSubject,
    required TResult orElse(),
  }) {
    if (createSubject != null) {
      return createSubject(this);
    }
    return orElse();
  }
}

abstract class _$MakeCreateSubjectEvent extends CreateSubjectEvent
    implements
        _IdleStateEmitter,
        _ErrorStateEmitter,
        _SuccessStateEmitter,
        _LoadingStateEmitter {
  const factory _$MakeCreateSubjectEvent(
          {required final SubjectModel subjectModel}) =
      _$$MakeCreateSubjectEventImpl;
  const _$MakeCreateSubjectEvent._() : super._();

  @override
  SubjectModel get subjectModel;
  @override
  @JsonKey(ignore: true)
  _$$$MakeCreateSubjectEventImplCopyWith<_$$MakeCreateSubjectEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateSubjectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(int subjectId) success,
    required TResult Function(String? errorMsg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(int subjectId)? success,
    TResult? Function(String? errorMsg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(int subjectId)? success,
    TResult Function(String? errorMsg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleCreateSubjectState value) idle,
    required TResult Function(_$LoadingCreateSubjectState value) loading,
    required TResult Function(_$SuccessCreateSubjectState value) success,
    required TResult Function(_$ErrorCreateSubjectState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleCreateSubjectState value)? idle,
    TResult? Function(_$LoadingCreateSubjectState value)? loading,
    TResult? Function(_$SuccessCreateSubjectState value)? success,
    TResult? Function(_$ErrorCreateSubjectState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleCreateSubjectState value)? idle,
    TResult Function(_$LoadingCreateSubjectState value)? loading,
    TResult Function(_$SuccessCreateSubjectState value)? success,
    TResult Function(_$ErrorCreateSubjectState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSubjectStateCopyWith<$Res> {
  factory $CreateSubjectStateCopyWith(
          CreateSubjectState value, $Res Function(CreateSubjectState) then) =
      _$CreateSubjectStateCopyWithImpl<$Res, CreateSubjectState>;
}

/// @nodoc
class _$CreateSubjectStateCopyWithImpl<$Res, $Val extends CreateSubjectState>
    implements $CreateSubjectStateCopyWith<$Res> {
  _$CreateSubjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$IdleCreateSubjectStateImplCopyWith<$Res> {
  factory _$$$IdleCreateSubjectStateImplCopyWith(
          _$$IdleCreateSubjectStateImpl value,
          $Res Function(_$$IdleCreateSubjectStateImpl) then) =
      __$$$IdleCreateSubjectStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$IdleCreateSubjectStateImplCopyWithImpl<$Res>
    extends _$CreateSubjectStateCopyWithImpl<$Res,
        _$$IdleCreateSubjectStateImpl>
    implements _$$$IdleCreateSubjectStateImplCopyWith<$Res> {
  __$$$IdleCreateSubjectStateImplCopyWithImpl(
      _$$IdleCreateSubjectStateImpl _value,
      $Res Function(_$$IdleCreateSubjectStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$IdleCreateSubjectStateImpl extends _$IdleCreateSubjectState {
  const _$$IdleCreateSubjectStateImpl() : super._();

  @override
  String toString() {
    return 'CreateSubjectState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$IdleCreateSubjectStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(int subjectId) success,
    required TResult Function(String? errorMsg) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(int subjectId)? success,
    TResult? Function(String? errorMsg)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(int subjectId)? success,
    TResult Function(String? errorMsg)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleCreateSubjectState value) idle,
    required TResult Function(_$LoadingCreateSubjectState value) loading,
    required TResult Function(_$SuccessCreateSubjectState value) success,
    required TResult Function(_$ErrorCreateSubjectState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleCreateSubjectState value)? idle,
    TResult? Function(_$LoadingCreateSubjectState value)? loading,
    TResult? Function(_$SuccessCreateSubjectState value)? success,
    TResult? Function(_$ErrorCreateSubjectState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleCreateSubjectState value)? idle,
    TResult Function(_$LoadingCreateSubjectState value)? loading,
    TResult Function(_$SuccessCreateSubjectState value)? success,
    TResult Function(_$ErrorCreateSubjectState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _$IdleCreateSubjectState extends CreateSubjectState {
  const factory _$IdleCreateSubjectState() = _$$IdleCreateSubjectStateImpl;
  const _$IdleCreateSubjectState._() : super._();
}

/// @nodoc
abstract class _$$$LoadingCreateSubjectStateImplCopyWith<$Res> {
  factory _$$$LoadingCreateSubjectStateImplCopyWith(
          _$$LoadingCreateSubjectStateImpl value,
          $Res Function(_$$LoadingCreateSubjectStateImpl) then) =
      __$$$LoadingCreateSubjectStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$LoadingCreateSubjectStateImplCopyWithImpl<$Res>
    extends _$CreateSubjectStateCopyWithImpl<$Res,
        _$$LoadingCreateSubjectStateImpl>
    implements _$$$LoadingCreateSubjectStateImplCopyWith<$Res> {
  __$$$LoadingCreateSubjectStateImplCopyWithImpl(
      _$$LoadingCreateSubjectStateImpl _value,
      $Res Function(_$$LoadingCreateSubjectStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$LoadingCreateSubjectStateImpl extends _$LoadingCreateSubjectState {
  const _$$LoadingCreateSubjectStateImpl() : super._();

  @override
  String toString() {
    return 'CreateSubjectState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$LoadingCreateSubjectStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(int subjectId) success,
    required TResult Function(String? errorMsg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(int subjectId)? success,
    TResult? Function(String? errorMsg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(int subjectId)? success,
    TResult Function(String? errorMsg)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleCreateSubjectState value) idle,
    required TResult Function(_$LoadingCreateSubjectState value) loading,
    required TResult Function(_$SuccessCreateSubjectState value) success,
    required TResult Function(_$ErrorCreateSubjectState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleCreateSubjectState value)? idle,
    TResult? Function(_$LoadingCreateSubjectState value)? loading,
    TResult? Function(_$SuccessCreateSubjectState value)? success,
    TResult? Function(_$ErrorCreateSubjectState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleCreateSubjectState value)? idle,
    TResult Function(_$LoadingCreateSubjectState value)? loading,
    TResult Function(_$SuccessCreateSubjectState value)? success,
    TResult Function(_$ErrorCreateSubjectState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$LoadingCreateSubjectState extends CreateSubjectState {
  const factory _$LoadingCreateSubjectState() =
      _$$LoadingCreateSubjectStateImpl;
  const _$LoadingCreateSubjectState._() : super._();
}

/// @nodoc
abstract class _$$$SuccessCreateSubjectStateImplCopyWith<$Res> {
  factory _$$$SuccessCreateSubjectStateImplCopyWith(
          _$$SuccessCreateSubjectStateImpl value,
          $Res Function(_$$SuccessCreateSubjectStateImpl) then) =
      __$$$SuccessCreateSubjectStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int subjectId});
}

/// @nodoc
class __$$$SuccessCreateSubjectStateImplCopyWithImpl<$Res>
    extends _$CreateSubjectStateCopyWithImpl<$Res,
        _$$SuccessCreateSubjectStateImpl>
    implements _$$$SuccessCreateSubjectStateImplCopyWith<$Res> {
  __$$$SuccessCreateSubjectStateImplCopyWithImpl(
      _$$SuccessCreateSubjectStateImpl _value,
      $Res Function(_$$SuccessCreateSubjectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
  }) {
    return _then(_$$SuccessCreateSubjectStateImpl(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$$SuccessCreateSubjectStateImpl extends _$SuccessCreateSubjectState {
  const _$$SuccessCreateSubjectStateImpl({required this.subjectId}) : super._();

  @override
  final int subjectId;

  @override
  String toString() {
    return 'CreateSubjectState.success(subjectId: $subjectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$SuccessCreateSubjectStateImpl &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subjectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$SuccessCreateSubjectStateImplCopyWith<_$$SuccessCreateSubjectStateImpl>
      get copyWith => __$$$SuccessCreateSubjectStateImplCopyWithImpl<
          _$$SuccessCreateSubjectStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(int subjectId) success,
    required TResult Function(String? errorMsg) error,
  }) {
    return success(subjectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(int subjectId)? success,
    TResult? Function(String? errorMsg)? error,
  }) {
    return success?.call(subjectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(int subjectId)? success,
    TResult Function(String? errorMsg)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(subjectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleCreateSubjectState value) idle,
    required TResult Function(_$LoadingCreateSubjectState value) loading,
    required TResult Function(_$SuccessCreateSubjectState value) success,
    required TResult Function(_$ErrorCreateSubjectState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleCreateSubjectState value)? idle,
    TResult? Function(_$LoadingCreateSubjectState value)? loading,
    TResult? Function(_$SuccessCreateSubjectState value)? success,
    TResult? Function(_$ErrorCreateSubjectState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleCreateSubjectState value)? idle,
    TResult Function(_$LoadingCreateSubjectState value)? loading,
    TResult Function(_$SuccessCreateSubjectState value)? success,
    TResult Function(_$ErrorCreateSubjectState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _$SuccessCreateSubjectState extends CreateSubjectState {
  const factory _$SuccessCreateSubjectState({required final int subjectId}) =
      _$$SuccessCreateSubjectStateImpl;
  const _$SuccessCreateSubjectState._() : super._();

  int get subjectId;
  @JsonKey(ignore: true)
  _$$$SuccessCreateSubjectStateImplCopyWith<_$$SuccessCreateSubjectStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$ErrorCreateSubjectStateImplCopyWith<$Res> {
  factory _$$$ErrorCreateSubjectStateImplCopyWith(
          _$$ErrorCreateSubjectStateImpl value,
          $Res Function(_$$ErrorCreateSubjectStateImpl) then) =
      __$$$ErrorCreateSubjectStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMsg});
}

/// @nodoc
class __$$$ErrorCreateSubjectStateImplCopyWithImpl<$Res>
    extends _$CreateSubjectStateCopyWithImpl<$Res,
        _$$ErrorCreateSubjectStateImpl>
    implements _$$$ErrorCreateSubjectStateImplCopyWith<$Res> {
  __$$$ErrorCreateSubjectStateImplCopyWithImpl(
      _$$ErrorCreateSubjectStateImpl _value,
      $Res Function(_$$ErrorCreateSubjectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = freezed,
  }) {
    return _then(_$$ErrorCreateSubjectStateImpl(
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$$ErrorCreateSubjectStateImpl extends _$ErrorCreateSubjectState {
  const _$$ErrorCreateSubjectStateImpl({this.errorMsg = 'Неизвестная ошибка'})
      : super._();

  @override
  @JsonKey()
  final String? errorMsg;

  @override
  String toString() {
    return 'CreateSubjectState.error(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ErrorCreateSubjectStateImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ErrorCreateSubjectStateImplCopyWith<_$$ErrorCreateSubjectStateImpl>
      get copyWith => __$$$ErrorCreateSubjectStateImplCopyWithImpl<
          _$$ErrorCreateSubjectStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(int subjectId) success,
    required TResult Function(String? errorMsg) error,
  }) {
    return error(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(int subjectId)? success,
    TResult? Function(String? errorMsg)? error,
  }) {
    return error?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(int subjectId)? success,
    TResult Function(String? errorMsg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleCreateSubjectState value) idle,
    required TResult Function(_$LoadingCreateSubjectState value) loading,
    required TResult Function(_$SuccessCreateSubjectState value) success,
    required TResult Function(_$ErrorCreateSubjectState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleCreateSubjectState value)? idle,
    TResult? Function(_$LoadingCreateSubjectState value)? loading,
    TResult? Function(_$SuccessCreateSubjectState value)? success,
    TResult? Function(_$ErrorCreateSubjectState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleCreateSubjectState value)? idle,
    TResult Function(_$LoadingCreateSubjectState value)? loading,
    TResult Function(_$SuccessCreateSubjectState value)? success,
    TResult Function(_$ErrorCreateSubjectState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$ErrorCreateSubjectState extends CreateSubjectState {
  const factory _$ErrorCreateSubjectState({final String? errorMsg}) =
      _$$ErrorCreateSubjectStateImpl;
  const _$ErrorCreateSubjectState._() : super._();

  String? get errorMsg;
  @JsonKey(ignore: true)
  _$$$ErrorCreateSubjectStateImplCopyWith<_$$ErrorCreateSubjectStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
