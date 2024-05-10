// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_pdf.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectPdfEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickFile,
    required TResult Function(List<dynamic> files) selectMultiplePdf,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickFile,
    TResult? Function(List<dynamic> files)? selectMultiplePdf,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickFile,
    TResult Function(List<dynamic> files)? selectMultiplePdf,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SelectPdfPickFileEvent value) pickFile,
    required TResult Function(_$SelectMultiplePdfEvent value) selectMultiplePdf,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SelectPdfPickFileEvent value)? pickFile,
    TResult? Function(_$SelectMultiplePdfEvent value)? selectMultiplePdf,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SelectPdfPickFileEvent value)? pickFile,
    TResult Function(_$SelectMultiplePdfEvent value)? selectMultiplePdf,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectPdfEventCopyWith<$Res> {
  factory $SelectPdfEventCopyWith(
          SelectPdfEvent value, $Res Function(SelectPdfEvent) then) =
      _$SelectPdfEventCopyWithImpl<$Res, SelectPdfEvent>;
}

/// @nodoc
class _$SelectPdfEventCopyWithImpl<$Res, $Val extends SelectPdfEvent>
    implements $SelectPdfEventCopyWith<$Res> {
  _$SelectPdfEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$SelectPdfPickFileEventImplCopyWith<$Res> {
  factory _$$$SelectPdfPickFileEventImplCopyWith(
          _$$SelectPdfPickFileEventImpl value,
          $Res Function(_$$SelectPdfPickFileEventImpl) then) =
      __$$$SelectPdfPickFileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$SelectPdfPickFileEventImplCopyWithImpl<$Res>
    extends _$SelectPdfEventCopyWithImpl<$Res, _$$SelectPdfPickFileEventImpl>
    implements _$$$SelectPdfPickFileEventImplCopyWith<$Res> {
  __$$$SelectPdfPickFileEventImplCopyWithImpl(
      _$$SelectPdfPickFileEventImpl _value,
      $Res Function(_$$SelectPdfPickFileEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$SelectPdfPickFileEventImpl extends _$SelectPdfPickFileEvent
    with _IdleEmitter, _ProcessingEmitter, _SuccessEmitter, _ErrorEmitter {
  const _$$SelectPdfPickFileEventImpl() : super._();

  @override
  String toString() {
    return 'SelectPdfEvent.pickFile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$SelectPdfPickFileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickFile,
    required TResult Function(List<dynamic> files) selectMultiplePdf,
  }) {
    return pickFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickFile,
    TResult? Function(List<dynamic> files)? selectMultiplePdf,
  }) {
    return pickFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickFile,
    TResult Function(List<dynamic> files)? selectMultiplePdf,
    required TResult orElse(),
  }) {
    if (pickFile != null) {
      return pickFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SelectPdfPickFileEvent value) pickFile,
    required TResult Function(_$SelectMultiplePdfEvent value) selectMultiplePdf,
  }) {
    return pickFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SelectPdfPickFileEvent value)? pickFile,
    TResult? Function(_$SelectMultiplePdfEvent value)? selectMultiplePdf,
  }) {
    return pickFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SelectPdfPickFileEvent value)? pickFile,
    TResult Function(_$SelectMultiplePdfEvent value)? selectMultiplePdf,
    required TResult orElse(),
  }) {
    if (pickFile != null) {
      return pickFile(this);
    }
    return orElse();
  }
}

abstract class _$SelectPdfPickFileEvent extends SelectPdfEvent
    implements
        _IdleEmitter,
        _ProcessingEmitter,
        _SuccessEmitter,
        _ErrorEmitter {
  const factory _$SelectPdfPickFileEvent() = _$$SelectPdfPickFileEventImpl;
  const _$SelectPdfPickFileEvent._() : super._();
}

