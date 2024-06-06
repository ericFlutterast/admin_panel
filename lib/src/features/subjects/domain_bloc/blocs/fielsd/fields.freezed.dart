// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fields.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FieldsEvent {
  int get facultyId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int facultyId) fetchFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int facultyId)? fetchFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int facultyId)? fetchFields,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$FetchFieldsEvent value) fetchFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$FetchFieldsEvent value)? fetchFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FetchFieldsEvent value)? fetchFields,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FieldsEventCopyWith<FieldsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldsEventCopyWith<$Res> {
  factory $FieldsEventCopyWith(
          FieldsEvent value, $Res Function(FieldsEvent) then) =
      _$FieldsEventCopyWithImpl<$Res, FieldsEvent>;
  @useResult
  $Res call({int facultyId});
}

/// @nodoc
class _$FieldsEventCopyWithImpl<$Res, $Val extends FieldsEvent>
    implements $FieldsEventCopyWith<$Res> {
  _$FieldsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facultyId = null,
  }) {
    return _then(_value.copyWith(
      facultyId: null == facultyId
          ? _value.facultyId
          : facultyId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$FetchFieldsEventImplCopyWith<$Res>
    implements $FieldsEventCopyWith<$Res> {
  factory _$$$FetchFieldsEventImplCopyWith(_$$FetchFieldsEventImpl value,
          $Res Function(_$$FetchFieldsEventImpl) then) =
      __$$$FetchFieldsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int facultyId});
}

/// @nodoc
class __$$$FetchFieldsEventImplCopyWithImpl<$Res>
    extends _$FieldsEventCopyWithImpl<$Res, _$$FetchFieldsEventImpl>
    implements _$$$FetchFieldsEventImplCopyWith<$Res> {
  __$$$FetchFieldsEventImplCopyWithImpl(_$$FetchFieldsEventImpl _value,
      $Res Function(_$$FetchFieldsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facultyId = null,
  }) {
    return _then(_$$FetchFieldsEventImpl(
      facultyId: null == facultyId
          ? _value.facultyId
          : facultyId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$$FetchFieldsEventImpl extends _$FetchFieldsEvent
    with
        _ErrorStateEmitter,
        _SuccessStateEmitter,
        _LoadingStateEmitter,
        _IdleStateEmitter {
  const _$$FetchFieldsEventImpl({required this.facultyId}) : super._();

  @override
  final int facultyId;

  @override
  String toString() {
    return 'FieldsEvent.fetchFields(facultyId: $facultyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$FetchFieldsEventImpl &&
            (identical(other.facultyId, facultyId) ||
                other.facultyId == facultyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, facultyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$FetchFieldsEventImplCopyWith<_$$FetchFieldsEventImpl> get copyWith =>
      __$$$FetchFieldsEventImplCopyWithImpl<_$$FetchFieldsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int facultyId) fetchFields,
  }) {
    return fetchFields(facultyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int facultyId)? fetchFields,
  }) {
    return fetchFields?.call(facultyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int facultyId)? fetchFields,
    required TResult orElse(),
  }) {
    if (fetchFields != null) {
      return fetchFields(facultyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$FetchFieldsEvent value) fetchFields,
  }) {
    return fetchFields(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$FetchFieldsEvent value)? fetchFields,
  }) {
    return fetchFields?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FetchFieldsEvent value)? fetchFields,
    required TResult orElse(),
  }) {
    if (fetchFields != null) {
      return fetchFields(this);
    }
    return orElse();
  }
}

