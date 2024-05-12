// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_pdf.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadPdfEvent {
  FormData get file => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormData file) uploadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormData file)? uploadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormData file)? uploadFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$UploadPdfUploadEvent value) uploadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UploadPdfUploadEvent value)? uploadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UploadPdfUploadEvent value)? uploadFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadPdfEventCopyWith<UploadPdfEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPdfEventCopyWith<$Res> {
  factory $UploadPdfEventCopyWith(
          UploadPdfEvent value, $Res Function(UploadPdfEvent) then) =
      _$UploadPdfEventCopyWithImpl<$Res, UploadPdfEvent>;
  @useResult
  $Res call({FormData file});
}

/// @nodoc
class _$UploadPdfEventCopyWithImpl<$Res, $Val extends UploadPdfEvent>
    implements $UploadPdfEventCopyWith<$Res> {
  _$UploadPdfEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FormData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$UploadPdfUploadEventImplCopyWith<$Res>
    implements $UploadPdfEventCopyWith<$Res> {
  factory _$$$UploadPdfUploadEventImplCopyWith(
          _$$UploadPdfUploadEventImpl value,
          $Res Function(_$$UploadPdfUploadEventImpl) then) =
      __$$$UploadPdfUploadEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormData file});
}

/// @nodoc
class __$$$UploadPdfUploadEventImplCopyWithImpl<$Res>
    extends _$UploadPdfEventCopyWithImpl<$Res, _$$UploadPdfUploadEventImpl>
    implements _$$$UploadPdfUploadEventImplCopyWith<$Res> {
  __$$$UploadPdfUploadEventImplCopyWithImpl(_$$UploadPdfUploadEventImpl _value,
      $Res Function(_$$UploadPdfUploadEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$$UploadPdfUploadEventImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FormData,
    ));
  }
}

/// @nodoc

class _$$UploadPdfUploadEventImpl extends _$UploadPdfUploadEvent
    with _IdleEmitter, _UploadingEmitter, _SuccessEmitter, _ErrorEmitter {
  const _$$UploadPdfUploadEventImpl({required this.file}) : super._();

  @override
  final FormData file;

  @override
  String toString() {
    return 'UploadPdfEvent.uploadFile(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$UploadPdfUploadEventImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$UploadPdfUploadEventImplCopyWith<_$$UploadPdfUploadEventImpl>
      get copyWith => __$$$UploadPdfUploadEventImplCopyWithImpl<
          _$$UploadPdfUploadEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormData file) uploadFile,
  }) {
    return uploadFile(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormData file)? uploadFile,
  }) {
    return uploadFile?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormData file)? uploadFile,
    required TResult orElse(),
  }) {
    if (uploadFile != null) {
      return uploadFile(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$UploadPdfUploadEvent value) uploadFile,
  }) {
    return uploadFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UploadPdfUploadEvent value)? uploadFile,
  }) {
    return uploadFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UploadPdfUploadEvent value)? uploadFile,
    required TResult orElse(),
  }) {
    if (uploadFile != null) {
      return uploadFile(this);
    }
    return orElse();
  }
}