/// @nodoc
abstract class _$$$SelectMultiplePdfEventImplCopyWith<$Res> {
  factory _$$$SelectMultiplePdfEventImplCopyWith(
          _$$SelectMultiplePdfEventImpl value,
          $Res Function(_$$SelectMultiplePdfEventImpl) then) =
      __$$$SelectMultiplePdfEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> files});
}

/// @nodoc
class __$$$SelectMultiplePdfEventImplCopyWithImpl<$Res>
    extends _$SelectPdfEventCopyWithImpl<$Res, _$$SelectMultiplePdfEventImpl>
    implements _$$$SelectMultiplePdfEventImplCopyWith<$Res> {
  __$$$SelectMultiplePdfEventImplCopyWithImpl(
      _$$SelectMultiplePdfEventImpl _value,
      $Res Function(_$$SelectMultiplePdfEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_$$SelectMultiplePdfEventImpl(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$$SelectMultiplePdfEventImpl extends _$SelectMultiplePdfEvent
    with _IdleEmitter, _ProcessingEmitter, _SuccessEmitter, _ErrorEmitter {
  const _$$SelectMultiplePdfEventImpl({required final List<dynamic> files})
      : _files = files,
        super._();

  final List<dynamic> _files;
  @override
  List<dynamic> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'SelectPdfEvent.selectMultiplePdf(files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$SelectMultiplePdfEventImpl &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$SelectMultiplePdfEventImplCopyWith<_$$SelectMultiplePdfEventImpl>
      get copyWith => __$$$SelectMultiplePdfEventImplCopyWithImpl<
          _$$SelectMultiplePdfEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickFile,
    required TResult Function(List<dynamic> files) selectMultiplePdf,
  }) {
    return selectMultiplePdf(files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickFile,
    TResult? Function(List<dynamic> files)? selectMultiplePdf,
  }) {
    return selectMultiplePdf?.call(files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickFile,
    TResult Function(List<dynamic> files)? selectMultiplePdf,
    required TResult orElse(),
  }) {
    if (selectMultiplePdf != null) {
      return selectMultiplePdf(files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SelectPdfPickFileEvent value) pickFile,
    required TResult Function(_$SelectMultiplePdfEvent value) selectMultiplePdf,
  }) {
    return selectMultiplePdf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SelectPdfPickFileEvent value)? pickFile,
    TResult? Function(_$SelectMultiplePdfEvent value)? selectMultiplePdf,
  }) {
    return selectMultiplePdf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SelectPdfPickFileEvent value)? pickFile,
    TResult Function(_$SelectMultiplePdfEvent value)? selectMultiplePdf,
    required TResult orElse(),
  }) {
    if (selectMultiplePdf != null) {
      return selectMultiplePdf(this);
    }
    return orElse();
  }
}