abstract class _$FetchFieldsEvent extends FieldsEvent
    implements
        _ErrorStateEmitter,
        _SuccessStateEmitter,
        _LoadingStateEmitter,
        _IdleStateEmitter {
  const factory _$FetchFieldsEvent({required final int facultyId}) =
      _$$FetchFieldsEventImpl;
  const _$FetchFieldsEvent._() : super._();

  @override
  int get facultyId;
  @override
  @JsonKey(ignore: true)
  _$$$FetchFieldsEventImplCopyWith<_$$FetchFieldsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FieldsState {
  List<FieldModel> get fields => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FieldModel> fields) idle,
    required TResult Function(List<FieldModel> fields) loading,
    required TResult Function(List<FieldModel> fields) success,
    required TResult Function(String? errorMsg, List<FieldModel> fields) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FieldModel> fields)? idle,
    TResult? Function(List<FieldModel> fields)? loading,
    TResult? Function(List<FieldModel> fields)? success,
    TResult? Function(String? errorMsg, List<FieldModel> fields)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FieldModel> fields)? idle,
    TResult Function(List<FieldModel> fields)? loading,
    TResult Function(List<FieldModel> fields)? success,
    TResult Function(String? errorMsg, List<FieldModel> fields)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleFieldsState value) idle,
    required TResult Function(_$LoadingFieldsState value) loading,
    required TResult Function(_$SuccessFieldsState value) success,
    required TResult Function(_$ErrorFieldsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleFieldsState value)? idle,
    TResult? Function(_$LoadingFieldsState value)? loading,
    TResult? Function(_$SuccessFieldsState value)? success,
    TResult? Function(_$ErrorFieldsState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleFieldsState value)? idle,
    TResult Function(_$LoadingFieldsState value)? loading,
    TResult Function(_$SuccessFieldsState value)? success,
    TResult Function(_$ErrorFieldsState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FieldsStateCopyWith<FieldsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldsStateCopyWith<$Res> {
  factory $FieldsStateCopyWith(
          FieldsState value, $Res Function(FieldsState) then) =
      _$FieldsStateCopyWithImpl<$Res, FieldsState>;
  @useResult
  $Res call({List<FieldModel> fields});
}

/// @nodoc
class _$FieldsStateCopyWithImpl<$Res, $Val extends FieldsState>
    implements $FieldsStateCopyWith<$Res> {
  _$FieldsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = null,
  }) {
    return _then(_value.copyWith(
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FieldModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$IdleFieldsStateImplCopyWith<$Res>
    implements $FieldsStateCopyWith<$Res> {
  factory _$$$IdleFieldsStateImplCopyWith(_$$IdleFieldsStateImpl value,
          $Res Function(_$$IdleFieldsStateImpl) then) =
      __$$$IdleFieldsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FieldModel> fields});
}

/// @nodoc
class __$$$IdleFieldsStateImplCopyWithImpl<$Res>
    extends _$FieldsStateCopyWithImpl<$Res, _$$IdleFieldsStateImpl>
    implements _$$$IdleFieldsStateImplCopyWith<$Res> {
  __$$$IdleFieldsStateImplCopyWithImpl(_$$IdleFieldsStateImpl _value,
      $Res Function(_$$IdleFieldsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = null,
  }) {
    return _then(_$$IdleFieldsStateImpl(
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FieldModel>,
    ));
  }
}

/// @nodoc

class _$$IdleFieldsStateImpl extends _$IdleFieldsState {
  const _$$IdleFieldsStateImpl({required final List<FieldModel> fields})
      : _fields = fields,
        super._();

  final List<FieldModel> _fields;
  @override
  List<FieldModel> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  @override
  String toString() {
    return 'FieldsState.idle(fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$IdleFieldsStateImpl &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$IdleFieldsStateImplCopyWith<_$$IdleFieldsStateImpl> get copyWith =>
      __$$$IdleFieldsStateImplCopyWithImpl<_$$IdleFieldsStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FieldModel> fields) idle,
    required TResult Function(List<FieldModel> fields) loading,
    required TResult Function(List<FieldModel> fields) success,
    required TResult Function(String? errorMsg, List<FieldModel> fields) error,
  }) {
    return idle(fields);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FieldModel> fields)? idle,
    TResult? Function(List<FieldModel> fields)? loading,
    TResult? Function(List<FieldModel> fields)? success,
    TResult? Function(String? errorMsg, List<FieldModel> fields)? error,
  }) {
    return idle?.call(fields);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FieldModel> fields)? idle,
    TResult Function(List<FieldModel> fields)? loading,
    TResult Function(List<FieldModel> fields)? success,
    TResult Function(String? errorMsg, List<FieldModel> fields)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(fields);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleFieldsState value) idle,
    required TResult Function(_$LoadingFieldsState value) loading,
    required TResult Function(_$SuccessFieldsState value) success,
    required TResult Function(_$ErrorFieldsState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleFieldsState value)? idle,
    TResult? Function(_$LoadingFieldsState value)? loading,
    TResult? Function(_$SuccessFieldsState value)? success,
    TResult? Function(_$ErrorFieldsState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleFieldsState value)? idle,
    TResult Function(_$LoadingFieldsState value)? loading,
    TResult Function(_$SuccessFieldsState value)? success,
    TResult Function(_$ErrorFieldsState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _$IdleFieldsState extends FieldsState {
  const factory _$IdleFieldsState({required final List<FieldModel> fields}) =
      _$$IdleFieldsStateImpl;
  const _$IdleFieldsState._() : super._();

  @override
  List<FieldModel> get fields;
  @override
  @JsonKey(ignore: true)
  _$$$IdleFieldsStateImplCopyWith<_$$IdleFieldsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$LoadingFieldsStateImplCopyWith<$Res>
    implements $FieldsStateCopyWith<$Res> {
  factory _$$$LoadingFieldsStateImplCopyWith(_$$LoadingFieldsStateImpl value,
          $Res Function(_$$LoadingFieldsStateImpl) then) =
      __$$$LoadingFieldsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FieldModel> fields});
}

