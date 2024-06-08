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
    required TResult Function(String bookId) deleteBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBooks,
    TResult? Function(String bookId)? deleteBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBooks,
    TResult Function(String bookId)? deleteBook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AllBooksfetchBooksEvent value) fetchBooks,
    required TResult Function(_$DeletBookEvent value) deleteBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AllBooksfetchBooksEvent value)? fetchBooks,
    TResult? Function(_$DeletBookEvent value)? deleteBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AllBooksfetchBooksEvent value)? fetchBooks,
    TResult Function(_$DeletBookEvent value)? deleteBook,
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
abstract class _$$$AllBooksfetchBooksEventImplCopyWith<$Res> {
  factory _$$$AllBooksfetchBooksEventImplCopyWith(
          _$$AllBooksfetchBooksEventImpl value,
          $Res Function(_$$AllBooksfetchBooksEventImpl) then) =
      __$$$AllBooksfetchBooksEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$AllBooksfetchBooksEventImplCopyWithImpl<$Res>
    extends _$AllBooksEventsCopyWithImpl<$Res, _$$AllBooksfetchBooksEventImpl>
    implements _$$$AllBooksfetchBooksEventImplCopyWith<$Res> {
  __$$$AllBooksfetchBooksEventImplCopyWithImpl(
      _$$AllBooksfetchBooksEventImpl _value,
      $Res Function(_$$AllBooksfetchBooksEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$AllBooksfetchBooksEventImpl extends _$AllBooksfetchBooksEvent
    with _LoadingEmitter, _SuccessesEmitter, _ErrorEmitter, _EmptyEmitter {
  const _$$AllBooksfetchBooksEventImpl() : super._();

  @override
  String toString() {
    return 'AllBooksEvents.fetchBooks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$AllBooksfetchBooksEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBooks,
    required TResult Function(String bookId) deleteBook,
  }) {
    return fetchBooks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBooks,
    TResult? Function(String bookId)? deleteBook,
  }) {
    return fetchBooks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBooks,
    TResult Function(String bookId)? deleteBook,
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
    required TResult Function(_$AllBooksfetchBooksEvent value) fetchBooks,
    required TResult Function(_$DeletBookEvent value) deleteBook,
  }) {
    return fetchBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AllBooksfetchBooksEvent value)? fetchBooks,
    TResult? Function(_$DeletBookEvent value)? deleteBook,
  }) {
    return fetchBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AllBooksfetchBooksEvent value)? fetchBooks,
    TResult Function(_$DeletBookEvent value)? deleteBook,
    required TResult orElse(),
  }) {
    if (fetchBooks != null) {
      return fetchBooks(this);
    }
    return orElse();
  }
}

abstract class _$AllBooksfetchBooksEvent extends AllBooksEvents
    implements
        _LoadingEmitter,
        _SuccessesEmitter,
        _ErrorEmitter,
        _EmptyEmitter {
  const factory _$AllBooksfetchBooksEvent() = _$$AllBooksfetchBooksEventImpl;
  const _$AllBooksfetchBooksEvent._() : super._();
}

/// @nodoc
abstract class _$$$DeletBookEventImplCopyWith<$Res> {
  factory _$$$DeletBookEventImplCopyWith(_$$DeletBookEventImpl value,
          $Res Function(_$$DeletBookEventImpl) then) =
      __$$$DeletBookEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookId});
}

/// @nodoc
class __$$$DeletBookEventImplCopyWithImpl<$Res>
    extends _$AllBooksEventsCopyWithImpl<$Res, _$$DeletBookEventImpl>
    implements _$$$DeletBookEventImplCopyWith<$Res> {
  __$$$DeletBookEventImplCopyWithImpl(
      _$$DeletBookEventImpl _value, $Res Function(_$$DeletBookEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
  }) {
    return _then(_$$DeletBookEventImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$DeletBookEventImpl extends _$DeletBookEvent
    with _SuccessesEmitter, _ErrorEmitter {
  const _$$DeletBookEventImpl({required this.bookId}) : super._();

  @override
  final String bookId;

  @override
  String toString() {
    return 'AllBooksEvents.deleteBook(bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$DeletBookEventImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$DeletBookEventImplCopyWith<_$$DeletBookEventImpl> get copyWith =>
      __$$$DeletBookEventImplCopyWithImpl<_$$DeletBookEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBooks,
    required TResult Function(String bookId) deleteBook,
  }) {
    return deleteBook(bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBooks,
    TResult? Function(String bookId)? deleteBook,
  }) {
    return deleteBook?.call(bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBooks,
    TResult Function(String bookId)? deleteBook,
    required TResult orElse(),
  }) {
    if (deleteBook != null) {
      return deleteBook(bookId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AllBooksfetchBooksEvent value) fetchBooks,
    required TResult Function(_$DeletBookEvent value) deleteBook,
  }) {
    return deleteBook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AllBooksfetchBooksEvent value)? fetchBooks,
    TResult? Function(_$DeletBookEvent value)? deleteBook,
  }) {
    return deleteBook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AllBooksfetchBooksEvent value)? fetchBooks,
    TResult Function(_$DeletBookEvent value)? deleteBook,
    required TResult orElse(),
  }) {
    if (deleteBook != null) {
      return deleteBook(this);
    }
    return orElse();
  }
}

