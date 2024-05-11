// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_books_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllBooksEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBooks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ALlBooksfetchBooksEvent value) fetchBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ALlBooksfetchBooksEvent value)? fetchBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ALlBooksfetchBooksEvent value)? fetchBooks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllBooksEventsCopyWith<$Res> {
  factory $AllBooksEventsCopyWith(
          AllBooksEvents value, $Res Function(AllBooksEvents) then) =
      _$AllBooksEventsCopyWithImpl<$Res, AllBooksEvents>;
}

/// @nodoc
class _$AllBooksEventsCopyWithImpl<$Res, $Val extends AllBooksEvents>
    implements $AllBooksEventsCopyWith<$Res> {
  _$AllBooksEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$ALlBooksfetchBooksEventImplCopyWith<$Res> {
  factory _$$$ALlBooksfetchBooksEventImplCopyWith(
          _$$ALlBooksfetchBooksEventImpl value,
          $Res Function(_$$ALlBooksfetchBooksEventImpl) then) =
      __$$$ALlBooksfetchBooksEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$ALlBooksfetchBooksEventImplCopyWithImpl<$Res>
    extends _$AllBooksEventsCopyWithImpl<$Res, _$$ALlBooksfetchBooksEventImpl>
    implements _$$$ALlBooksfetchBooksEventImplCopyWith<$Res> {
  __$$$ALlBooksfetchBooksEventImplCopyWithImpl(
      _$$ALlBooksfetchBooksEventImpl _value,
      $Res Function(_$$ALlBooksfetchBooksEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$ALlBooksfetchBooksEventImpl extends _$ALlBooksfetchBooksEvent
    with _LoadingEmitter, _SuccessesEmitter, _ErrorEmitter, _EmptyEmitter {
  const _$$ALlBooksfetchBooksEventImpl() : super._();

  @override
  String toString() {
    return 'AllBooksEvents.fetchBooks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ALlBooksfetchBooksEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBooks,
  }) {
    return fetchBooks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBooks,
  }) {
    return fetchBooks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBooks,
    required TResult orElse(),
  }) {
    if (fetchBooks != null) {
      return fetchBooks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ALlBooksfetchBooksEvent value) fetchBooks,
  }) {
    return fetchBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ALlBooksfetchBooksEvent value)? fetchBooks,
  }) {
    return fetchBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ALlBooksfetchBooksEvent value)? fetchBooks,
    required TResult orElse(),
  }) {
    if (fetchBooks != null) {
      return fetchBooks(this);
    }
    return orElse();
  }
}

abstract class _$ALlBooksfetchBooksEvent extends AllBooksEvents
    implements
        _LoadingEmitter,
        _SuccessesEmitter,
        _ErrorEmitter,
        _EmptyEmitter {
  const factory _$ALlBooksfetchBooksEvent() = _$$ALlBooksfetchBooksEventImpl;
  const _$ALlBooksfetchBooksEvent._() : super._();
}

