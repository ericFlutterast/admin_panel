// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faculty.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FacultyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFaculties,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFaculties,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFaculties,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$FetchFacultyEvent value) fetchFaculties,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$FetchFacultyEvent value)? fetchFaculties,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FetchFacultyEvent value)? fetchFaculties,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacultyEventCopyWith<$Res> {
  factory $FacultyEventCopyWith(
          FacultyEvent value, $Res Function(FacultyEvent) then) =
      _$FacultyEventCopyWithImpl<$Res, FacultyEvent>;
}

/// @nodoc
class _$FacultyEventCopyWithImpl<$Res, $Val extends FacultyEvent>
    implements $FacultyEventCopyWith<$Res> {
  _$FacultyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$FetchFacultyEventImplCopyWith<$Res> {
  factory _$$$FetchFacultyEventImplCopyWith(_$$FetchFacultyEventImpl value,
          $Res Function(_$$FetchFacultyEventImpl) then) =
      __$$$FetchFacultyEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$FetchFacultyEventImplCopyWithImpl<$Res>
    extends _$FacultyEventCopyWithImpl<$Res, _$$FetchFacultyEventImpl>
    implements _$$$FetchFacultyEventImplCopyWith<$Res> {
  __$$$FetchFacultyEventImplCopyWithImpl(_$$FetchFacultyEventImpl _value,
      $Res Function(_$$FetchFacultyEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$FetchFacultyEventImpl extends _$FetchFacultyEvent
    with
        _ErrorStateEmitter,
        _SuccessStateEmitter,
        _LoadingStateEmitter,
        _IdleStateEmitter {
  const _$$FetchFacultyEventImpl() : super._();

  @override
  String toString() {
    return 'FacultyEvent.fetchFaculties()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$$FetchFacultyEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFaculties,
  }) {
    return fetchFaculties();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFaculties,
  }) {
    return fetchFaculties?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFaculties,
    required TResult orElse(),
  }) {
    if (fetchFaculties != null) {
      return fetchFaculties();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$FetchFacultyEvent value) fetchFaculties,
  }) {
    return fetchFaculties(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$FetchFacultyEvent value)? fetchFaculties,
  }) {
    return fetchFaculties?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FetchFacultyEvent value)? fetchFaculties,
    required TResult orElse(),
  }) {
    if (fetchFaculties != null) {
      return fetchFaculties(this);
    }
    return orElse();
  }
}

abstract class _$FetchFacultyEvent extends FacultyEvent
    implements
        _ErrorStateEmitter,
        _SuccessStateEmitter,
        _LoadingStateEmitter,
        _IdleStateEmitter {
  const factory _$FetchFacultyEvent() = _$$FetchFacultyEventImpl;
  const _$FetchFacultyEvent._() : super._();
}