abstract class _$DeletBookEvent extends AllBooksEvents
    implements _SuccessesEmitter, _ErrorEmitter {
  const factory _$DeletBookEvent({required final String bookId}) =
      _$$DeletBookEventImpl;
  const _$DeletBookEvent._() : super._();

  String get bookId;
  @JsonKey(ignore: true)
  _$$$DeletBookEventImplCopyWith<_$$DeletBookEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AllBooksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BookDto> items) successful,
    required TResult Function() empty,
    required TResult Function(String errorMsg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BookDto> items)? successful,
    TResult? Function()? empty,
    TResult? Function(String errorMsg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BookDto> items)? successful,
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
    required TResult Function(List<BookDto> items) successful,
    required TResult Function() empty,
    required TResult Function(String errorMsg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BookDto> items)? successful,
    TResult? Function()? empty,
    TResult? Function(String errorMsg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BookDto> items)? successful,
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
  @useResult
  $Res call({List<BookDto> items});
}

/// @nodoc
class __$$$AllBooksSuccessfulStateImplCopyWithImpl<$Res>
    extends _$AllBooksStateCopyWithImpl<$Res, _$$AllBooksSuccessfulStateImpl>
    implements _$$$AllBooksSuccessfulStateImplCopyWith<$Res> {
  __$$$AllBooksSuccessfulStateImplCopyWithImpl(
      _$$AllBooksSuccessfulStateImpl _value,
      $Res Function(_$$AllBooksSuccessfulStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$$AllBooksSuccessfulStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BookDto>,
    ));
  }
}

/// @nodoc

class _$$AllBooksSuccessfulStateImpl extends _$AllBooksSuccessfulState {
  const _$$AllBooksSuccessfulStateImpl({required final List<BookDto> items})
      : _items = items,
        super._();

  final List<BookDto> _items;
  @override
  List<BookDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'AllBooksState.successful(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$AllBooksSuccessfulStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$AllBooksSuccessfulStateImplCopyWith<_$$AllBooksSuccessfulStateImpl>
      get copyWith => __$$$AllBooksSuccessfulStateImplCopyWithImpl<
          _$$AllBooksSuccessfulStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BookDto> items) successful,
    required TResult Function() empty,
    required TResult Function(String errorMsg) error,
  }) {
    return successful(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BookDto> items)? successful,
    TResult? Function()? empty,
    TResult? Function(String errorMsg)? error,
  }) {
    return successful?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BookDto> items)? successful,
    TResult Function()? empty,
    TResult Function(String errorMsg)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(items);
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
  const factory _$AllBooksSuccessfulState(
      {required final List<BookDto> items}) = _$$AllBooksSuccessfulStateImpl;
  const _$AllBooksSuccessfulState._() : super._();

  List<BookDto> get items;
  @JsonKey(ignore: true)
  _$$$AllBooksSuccessfulStateImplCopyWith<_$$AllBooksSuccessfulStateImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(List<BookDto> items) successful,
    required TResult Function() empty,
    required TResult Function(String errorMsg) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BookDto> items)? successful,
    TResult? Function()? empty,
    TResult? Function(String errorMsg)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BookDto> items)? successful,
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
    required TResult Function(List<BookDto> items) successful,
    required TResult Function() empty,
    required TResult Function(String errorMsg) error,
  }) {
    return error(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BookDto> items)? successful,
    TResult? Function()? empty,
    TResult? Function(String errorMsg)? error,
  }) {
    return error?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BookDto> items)? successful,
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