/// @nodoc
class __$$$LoadingFieldsStateImplCopyWithImpl<$Res>
    extends _$FieldsStateCopyWithImpl<$Res, _$$LoadingFieldsStateImpl>
    implements _$$$LoadingFieldsStateImplCopyWith<$Res> {
  __$$$LoadingFieldsStateImplCopyWithImpl(_$$LoadingFieldsStateImpl _value,
      $Res Function(_$$LoadingFieldsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = null,
  }) {
    return _then(_$$LoadingFieldsStateImpl(
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FieldModel>,
    ));
  }
}

/// @nodoc

class _$$LoadingFieldsStateImpl extends _$LoadingFieldsState {
  const _$$LoadingFieldsStateImpl({required final List<FieldModel> fields})
      : _fields = fields,
        super._();

  final List<FieldModel> _fields;
  @override
  List<FieldModel> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  @override
  String toString() {
    return 'FieldsState.loading(fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$LoadingFieldsStateImpl &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$LoadingFieldsStateImplCopyWith<_$$LoadingFieldsStateImpl> get copyWith =>
      __$$$LoadingFieldsStateImplCopyWithImpl<_$$LoadingFieldsStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FieldModel> fields) idle,
    required TResult Function(List<FieldModel> fields) loading,
    required TResult Function(List<FieldModel> fields) success,
    required TResult Function(String? errorMsg, List<FieldModel> fields) error,
  }) {
    return loading(fields);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FieldModel> fields)? idle,
    TResult? Function(List<FieldModel> fields)? loading,
    TResult? Function(List<FieldModel> fields)? success,
    TResult? Function(String? errorMsg, List<FieldModel> fields)? error,
  }) {
    return loading?.call(fields);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FieldModel> fields)? idle,
    TResult Function(List<FieldModel> fields)? loading,
    TResult Function(List<FieldModel> fields)? success,
    TResult Function(String? errorMsg, List<FieldModel> fields)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(fields);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleFieldsState value) idle,
    required TResult Function(_$LoadingFieldsState value) loading,
    required TResult Function(_$SuccessFieldsState value) success,
    required TResult Function(_$ErrorFieldsState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleFieldsState value)? idle,
    TResult? Function(_$LoadingFieldsState value)? loading,
    TResult? Function(_$SuccessFieldsState value)? success,
    TResult? Function(_$ErrorFieldsState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleFieldsState value)? idle,
    TResult Function(_$LoadingFieldsState value)? loading,
    TResult Function(_$SuccessFieldsState value)? success,
    TResult Function(_$ErrorFieldsState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$LoadingFieldsState extends FieldsState {
  const factory _$LoadingFieldsState({required final List<FieldModel> fields}) =
      _$$LoadingFieldsStateImpl;
  const _$LoadingFieldsState._() : super._();

  @override
  List<FieldModel> get fields;
  @override
  @JsonKey(ignore: true)
  _$$$LoadingFieldsStateImplCopyWith<_$$LoadingFieldsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$SuccessFieldsStateImplCopyWith<$Res>
    implements $FieldsStateCopyWith<$Res> {
  factory _$$$SuccessFieldsStateImplCopyWith(_$$SuccessFieldsStateImpl value,
          $Res Function(_$$SuccessFieldsStateImpl) then) =
      __$$$SuccessFieldsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FieldModel> fields});
}