abstract class _$SelectMultiplePdfEvent extends SelectPdfEvent
    implements
        _IdleEmitter,
        _ProcessingEmitter,
        _SuccessEmitter,
        _ErrorEmitter {
  const factory _$SelectMultiplePdfEvent({required final List<dynamic> files}) =
      _$$SelectMultiplePdfEventImpl;
  const _$SelectMultiplePdfEvent._() : super._();

  List<dynamic> get files;
  @JsonKey(ignore: true)
  _$$$SelectMultiplePdfEventImplCopyWith<_$$SelectMultiplePdfEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectPdfState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() processing,
    required TResult Function(List<FormData> selectedFiles) success,
    required TResult Function(String? errorMsg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? processing,
    TResult? Function(List<FormData> selectedFiles)? success,
    TResult? Function(String? errorMsg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function(List<FormData> selectedFiles)? success,
    TResult Function(String? errorMsg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SelectPdfIdleState value) idle,
    required TResult Function(_$SelectPdfProcessingState value) processing,
    required TResult Function(_$SelectPdfSuccessState value) success,
    required TResult Function(_$SelectPdfErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SelectPdfIdleState value)? idle,
    TResult? Function(_$SelectPdfProcessingState value)? processing,
    TResult? Function(_$SelectPdfSuccessState value)? success,
    TResult? Function(_$SelectPdfErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SelectPdfIdleState value)? idle,
    TResult Function(_$SelectPdfProcessingState value)? processing,
    TResult Function(_$SelectPdfSuccessState value)? success,
    TResult Function(_$SelectPdfErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectPdfStateCopyWith<$Res> {
  factory $SelectPdfStateCopyWith(
          SelectPdfState value, $Res Function(SelectPdfState) then) =
      _$SelectPdfStateCopyWithImpl<$Res, SelectPdfState>;
}

/// @nodoc
class _$SelectPdfStateCopyWithImpl<$Res, $Val extends SelectPdfState>
    implements $SelectPdfStateCopyWith<$Res> {
  _$SelectPdfStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$SelectPdfIdleStateImplCopyWith<$Res> {
  factory _$$$SelectPdfIdleStateImplCopyWith(_$$SelectPdfIdleStateImpl value,
          $Res Function(_$$SelectPdfIdleStateImpl) then) =
      __$$$SelectPdfIdleStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$SelectPdfIdleStateImplCopyWithImpl<$Res>
    extends _$SelectPdfStateCopyWithImpl<$Res, _$$SelectPdfIdleStateImpl>
    implements _$$$SelectPdfIdleStateImplCopyWith<$Res> {
  __$$$SelectPdfIdleStateImplCopyWithImpl(_$$SelectPdfIdleStateImpl _value,
      $Res Function(_$$SelectPdfIdleStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$SelectPdfIdleStateImpl extends _$SelectPdfIdleState {
  const _$$SelectPdfIdleStateImpl() : super._();

  @override
  String toString() {
    return 'SelectPdfState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$SelectPdfIdleStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() processing,
    required TResult Function(List<FormData> selectedFiles) success,
    required TResult Function(String? errorMsg) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? processing,
    TResult? Function(List<FormData> selectedFiles)? success,
    TResult? Function(String? errorMsg)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function(List<FormData> selectedFiles)? success,
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
    required TResult Function(_$SelectPdfIdleState value) idle,
    required TResult Function(_$SelectPdfProcessingState value) processing,
    required TResult Function(_$SelectPdfSuccessState value) success,
    required TResult Function(_$SelectPdfErrorState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SelectPdfIdleState value)? idle,
    TResult? Function(_$SelectPdfProcessingState value)? processing,
    TResult? Function(_$SelectPdfSuccessState value)? success,
    TResult? Function(_$SelectPdfErrorState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SelectPdfIdleState value)? idle,
    TResult Function(_$SelectPdfProcessingState value)? processing,
    TResult Function(_$SelectPdfSuccessState value)? success,
    TResult Function(_$SelectPdfErrorState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _$SelectPdfIdleState extends SelectPdfState {
  const factory _$SelectPdfIdleState() = _$$SelectPdfIdleStateImpl;
  const _$SelectPdfIdleState._() : super._();
}

/// @nodoc
abstract class _$$$SelectPdfProcessingStateImplCopyWith<$Res> {
  factory _$$$SelectPdfProcessingStateImplCopyWith(
          _$$SelectPdfProcessingStateImpl value,
          $Res Function(_$$SelectPdfProcessingStateImpl) then) =
      __$$$SelectPdfProcessingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$SelectPdfProcessingStateImplCopyWithImpl<$Res>
    extends _$SelectPdfStateCopyWithImpl<$Res, _$$SelectPdfProcessingStateImpl>
    implements _$$$SelectPdfProcessingStateImplCopyWith<$Res> {
  __$$$SelectPdfProcessingStateImplCopyWithImpl(
      _$$SelectPdfProcessingStateImpl _value,
      $Res Function(_$$SelectPdfProcessingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$SelectPdfProcessingStateImpl extends _$SelectPdfProcessingState {
  const _$$SelectPdfProcessingStateImpl() : super._();

  @override
  String toString() {
    return 'SelectPdfState.processing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$SelectPdfProcessingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() processing,
    required TResult Function(List<FormData> selectedFiles) success,
    required TResult Function(String? errorMsg) error,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? processing,
    TResult? Function(List<FormData> selectedFiles)? success,
    TResult? Function(String? errorMsg)? error,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function(List<FormData> selectedFiles)? success,
    TResult Function(String? errorMsg)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SelectPdfIdleState value) idle,
    required TResult Function(_$SelectPdfProcessingState value) processing,
    required TResult Function(_$SelectPdfSuccessState value) success,
    required TResult Function(_$SelectPdfErrorState value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SelectPdfIdleState value)? idle,
    TResult? Function(_$SelectPdfProcessingState value)? processing,
    TResult? Function(_$SelectPdfSuccessState value)? success,
    TResult? Function(_$SelectPdfErrorState value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SelectPdfIdleState value)? idle,
    TResult Function(_$SelectPdfProcessingState value)? processing,
    TResult Function(_$SelectPdfSuccessState value)? success,
    TResult Function(_$SelectPdfErrorState value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _$SelectPdfProcessingState extends SelectPdfState {
  const factory _$SelectPdfProcessingState() = _$$SelectPdfProcessingStateImpl;
  const _$SelectPdfProcessingState._() : super._();
}

/// @nodoc
abstract class _$$$SelectPdfSuccessStateImplCopyWith<$Res> {
  factory _$$$SelectPdfSuccessStateImplCopyWith(
          _$$SelectPdfSuccessStateImpl value,
          $Res Function(_$$SelectPdfSuccessStateImpl) then) =
      __$$$SelectPdfSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FormData> selectedFiles});
}

/// @nodoc
class __$$$SelectPdfSuccessStateImplCopyWithImpl<$Res>
    extends _$SelectPdfStateCopyWithImpl<$Res, _$$SelectPdfSuccessStateImpl>
    implements _$$$SelectPdfSuccessStateImplCopyWith<$Res> {
  __$$$SelectPdfSuccessStateImplCopyWithImpl(
      _$$SelectPdfSuccessStateImpl _value,
      $Res Function(_$$SelectPdfSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedFiles = null,
  }) {
    return _then(_$$SelectPdfSuccessStateImpl(
      selectedFiles: null == selectedFiles
          ? _value._selectedFiles
          : selectedFiles // ignore: cast_nullable_to_non_nullable
              as List<FormData>,
    ));
  }
}

/// @nodoc

class _$$SelectPdfSuccessStateImpl extends _$SelectPdfSuccessState {
  const _$$SelectPdfSuccessStateImpl(
      {required final List<FormData> selectedFiles})
      : _selectedFiles = selectedFiles,
        super._();

  final List<FormData> _selectedFiles;
  @override
  List<FormData> get selectedFiles {
    if (_selectedFiles is EqualUnmodifiableListView) return _selectedFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedFiles);
  }

  @override
  String toString() {
    return 'SelectPdfState.success(selectedFiles: $selectedFiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$SelectPdfSuccessStateImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedFiles, _selectedFiles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedFiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$SelectPdfSuccessStateImplCopyWith<_$$SelectPdfSuccessStateImpl>
      get copyWith => __$$$SelectPdfSuccessStateImplCopyWithImpl<
          _$$SelectPdfSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() processing,
    required TResult Function(List<FormData> selectedFiles) success,
    required TResult Function(String? errorMsg) error,
  }) {
    return success(selectedFiles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? processing,
    TResult? Function(List<FormData> selectedFiles)? success,
    TResult? Function(String? errorMsg)? error,
  }) {
    return success?.call(selectedFiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function(List<FormData> selectedFiles)? success,
    TResult Function(String? errorMsg)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(selectedFiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SelectPdfIdleState value) idle,
    required TResult Function(_$SelectPdfProcessingState value) processing,
    required TResult Function(_$SelectPdfSuccessState value) success,
    required TResult Function(_$SelectPdfErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SelectPdfIdleState value)? idle,
    TResult? Function(_$SelectPdfProcessingState value)? processing,
    TResult? Function(_$SelectPdfSuccessState value)? success,
    TResult? Function(_$SelectPdfErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SelectPdfIdleState value)? idle,
    TResult Function(_$SelectPdfProcessingState value)? processing,
    TResult Function(_$SelectPdfSuccessState value)? success,
    TResult Function(_$SelectPdfErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _$SelectPdfSuccessState extends SelectPdfState {
  const factory _$SelectPdfSuccessState(
          {required final List<FormData> selectedFiles}) =
      _$$SelectPdfSuccessStateImpl;
  const _$SelectPdfSuccessState._() : super._();

  List<FormData> get selectedFiles;
  @JsonKey(ignore: true)
  _$$$SelectPdfSuccessStateImplCopyWith<_$$SelectPdfSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$SelectPdfErrorStateImplCopyWith<$Res> {
  factory _$$$SelectPdfErrorStateImplCopyWith(_$$SelectPdfErrorStateImpl value,
          $Res Function(_$$SelectPdfErrorStateImpl) then) =
      __$$$SelectPdfErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMsg});
}

/// @nodoc
class __$$$SelectPdfErrorStateImplCopyWithImpl<$Res>
    extends _$SelectPdfStateCopyWithImpl<$Res, _$$SelectPdfErrorStateImpl>
    implements _$$$SelectPdfErrorStateImplCopyWith<$Res> {
  __$$$SelectPdfErrorStateImplCopyWithImpl(_$$SelectPdfErrorStateImpl _value,
      $Res Function(_$$SelectPdfErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = freezed,
  }) {
    return _then(_$$SelectPdfErrorStateImpl(
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$$SelectPdfErrorStateImpl extends _$SelectPdfErrorState {
  const _$$SelectPdfErrorStateImpl(
      {this.errorMsg = 'Произошла не извеcтная ошибка'})
      : super._();

  @override
  @JsonKey()
  final String? errorMsg;

  @override
  String toString() {
    return 'SelectPdfState.error(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$SelectPdfErrorStateImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$SelectPdfErrorStateImplCopyWith<_$$SelectPdfErrorStateImpl>
      get copyWith =>
          __$$$SelectPdfErrorStateImplCopyWithImpl<_$$SelectPdfErrorStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() processing,
    required TResult Function(List<FormData> selectedFiles) success,
    required TResult Function(String? errorMsg) error,
  }) {
    return error(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? processing,
    TResult? Function(List<FormData> selectedFiles)? success,
    TResult? Function(String? errorMsg)? error,
  }) {
    return error?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? processing,
    TResult Function(List<FormData> selectedFiles)? success,
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
    required TResult Function(_$SelectPdfIdleState value) idle,
    required TResult Function(_$SelectPdfProcessingState value) processing,
    required TResult Function(_$SelectPdfSuccessState value) success,
    required TResult Function(_$SelectPdfErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SelectPdfIdleState value)? idle,
    TResult? Function(_$SelectPdfProcessingState value)? processing,
    TResult? Function(_$SelectPdfSuccessState value)? success,
    TResult? Function(_$SelectPdfErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SelectPdfIdleState value)? idle,
    TResult Function(_$SelectPdfProcessingState value)? processing,
    TResult Function(_$SelectPdfSuccessState value)? success,
    TResult Function(_$SelectPdfErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$SelectPdfErrorState extends SelectPdfState {
  const factory _$SelectPdfErrorState({final String? errorMsg}) =
      _$$SelectPdfErrorStateImpl;
  const _$SelectPdfErrorState._() : super._();

  String? get errorMsg;
  @JsonKey(ignore: true)
  _$$$SelectPdfErrorStateImplCopyWith<_$$SelectPdfErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