/// @nodoc
mixin _$AllBooksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() successful,
    required TResult Function() empty,
    required TResult Function(String errorMsg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? successful,
    TResult? Function()? empty,
    TResult? Function(String errorMsg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? successful,
    TResult Function()? empty,
    TResult Function(String errorMsg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AllBooksLoadingState value) loading,
    required TResult Function(_$AllBooksSuccessfulState value) successful,
    required TResult Function(_$AllBooksEmptyState value) empty,
    required TResult Function(_$AllBooksErrofulState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AllBooksLoadingState value)? loading,
    TResult? Function(_$AllBooksSuccessfulState value)? successful,
    TResult? Function(_$AllBooksEmptyState value)? empty,
    TResult? Function(_$AllBooksErrofulState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AllBooksLoadingState value)? loading,
    TResult Function(_$AllBooksSuccessfulState value)? successful,
    TResult Function(_$AllBooksEmptyState value)? empty,
    TResult Function(_$AllBooksErrofulState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllBooksStateCopyWith<$Res> {
  factory $AllBooksStateCopyWith(
          AllBooksState value, $Res Function(AllBooksState) then) =
      _$AllBooksStateCopyWithImpl<$Res, AllBooksState>;
}

/// @nodoc
class _$AllBooksStateCopyWithImpl<$Res, $Val extends AllBooksState>
    implements $AllBooksStateCopyWith<$Res> {
  _$AllBooksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$AllBooksLoadingStateImplCopyWith<$Res> {
  factory _$$$AllBooksLoadingStateImplCopyWith(
          _$$AllBooksLoadingStateImpl value,
          $Res Function(_$$AllBooksLoadingStateImpl) then) =
      __$$$AllBooksLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$AllBooksLoadingStateImplCopyWithImpl<$Res>
    extends _$AllBooksStateCopyWithImpl<$Res, _$$AllBooksLoadingStateImpl>
    implements _$$$AllBooksLoadingStateImplCopyWith<$Res> {
  __$$$AllBooksLoadingStateImplCopyWithImpl(_$$AllBooksLoadingStateImpl _value,
      $Res Function(_$$AllBooksLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$AllBooksLoadingStateImpl extends _$AllBooksLoadingState {
  const _$$AllBooksLoadingStateImpl() : super._();

  @override
  String toString() {
    return 'AllBooksState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$AllBooksLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() successful,
    required TResult Function() empty,
    required TResult Function(String errorMsg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? successful,
    TResult? Function()? empty,
    TResult? Function(String errorMsg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? successful,
    TResult Function()? empty,
    TResult Function(String errorMsg)? error,
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
    required TResult Function(_$AllBooksLoadingState value) loading,
    required TResult Function(_$AllBooksSuccessfulState value) successful,
    required TResult Function(_$AllBooksEmptyState value) empty,
    required TResult Function(_$AllBooksErrofulState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AllBooksLoadingState value)? loading,
    TResult? Function(_$AllBooksSuccessfulState value)? successful,
    TResult? Function(_$AllBooksEmptyState value)? empty,
    TResult? Function(_$AllBooksErrofulState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AllBooksLoadingState value)? loading,
    TResult Function(_$AllBooksSuccessfulState value)? successful,
    TResult Function(_$AllBooksEmptyState value)? empty,
    TResult Function(_$AllBooksErrofulState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$AllBooksLoadingState extends AllBooksState {
  const factory _$AllBooksLoadingState() = _$$AllBooksLoadingStateImpl;
  const _$AllBooksLoadingState._() : super._();
}

/// @nodoc
abstract class _$$$AllBooksSuccessfulStateImplCopyWith<$Res> {
  factory _$$$AllBooksSuccessfulStateImplCopyWith(
          _$$AllBooksSuccessfulStateImpl value,
          $Res Function(_$$AllBooksSuccessfulStateImpl) then) =
      __$$$AllBooksSuccessfulStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$AllBooksSuccessfulStateImplCopyWithImpl<$Res>
    extends _$AllBooksStateCopyWithImpl<$Res, _$$AllBooksSuccessfulStateImpl>
    implements _$$$AllBooksSuccessfulStateImplCopyWith<$Res> {
  __$$$AllBooksSuccessfulStateImplCopyWithImpl(
      _$$AllBooksSuccessfulStateImpl _value,
      $Res Function(_$$AllBooksSuccessfulStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$AllBooksSuccessfulStateImpl extends _$AllBooksSuccessfulState {
  const _$$AllBooksSuccessfulStateImpl() : super._();

  @override
  String toString() {
    return 'AllBooksState.successful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$AllBooksSuccessfulStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() successful,
    required TResult Function() empty,
    required TResult Function(String errorMsg) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? successful,
    TResult? Function()? empty,
    TResult? Function(String errorMsg)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? successful,
    TResult Function()? empty,
    TResult Function(String errorMsg)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AllBooksLoadingState value) loading,
    required TResult Function(_$AllBooksSuccessfulState value) successful,
    required TResult Function(_$AllBooksEmptyState value) empty,
    required TResult Function(_$AllBooksErrofulState value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AllBooksLoadingState value)? loading,
    TResult? Function(_$AllBooksSuccessfulState value)? successful,
    TResult? Function(_$AllBooksEmptyState value)? empty,
    TResult? Function(_$AllBooksErrofulState value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AllBooksLoadingState value)? loading,
    TResult Function(_$AllBooksSuccessfulState value)? successful,
    TResult Function(_$AllBooksEmptyState value)? empty,
    TResult Function(_$AllBooksErrofulState value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _$AllBooksSuccessfulState extends AllBooksState {
  const factory _$AllBooksSuccessfulState() = _$$AllBooksSuccessfulStateImpl;
  const _$AllBooksSuccessfulState._() : super._();
}

/// @nodoc
abstract class _$$$AllBooksEmptyStateImplCopyWith<$Res> {
  factory _$$$AllBooksEmptyStateImplCopyWith(_$$AllBooksEmptyStateImpl value,
          $Res Function(_$$AllBooksEmptyStateImpl) then) =
      __$$$AllBooksEmptyStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$AllBooksEmptyStateImplCopyWithImpl<$Res>
    extends _$AllBooksStateCopyWithImpl<$Res, _$$AllBooksEmptyStateImpl>
    implements _$$$AllBooksEmptyStateImplCopyWith<$Res> {
  __$$$AllBooksEmptyStateImplCopyWithImpl(_$$AllBooksEmptyStateImpl _value,
      $Res Function(_$$AllBooksEmptyStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$AllBooksEmptyStateImpl extends _$AllBooksEmptyState {
  const _$$AllBooksEmptyStateImpl() : super._();

  @override
  String toString() {
    return 'AllBooksState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$AllBooksEmptyStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() successful,
    required TResult Function() empty,
    required TResult Function(String errorMsg) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? successful,
    TResult? Function()? empty,
    TResult? Function(String errorMsg)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? successful,
    TResult Function()? empty,
    TResult Function(String errorMsg)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AllBooksLoadingState value) loading,
    required TResult Function(_$AllBooksSuccessfulState value) successful,
    required TResult Function(_$AllBooksEmptyState value) empty,
    required TResult Function(_$AllBooksErrofulState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AllBooksLoadingState value)? loading,
    TResult? Function(_$AllBooksSuccessfulState value)? successful,
    TResult? Function(_$AllBooksEmptyState value)? empty,
    TResult? Function(_$AllBooksErrofulState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AllBooksLoadingState value)? loading,
    TResult Function(_$AllBooksSuccessfulState value)? successful,
    TResult Function(_$AllBooksEmptyState value)? empty,
    TResult Function(_$AllBooksErrofulState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _$AllBooksEmptyState extends AllBooksState {
  const factory _$AllBooksEmptyState() = _$$AllBooksEmptyStateImpl;
  const _$AllBooksEmptyState._() : super._();
}

/// @nodoc
abstract class _$$$AllBooksErrofulStateImplCopyWith<$Res> {
  factory _$$$AllBooksErrofulStateImplCopyWith(
          _$$AllBooksErrofulStateImpl value,
          $Res Function(_$$AllBooksErrofulStateImpl) then) =
      __$$$AllBooksErrofulStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$$AllBooksErrofulStateImplCopyWithImpl<$Res>
    extends _$AllBooksStateCopyWithImpl<$Res, _$$AllBooksErrofulStateImpl>
    implements _$$$AllBooksErrofulStateImplCopyWith<$Res> {
  __$$$AllBooksErrofulStateImplCopyWithImpl(_$$AllBooksErrofulStateImpl _value,
      $Res Function(_$$AllBooksErrofulStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$$AllBooksErrofulStateImpl(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$AllBooksErrofulStateImpl extends _$AllBooksErrofulState {
  const _$$AllBooksErrofulStateImpl(
      {this.errorMsg = 'Произошла не извеcтная ошибка'})
      : super._();

  @override
  @JsonKey()
  final String errorMsg;

  @override
  String toString() {
    return 'AllBooksState.error(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$AllBooksErrofulStateImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$AllBooksErrofulStateImplCopyWith<_$$AllBooksErrofulStateImpl>
      get copyWith => __$$$AllBooksErrofulStateImplCopyWithImpl<
          _$$AllBooksErrofulStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() successful,
    required TResult Function() empty,
    required TResult Function(String errorMsg) error,
  }) {
    return error(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? successful,
    TResult? Function()? empty,
    TResult? Function(String errorMsg)? error,
  }) {
    return error?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? successful,
    TResult Function()? empty,
    TResult Function(String errorMsg)? error,
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
    required TResult Function(_$AllBooksLoadingState value) loading,
    required TResult Function(_$AllBooksSuccessfulState value) successful,
    required TResult Function(_$AllBooksEmptyState value) empty,
    required TResult Function(_$AllBooksErrofulState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AllBooksLoadingState value)? loading,
    TResult? Function(_$AllBooksSuccessfulState value)? successful,
    TResult? Function(_$AllBooksEmptyState value)? empty,
    TResult? Function(_$AllBooksErrofulState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AllBooksLoadingState value)? loading,
    TResult Function(_$AllBooksSuccessfulState value)? successful,
    TResult Function(_$AllBooksEmptyState value)? empty,
    TResult Function(_$AllBooksErrofulState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$AllBooksErrofulState extends AllBooksState {
  const factory _$AllBooksErrofulState({final String errorMsg}) =
      _$$AllBooksErrofulStateImpl;
  const _$AllBooksErrofulState._() : super._();

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$$AllBooksErrofulStateImplCopyWith<_$$AllBooksErrofulStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