abstract class _$UploadPdfUploadEvent extends UploadPdfEvent
    implements _IdleEmitter, _UploadingEmitter, _SuccessEmitter, _ErrorEmitter {
  const factory _$UploadPdfUploadEvent({required final FormData file}) =
      _$$UploadPdfUploadEventImpl;
  const _$UploadPdfUploadEvent._() : super._();

  @override
  FormData get file;
  @override
  @JsonKey(ignore: true)
  _$$$UploadPdfUploadEventImplCopyWith<_$$UploadPdfUploadEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UploadPdfState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() uploading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? uploading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? uploading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$UploadPdfIdleState value) idle,
    required TResult Function(_$UploadPdfUploadingState value) uploading,
    required TResult Function(_$UploadPdfSuccessState value) success,
    required TResult Function(_$UploadPdfErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UploadPdfIdleState value)? idle,
    TResult? Function(_$UploadPdfUploadingState value)? uploading,
    TResult? Function(_$UploadPdfSuccessState value)? success,
    TResult? Function(_$UploadPdfErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UploadPdfIdleState value)? idle,
    TResult Function(_$UploadPdfUploadingState value)? uploading,
    TResult Function(_$UploadPdfSuccessState value)? success,
    TResult Function(_$UploadPdfErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPdfStateCopyWith<$Res> {
  factory $UploadPdfStateCopyWith(
          UploadPdfState value, $Res Function(UploadPdfState) then) =
      _$UploadPdfStateCopyWithImpl<$Res, UploadPdfState>;
}

/// @nodoc
class _$UploadPdfStateCopyWithImpl<$Res, $Val extends UploadPdfState>
    implements $UploadPdfStateCopyWith<$Res> {
  _$UploadPdfStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$UploadPdfIdleStateImplCopyWith<$Res> {
  factory _$$$UploadPdfIdleStateImplCopyWith(_$$UploadPdfIdleStateImpl value,
          $Res Function(_$$UploadPdfIdleStateImpl) then) =
      __$$$UploadPdfIdleStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$UploadPdfIdleStateImplCopyWithImpl<$Res>
    extends _$UploadPdfStateCopyWithImpl<$Res, _$$UploadPdfIdleStateImpl>
    implements _$$$UploadPdfIdleStateImplCopyWith<$Res> {
  __$$$UploadPdfIdleStateImplCopyWithImpl(_$$UploadPdfIdleStateImpl _value,
      $Res Function(_$$UploadPdfIdleStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$UploadPdfIdleStateImpl extends _$UploadPdfIdleState {
  const _$$UploadPdfIdleStateImpl() : super._();

  @override
  String toString() {
    return 'UploadPdfState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$UploadPdfIdleStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() uploading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? uploading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? uploading,
    TResult Function()? success,
    TResult Function(String message)? error,
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
    required TResult Function(_$UploadPdfIdleState value) idle,
    required TResult Function(_$UploadPdfUploadingState value) uploading,
    required TResult Function(_$UploadPdfSuccessState value) success,
    required TResult Function(_$UploadPdfErrorState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UploadPdfIdleState value)? idle,
    TResult? Function(_$UploadPdfUploadingState value)? uploading,
    TResult? Function(_$UploadPdfSuccessState value)? success,
    TResult? Function(_$UploadPdfErrorState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UploadPdfIdleState value)? idle,
    TResult Function(_$UploadPdfUploadingState value)? uploading,
    TResult Function(_$UploadPdfSuccessState value)? success,
    TResult Function(_$UploadPdfErrorState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _$UploadPdfIdleState extends UploadPdfState {
  const factory _$UploadPdfIdleState() = _$$UploadPdfIdleStateImpl;
  const _$UploadPdfIdleState._() : super._();
}

/// @nodoc
abstract class _$$$UploadPdfUploadingStateImplCopyWith<$Res> {
  factory _$$$UploadPdfUploadingStateImplCopyWith(
          _$$UploadPdfUploadingStateImpl value,
          $Res Function(_$$UploadPdfUploadingStateImpl) then) =
      __$$$UploadPdfUploadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$UploadPdfUploadingStateImplCopyWithImpl<$Res>
    extends _$UploadPdfStateCopyWithImpl<$Res, _$$UploadPdfUploadingStateImpl>
    implements _$$$UploadPdfUploadingStateImplCopyWith<$Res> {
  __$$$UploadPdfUploadingStateImplCopyWithImpl(
      _$$UploadPdfUploadingStateImpl _value,
      $Res Function(_$$UploadPdfUploadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$UploadPdfUploadingStateImpl extends _$UploadPdfUploadingState {
  const _$$UploadPdfUploadingStateImpl() : super._();

  @override
  String toString() {
    return 'UploadPdfState.uploading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$UploadPdfUploadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() uploading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return uploading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? uploading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return uploading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? uploading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$UploadPdfIdleState value) idle,
    required TResult Function(_$UploadPdfUploadingState value) uploading,
    required TResult Function(_$UploadPdfSuccessState value) success,
    required TResult Function(_$UploadPdfErrorState value) error,
  }) {
    return uploading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UploadPdfIdleState value)? idle,
    TResult? Function(_$UploadPdfUploadingState value)? uploading,
    TResult? Function(_$UploadPdfSuccessState value)? success,
    TResult? Function(_$UploadPdfErrorState value)? error,
  }) {
    return uploading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UploadPdfIdleState value)? idle,
    TResult Function(_$UploadPdfUploadingState value)? uploading,
    TResult Function(_$UploadPdfSuccessState value)? success,
    TResult Function(_$UploadPdfErrorState value)? error,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(this);
    }
    return orElse();
  }
}

abstract class _$UploadPdfUploadingState extends UploadPdfState {
  const factory _$UploadPdfUploadingState() = _$$UploadPdfUploadingStateImpl;
  const _$UploadPdfUploadingState._() : super._();
}

/// @nodoc
abstract class _$$$UploadPdfSuccessStateImplCopyWith<$Res> {
  factory _$$$UploadPdfSuccessStateImplCopyWith(
          _$$UploadPdfSuccessStateImpl value,
          $Res Function(_$$UploadPdfSuccessStateImpl) then) =
      __$$$UploadPdfSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$UploadPdfSuccessStateImplCopyWithImpl<$Res>
    extends _$UploadPdfStateCopyWithImpl<$Res, _$$UploadPdfSuccessStateImpl>
    implements _$$$UploadPdfSuccessStateImplCopyWith<$Res> {
  __$$$UploadPdfSuccessStateImplCopyWithImpl(
      _$$UploadPdfSuccessStateImpl _value,
      $Res Function(_$$UploadPdfSuccessStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$UploadPdfSuccessStateImpl extends _$UploadPdfSuccessState {
  const _$$UploadPdfSuccessStateImpl() : super._();

  @override
  String toString() {
    return 'UploadPdfState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$UploadPdfSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() uploading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? uploading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? uploading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$UploadPdfIdleState value) idle,
    required TResult Function(_$UploadPdfUploadingState value) uploading,
    required TResult Function(_$UploadPdfSuccessState value) success,
    required TResult Function(_$UploadPdfErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UploadPdfIdleState value)? idle,
    TResult? Function(_$UploadPdfUploadingState value)? uploading,
    TResult? Function(_$UploadPdfSuccessState value)? success,
    TResult? Function(_$UploadPdfErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UploadPdfIdleState value)? idle,
    TResult Function(_$UploadPdfUploadingState value)? uploading,
    TResult Function(_$UploadPdfSuccessState value)? success,
    TResult Function(_$UploadPdfErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _$UploadPdfSuccessState extends UploadPdfState {
  const factory _$UploadPdfSuccessState() = _$$UploadPdfSuccessStateImpl;
  const _$UploadPdfSuccessState._() : super._();
}

/// @nodoc
abstract class _$$$UploadPdfErrorStateImplCopyWith<$Res> {
  factory _$$$UploadPdfErrorStateImplCopyWith(_$$UploadPdfErrorStateImpl value,
          $Res Function(_$$UploadPdfErrorStateImpl) then) =
      __$$$UploadPdfErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$$UploadPdfErrorStateImplCopyWithImpl<$Res>
    extends _$UploadPdfStateCopyWithImpl<$Res, _$$UploadPdfErrorStateImpl>
    implements _$$$UploadPdfErrorStateImplCopyWith<$Res> {
  __$$$UploadPdfErrorStateImplCopyWithImpl(_$$UploadPdfErrorStateImpl _value,
      $Res Function(_$$UploadPdfErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$$UploadPdfErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$UploadPdfErrorStateImpl extends _$UploadPdfErrorState {
  const _$$UploadPdfErrorStateImpl({this.message = 'Произошла ошибка'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'UploadPdfState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$UploadPdfErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$UploadPdfErrorStateImplCopyWith<_$$UploadPdfErrorStateImpl>
      get copyWith =>
          __$$$UploadPdfErrorStateImplCopyWithImpl<_$$UploadPdfErrorStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() uploading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? uploading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? uploading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$UploadPdfIdleState value) idle,
    required TResult Function(_$UploadPdfUploadingState value) uploading,
    required TResult Function(_$UploadPdfSuccessState value) success,
    required TResult Function(_$UploadPdfErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UploadPdfIdleState value)? idle,
    TResult? Function(_$UploadPdfUploadingState value)? uploading,
    TResult? Function(_$UploadPdfSuccessState value)? success,
    TResult? Function(_$UploadPdfErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UploadPdfIdleState value)? idle,
    TResult Function(_$UploadPdfUploadingState value)? uploading,
    TResult Function(_$UploadPdfSuccessState value)? success,
    TResult Function(_$UploadPdfErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$UploadPdfErrorState extends UploadPdfState {
  const factory _$UploadPdfErrorState({final String message}) =
      _$$UploadPdfErrorStateImpl;
  const _$UploadPdfErrorState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$$UploadPdfErrorStateImplCopyWith<_$$UploadPdfErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