/// @nodoc
class __$$$SuccessFieldsStateImplCopyWithImpl<$Res>
    extends _$FieldsStateCopyWithImpl<$Res, _$$SuccessFieldsStateImpl>
    implements _$$$SuccessFieldsStateImplCopyWith<$Res> {
  __$$$SuccessFieldsStateImplCopyWithImpl(_$$SuccessFieldsStateImpl _value,
      $Res Function(_$$SuccessFieldsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = null,
  }) {
    return _then(_$$SuccessFieldsStateImpl(
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FieldModel>,
    ));
  }
}

/// @nodoc

class _$$SuccessFieldsStateImpl extends _$SuccessFieldsState {
  const _$$SuccessFieldsStateImpl({required final List<FieldModel> fields})
      : _fields = fields,
        super._();

  final List<FieldModel> _fields;
  @override
  List<FieldModel> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  @override
  String toString() {
    return 'FieldsState.success(fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$SuccessFieldsStateImpl &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$SuccessFieldsStateImplCopyWith<_$$SuccessFieldsStateImpl> get copyWith =>
      __$$$SuccessFieldsStateImplCopyWithImpl<_$$SuccessFieldsStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FieldModel> fields) idle,
    required TResult Function(List<FieldModel> fields) loading,
    required TResult Function(List<FieldModel> fields) success,
    required TResult Function(String? errorMsg, List<FieldModel> fields) error,
  }) {
    return success(fields);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FieldModel> fields)? idle,
    TResult? Function(List<FieldModel> fields)? loading,
    TResult? Function(List<FieldModel> fields)? success,
    TResult? Function(String? errorMsg, List<FieldModel> fields)? error,
  }) {
    return success?.call(fields);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FieldModel> fields)? idle,
    TResult Function(List<FieldModel> fields)? loading,
    TResult Function(List<FieldModel> fields)? success,
    TResult Function(String? errorMsg, List<FieldModel> fields)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(fields);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleFieldsState value) idle,
    required TResult Function(_$LoadingFieldsState value) loading,
    required TResult Function(_$SuccessFieldsState value) success,
    required TResult Function(_$ErrorFieldsState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleFieldsState value)? idle,
    TResult? Function(_$LoadingFieldsState value)? loading,
    TResult? Function(_$SuccessFieldsState value)? success,
    TResult? Function(_$ErrorFieldsState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleFieldsState value)? idle,
    TResult Function(_$LoadingFieldsState value)? loading,
    TResult Function(_$SuccessFieldsState value)? success,
    TResult Function(_$ErrorFieldsState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _$SuccessFieldsState extends FieldsState {
  const factory _$SuccessFieldsState({required final List<FieldModel> fields}) =
      _$$SuccessFieldsStateImpl;
  const _$SuccessFieldsState._() : super._();

  @override
  List<FieldModel> get fields;
  @override
  @JsonKey(ignore: true)
  _$$$SuccessFieldsStateImplCopyWith<_$$SuccessFieldsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$ErrorFieldsStateImplCopyWith<$Res>
    implements $FieldsStateCopyWith<$Res> {
  factory _$$$ErrorFieldsStateImplCopyWith(_$$ErrorFieldsStateImpl value,
          $Res Function(_$$ErrorFieldsStateImpl) then) =
      __$$$ErrorFieldsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? errorMsg, List<FieldModel> fields});
}