/// @nodoc
mixin _$FacultyState {
  List<FacultyModel> get faculties => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FacultyModel> faculties) idle,
    required TResult Function(List<FacultyModel> faculties) loading,
    required TResult Function(List<FacultyModel> faculties) success,
    required TResult Function(String? errorMsg, List<FacultyModel> faculties)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FacultyModel> faculties)? idle,
    TResult? Function(List<FacultyModel> faculties)? loading,
    TResult? Function(List<FacultyModel> faculties)? success,
    TResult? Function(String? errorMsg, List<FacultyModel> faculties)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FacultyModel> faculties)? idle,
    TResult Function(List<FacultyModel> faculties)? loading,
    TResult Function(List<FacultyModel> faculties)? success,
    TResult Function(String? errorMsg, List<FacultyModel> faculties)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleFacultyState value) idle,
    required TResult Function(_$LoadingFacultyState value) loading,
    required TResult Function(_$SuccessFacultyState value) success,
    required TResult Function(_$ErrorFacultyState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleFacultyState value)? idle,
    TResult? Function(_$LoadingFacultyState value)? loading,
    TResult? Function(_$SuccessFacultyState value)? success,
    TResult? Function(_$ErrorFacultyState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleFacultyState value)? idle,
    TResult Function(_$LoadingFacultyState value)? loading,
    TResult Function(_$SuccessFacultyState value)? success,
    TResult Function(_$ErrorFacultyState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FacultyStateCopyWith<FacultyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacultyStateCopyWith<$Res> {
  factory $FacultyStateCopyWith(
          FacultyState value, $Res Function(FacultyState) then) =
      _$FacultyStateCopyWithImpl<$Res, FacultyState>;
  @useResult
  $Res call({List<FacultyModel> faculties});
}

/// @nodoc
class _$FacultyStateCopyWithImpl<$Res, $Val extends FacultyState>
    implements $FacultyStateCopyWith<$Res> {
  _$FacultyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faculties = null,
  }) {
    return _then(_value.copyWith(
      faculties: null == faculties
          ? _value.faculties
          : faculties // ignore: cast_nullable_to_non_nullable
              as List<FacultyModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$IdleFacultyStateImplCopyWith<$Res>
    implements $FacultyStateCopyWith<$Res> {
  factory _$$$IdleFacultyStateImplCopyWith(_$$IdleFacultyStateImpl value,
          $Res Function(_$$IdleFacultyStateImpl) then) =
      __$$$IdleFacultyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FacultyModel> faculties});
}

/// @nodoc
class __$$$IdleFacultyStateImplCopyWithImpl<$Res>
    extends _$FacultyStateCopyWithImpl<$Res, _$$IdleFacultyStateImpl>
    implements _$$$IdleFacultyStateImplCopyWith<$Res> {
  __$$$IdleFacultyStateImplCopyWithImpl(_$$IdleFacultyStateImpl _value,
      $Res Function(_$$IdleFacultyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faculties = null,
  }) {
    return _then(_$$IdleFacultyStateImpl(
      faculties: null == faculties
          ? _value._faculties
          : faculties // ignore: cast_nullable_to_non_nullable
              as List<FacultyModel>,
    ));
  }
}

/// @nodoc

class _$$IdleFacultyStateImpl extends _$IdleFacultyState {
  const _$$IdleFacultyStateImpl({required final List<FacultyModel> faculties})
      : _faculties = faculties,
        super._();

  final List<FacultyModel> _faculties;
  @override
  List<FacultyModel> get faculties {
    if (_faculties is EqualUnmodifiableListView) return _faculties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_faculties);
  }

  @override
  String toString() {
    return 'FacultyState.idle(faculties: $faculties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$IdleFacultyStateImpl &&
            const DeepCollectionEquality()
                .equals(other._faculties, _faculties));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_faculties));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$IdleFacultyStateImplCopyWith<_$$IdleFacultyStateImpl> get copyWith =>
      __$$$IdleFacultyStateImplCopyWithImpl<_$$IdleFacultyStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FacultyModel> faculties) idle,
    required TResult Function(List<FacultyModel> faculties) loading,
    required TResult Function(List<FacultyModel> faculties) success,
    required TResult Function(String? errorMsg, List<FacultyModel> faculties)
        error,
  }) {
    return idle(faculties);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FacultyModel> faculties)? idle,
    TResult? Function(List<FacultyModel> faculties)? loading,
    TResult? Function(List<FacultyModel> faculties)? success,
    TResult? Function(String? errorMsg, List<FacultyModel> faculties)? error,
  }) {
    return idle?.call(faculties);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FacultyModel> faculties)? idle,
    TResult Function(List<FacultyModel> faculties)? loading,
    TResult Function(List<FacultyModel> faculties)? success,
    TResult Function(String? errorMsg, List<FacultyModel> faculties)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(faculties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleFacultyState value) idle,
    required TResult Function(_$LoadingFacultyState value) loading,
    required TResult Function(_$SuccessFacultyState value) success,
    required TResult Function(_$ErrorFacultyState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleFacultyState value)? idle,
    TResult? Function(_$LoadingFacultyState value)? loading,
    TResult? Function(_$SuccessFacultyState value)? success,
    TResult? Function(_$ErrorFacultyState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleFacultyState value)? idle,
    TResult Function(_$LoadingFacultyState value)? loading,
    TResult Function(_$SuccessFacultyState value)? success,
    TResult Function(_$ErrorFacultyState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _$IdleFacultyState extends FacultyState {
  const factory _$IdleFacultyState(
      {required final List<FacultyModel> faculties}) = _$$IdleFacultyStateImpl;
  const _$IdleFacultyState._() : super._();

  @override
  List<FacultyModel> get faculties;
  @override
  @JsonKey(ignore: true)
  _$$$IdleFacultyStateImplCopyWith<_$$IdleFacultyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$LoadingFacultyStateImplCopyWith<$Res>
    implements $FacultyStateCopyWith<$Res> {
  factory _$$$LoadingFacultyStateImplCopyWith(_$$LoadingFacultyStateImpl value,
          $Res Function(_$$LoadingFacultyStateImpl) then) =
      __$$$LoadingFacultyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FacultyModel> faculties});
}

/// @nodoc
class __$$$LoadingFacultyStateImplCopyWithImpl<$Res>
    extends _$FacultyStateCopyWithImpl<$Res, _$$LoadingFacultyStateImpl>
    implements _$$$LoadingFacultyStateImplCopyWith<$Res> {
  __$$$LoadingFacultyStateImplCopyWithImpl(_$$LoadingFacultyStateImpl _value,
      $Res Function(_$$LoadingFacultyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faculties = null,
  }) {
    return _then(_$$LoadingFacultyStateImpl(
      faculties: null == faculties
          ? _value._faculties
          : faculties // ignore: cast_nullable_to_non_nullable
              as List<FacultyModel>,
    ));
  }
}

/// @nodoc

class _$$LoadingFacultyStateImpl extends _$LoadingFacultyState {
  const _$$LoadingFacultyStateImpl(
      {required final List<FacultyModel> faculties})
      : _faculties = faculties,
        super._();

  final List<FacultyModel> _faculties;
  @override
  List<FacultyModel> get faculties {
    if (_faculties is EqualUnmodifiableListView) return _faculties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_faculties);
  }

  @override
  String toString() {
    return 'FacultyState.loading(faculties: $faculties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$LoadingFacultyStateImpl &&
            const DeepCollectionEquality()
                .equals(other._faculties, _faculties));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_faculties));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$LoadingFacultyStateImplCopyWith<_$$LoadingFacultyStateImpl>
      get copyWith =>
          __$$$LoadingFacultyStateImplCopyWithImpl<_$$LoadingFacultyStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FacultyModel> faculties) idle,
    required TResult Function(List<FacultyModel> faculties) loading,
    required TResult Function(List<FacultyModel> faculties) success,
    required TResult Function(String? errorMsg, List<FacultyModel> faculties)
        error,
  }) {
    return loading(faculties);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FacultyModel> faculties)? idle,
    TResult? Function(List<FacultyModel> faculties)? loading,
    TResult? Function(List<FacultyModel> faculties)? success,
    TResult? Function(String? errorMsg, List<FacultyModel> faculties)? error,
  }) {
    return loading?.call(faculties);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FacultyModel> faculties)? idle,
    TResult Function(List<FacultyModel> faculties)? loading,
    TResult Function(List<FacultyModel> faculties)? success,
    TResult Function(String? errorMsg, List<FacultyModel> faculties)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(faculties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleFacultyState value) idle,
    required TResult Function(_$LoadingFacultyState value) loading,
    required TResult Function(_$SuccessFacultyState value) success,
    required TResult Function(_$ErrorFacultyState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleFacultyState value)? idle,
    TResult? Function(_$LoadingFacultyState value)? loading,
    TResult? Function(_$SuccessFacultyState value)? success,
    TResult? Function(_$ErrorFacultyState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleFacultyState value)? idle,
    TResult Function(_$LoadingFacultyState value)? loading,
    TResult Function(_$SuccessFacultyState value)? success,
    TResult Function(_$ErrorFacultyState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$LoadingFacultyState extends FacultyState {
  const factory _$LoadingFacultyState(
          {required final List<FacultyModel> faculties}) =
      _$$LoadingFacultyStateImpl;
  const _$LoadingFacultyState._() : super._();

  @override
  List<FacultyModel> get faculties;
  @override
  @JsonKey(ignore: true)
  _$$$LoadingFacultyStateImplCopyWith<_$$LoadingFacultyStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$SuccessFacultyStateImplCopyWith<$Res>
    implements $FacultyStateCopyWith<$Res> {
  factory _$$$SuccessFacultyStateImplCopyWith(_$$SuccessFacultyStateImpl value,
          $Res Function(_$$SuccessFacultyStateImpl) then) =
      __$$$SuccessFacultyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FacultyModel> faculties});
}