/// @nodoc
class __$$$ErrorFieldsStateImplCopyWithImpl<$Res>
    extends _$FieldsStateCopyWithImpl<$Res, _$$ErrorFieldsStateImpl>
    implements _$$$ErrorFieldsStateImplCopyWith<$Res> {
  __$$$ErrorFieldsStateImplCopyWithImpl(_$$ErrorFieldsStateImpl _value,
      $Res Function(_$$ErrorFieldsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = freezed,
    Object? fields = null,
  }) {
    return _then(_$$ErrorFieldsStateImpl(
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FieldModel>,
    ));
  }
}

/// @nodoc

class _$$ErrorFieldsStateImpl extends _$ErrorFieldsState {
  const _$$ErrorFieldsStateImpl(
      {this.errorMsg = 'Неизвестная ошибка',
      required final List<FieldModel> fields})
      : _fields = fields,
        super._();

  @override
  @JsonKey()
  final String? errorMsg;
  final List<FieldModel> _fields;
  @override
  List<FieldModel> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  @override
  String toString() {
    return 'FieldsState.error(errorMsg: $errorMsg, fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ErrorFieldsStateImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, errorMsg, const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ErrorFieldsStateImplCopyWith<_$$ErrorFieldsStateImpl> get copyWith =>
      __$$$ErrorFieldsStateImplCopyWithImpl<_$$ErrorFieldsStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FieldModel> fields) idle,
    required TResult Function(List<FieldModel> fields) loading,
    required TResult Function(List<FieldModel> fields) success,
    required TResult Function(String? errorMsg, List<FieldModel> fields) error,
  }) {
    return error(errorMsg, fields);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FieldModel> fields)? idle,
    TResult? Function(List<FieldModel> fields)? loading,
    TResult? Function(List<FieldModel> fields)? success,
    TResult? Function(String? errorMsg, List<FieldModel> fields)? error,
  }) {
    return error?.call(errorMsg, fields);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FieldModel> fields)? idle,
    TResult Function(List<FieldModel> fields)? loading,
    TResult Function(List<FieldModel> fields)? success,
    TResult Function(String? errorMsg, List<FieldModel> fields)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMsg, fields);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleFieldsState value) idle,
    required TResult Function(_$LoadingFieldsState value) loading,
    required TResult Function(_$SuccessFieldsState value) success,
    required TResult Function(_$ErrorFieldsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleFieldsState value)? idle,
    TResult? Function(_$LoadingFieldsState value)? loading,
    TResult? Function(_$SuccessFieldsState value)? success,
    TResult? Function(_$ErrorFieldsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleFieldsState value)? idle,
    TResult Function(_$LoadingFieldsState value)? loading,
    TResult Function(_$SuccessFieldsState value)? success,
    TResult Function(_$ErrorFieldsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$ErrorFieldsState extends FieldsState {
  const factory _$ErrorFieldsState(
      {final String? errorMsg,
      required final List<FieldModel> fields}) = _$$ErrorFieldsStateImpl;
  const _$ErrorFieldsState._() : super._();

  String? get errorMsg;
  @override
  List<FieldModel> get fields;
  @override
  @JsonKey(ignore: true)
  _$$$ErrorFieldsStateImplCopyWith<_$$ErrorFieldsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