/// @nodoc
class __$$$SuccessFacultyStateImplCopyWithImpl<$Res>
    extends _$FacultyStateCopyWithImpl<$Res, _$$SuccessFacultyStateImpl>
    implements _$$$SuccessFacultyStateImplCopyWith<$Res> {
  __$$$SuccessFacultyStateImplCopyWithImpl(_$$SuccessFacultyStateImpl _value,
      $Res Function(_$$SuccessFacultyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faculties = null,
  }) {
    return _then(_$$SuccessFacultyStateImpl(
      faculties: null == faculties
          ? _value._faculties
          : faculties // ignore: cast_nullable_to_non_nullable
              as List<FacultyModel>,
    ));
  }
}

/// @nodoc

class _$$SuccessFacultyStateImpl extends _$SuccessFacultyState {
  const _$$SuccessFacultyStateImpl(
      {required final List<FacultyModel> faculties})
      : _faculties = faculties,
        super._();

  final List<FacultyModel> _faculties;
  @override
  List<FacultyModel> get faculties {
    if (_faculties is EqualUnmodifiableListView) return _faculties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_faculties);
  }

  @override
  String toString() {
    return 'FacultyState.success(faculties: $faculties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$SuccessFacultyStateImpl &&
            const DeepCollectionEquality()
                .equals(other._faculties, _faculties));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_faculties));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$SuccessFacultyStateImplCopyWith<_$$SuccessFacultyStateImpl>
      get copyWith =>
          __$$$SuccessFacultyStateImplCopyWithImpl<_$$SuccessFacultyStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FacultyModel> faculties) idle,
    required TResult Function(List<FacultyModel> faculties) loading,
    required TResult Function(List<FacultyModel> faculties) success,
    required TResult Function(String? errorMsg, List<FacultyModel> faculties)
        error,
  }) {
    return success(faculties);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FacultyModel> faculties)? idle,
    TResult? Function(List<FacultyModel> faculties)? loading,
    TResult? Function(List<FacultyModel> faculties)? success,
    TResult? Function(String? errorMsg, List<FacultyModel> faculties)? error,
  }) {
    return success?.call(faculties);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FacultyModel> faculties)? idle,
    TResult Function(List<FacultyModel> faculties)? loading,
    TResult Function(List<FacultyModel> faculties)? success,
    TResult Function(String? errorMsg, List<FacultyModel> faculties)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(faculties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleFacultyState value) idle,
    required TResult Function(_$LoadingFacultyState value) loading,
    required TResult Function(_$SuccessFacultyState value) success,
    required TResult Function(_$ErrorFacultyState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleFacultyState value)? idle,
    TResult? Function(_$LoadingFacultyState value)? loading,
    TResult? Function(_$SuccessFacultyState value)? success,
    TResult? Function(_$ErrorFacultyState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleFacultyState value)? idle,
    TResult Function(_$LoadingFacultyState value)? loading,
    TResult Function(_$SuccessFacultyState value)? success,
    TResult Function(_$ErrorFacultyState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _$SuccessFacultyState extends FacultyState {
  const factory _$SuccessFacultyState(
          {required final List<FacultyModel> faculties}) =
      _$$SuccessFacultyStateImpl;
  const _$SuccessFacultyState._() : super._();

  @override
  List<FacultyModel> get faculties;
  @override
  @JsonKey(ignore: true)
  _$$$SuccessFacultyStateImplCopyWith<_$$SuccessFacultyStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$ErrorFacultyStateImplCopyWith<$Res>
    implements $FacultyStateCopyWith<$Res> {
  factory _$$$ErrorFacultyStateImplCopyWith(_$$ErrorFacultyStateImpl value,
          $Res Function(_$$ErrorFacultyStateImpl) then) =
      __$$$ErrorFacultyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? errorMsg, List<FacultyModel> faculties});
}

/// @nodoc
class __$$$ErrorFacultyStateImplCopyWithImpl<$Res>
    extends _$FacultyStateCopyWithImpl<$Res, _$$ErrorFacultyStateImpl>
    implements _$$$ErrorFacultyStateImplCopyWith<$Res> {
  __$$$ErrorFacultyStateImplCopyWithImpl(_$$ErrorFacultyStateImpl _value,
      $Res Function(_$$ErrorFacultyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = freezed,
    Object? faculties = null,
  }) {
    return _then(_$$ErrorFacultyStateImpl(
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      faculties: null == faculties
          ? _value._faculties
          : faculties // ignore: cast_nullable_to_non_nullable
              as List<FacultyModel>,
    ));
  }
}

/// @nodoc

class _$$ErrorFacultyStateImpl extends _$ErrorFacultyState {
  const _$$ErrorFacultyStateImpl(
      {this.errorMsg = 'Неизвестная ошибка',
      required final List<FacultyModel> faculties})
      : _faculties = faculties,
        super._();

  @override
  @JsonKey()
  final String? errorMsg;
  final List<FacultyModel> _faculties;
  @override
  List<FacultyModel> get faculties {
    if (_faculties is EqualUnmodifiableListView) return _faculties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_faculties);
  }

  @override
  String toString() {
    return 'FacultyState.error(errorMsg: $errorMsg, faculties: $faculties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ErrorFacultyStateImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            const DeepCollectionEquality()
                .equals(other._faculties, _faculties));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, errorMsg, const DeepCollectionEquality().hash(_faculties));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ErrorFacultyStateImplCopyWith<_$$ErrorFacultyStateImpl> get copyWith =>
      __$$$ErrorFacultyStateImplCopyWithImpl<_$$ErrorFacultyStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FacultyModel> faculties) idle,
    required TResult Function(List<FacultyModel> faculties) loading,
    required TResult Function(List<FacultyModel> faculties) success,
    required TResult Function(String? errorMsg, List<FacultyModel> faculties)
        error,
  }) {
    return error(errorMsg, faculties);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FacultyModel> faculties)? idle,
    TResult? Function(List<FacultyModel> faculties)? loading,
    TResult? Function(List<FacultyModel> faculties)? success,
    TResult? Function(String? errorMsg, List<FacultyModel> faculties)? error,
  }) {
    return error?.call(errorMsg, faculties);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FacultyModel> faculties)? idle,
    TResult Function(List<FacultyModel> faculties)? loading,
    TResult Function(List<FacultyModel> faculties)? success,
    TResult Function(String? errorMsg, List<FacultyModel> faculties)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMsg, faculties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleFacultyState value) idle,
    required TResult Function(_$LoadingFacultyState value) loading,
    required TResult Function(_$SuccessFacultyState value) success,
    required TResult Function(_$ErrorFacultyState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleFacultyState value)? idle,
    TResult? Function(_$LoadingFacultyState value)? loading,
    TResult? Function(_$SuccessFacultyState value)? success,
    TResult? Function(_$ErrorFacultyState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleFacultyState value)? idle,
    TResult Function(_$LoadingFacultyState value)? loading,
    TResult Function(_$SuccessFacultyState value)? success,
    TResult Function(_$ErrorFacultyState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$ErrorFacultyState extends FacultyState {
  const factory _$ErrorFacultyState(
      {final String? errorMsg,
      required final List<FacultyModel> faculties}) = _$$ErrorFacultyStateImpl;
  const _$ErrorFacultyState._() : super._();

  String? get errorMsg;
  @override
  List<FacultyModel> get faculties;
  @override
  @JsonKey(ignore: true)
  _$$$ErrorFacultyStateImplCopyWith<_$$ErrorFacultyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
