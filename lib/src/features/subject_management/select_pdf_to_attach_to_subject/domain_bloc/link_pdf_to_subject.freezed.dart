// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_pdf_to_subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LinkPdfToSubjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPdf,
    required TResult Function(int subjectId, String bookId) linkPdf,
    required TResult Function(int subjectId, String bookId) unlink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllPdf,
    TResult? Function(int subjectId, String bookId)? linkPdf,
    TResult? Function(int subjectId, String bookId)? unlink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPdf,
    TResult Function(int subjectId, String bookId)? linkPdf,
    TResult Function(int subjectId, String bookId)? unlink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$FetchLinkPdfToSubjectEvent value) fetchAllPdf,
    required TResult Function(_$LinkPdfLinkPdfToSubjectEvent value) linkPdf,
    required TResult Function(_$UnlinkPdfLinkPdfToSubjectEvent value) unlink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$FetchLinkPdfToSubjectEvent value)? fetchAllPdf,
    TResult? Function(_$LinkPdfLinkPdfToSubjectEvent value)? linkPdf,
    TResult? Function(_$UnlinkPdfLinkPdfToSubjectEvent value)? unlink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FetchLinkPdfToSubjectEvent value)? fetchAllPdf,
    TResult Function(_$LinkPdfLinkPdfToSubjectEvent value)? linkPdf,
    TResult Function(_$UnlinkPdfLinkPdfToSubjectEvent value)? unlink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkPdfToSubjectEventCopyWith<$Res> {
  factory $LinkPdfToSubjectEventCopyWith(LinkPdfToSubjectEvent value,
          $Res Function(LinkPdfToSubjectEvent) then) =
      _$LinkPdfToSubjectEventCopyWithImpl<$Res, LinkPdfToSubjectEvent>;
}

/// @nodoc
class _$LinkPdfToSubjectEventCopyWithImpl<$Res,
        $Val extends LinkPdfToSubjectEvent>
    implements $LinkPdfToSubjectEventCopyWith<$Res> {
  _$LinkPdfToSubjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$FetchLinkPdfToSubjectEventImplCopyWith<$Res> {
  factory _$$$FetchLinkPdfToSubjectEventImplCopyWith(
          _$$FetchLinkPdfToSubjectEventImpl value,
          $Res Function(_$$FetchLinkPdfToSubjectEventImpl) then) =
      __$$$FetchLinkPdfToSubjectEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$FetchLinkPdfToSubjectEventImplCopyWithImpl<$Res>
    extends _$LinkPdfToSubjectEventCopyWithImpl<$Res,
        _$$FetchLinkPdfToSubjectEventImpl>
    implements _$$$FetchLinkPdfToSubjectEventImplCopyWith<$Res> {
  __$$$FetchLinkPdfToSubjectEventImplCopyWithImpl(
      _$$FetchLinkPdfToSubjectEventImpl _value,
      $Res Function(_$$FetchLinkPdfToSubjectEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$FetchLinkPdfToSubjectEventImpl extends _$FetchLinkPdfToSubjectEvent
    with
        _SuccessStateEmitter,
        _ErrorStateEmitter,
        _LoadingStateEmitter,
        _IdleStateEmitter {
  const _$$FetchLinkPdfToSubjectEventImpl() : super._();

  @override
  String toString() {
    return 'LinkPdfToSubjectEvent.fetchAllPdf()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$FetchLinkPdfToSubjectEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPdf,
    required TResult Function(int subjectId, String bookId) linkPdf,
    required TResult Function(int subjectId, String bookId) unlink,
  }) {
    return fetchAllPdf();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllPdf,
    TResult? Function(int subjectId, String bookId)? linkPdf,
    TResult? Function(int subjectId, String bookId)? unlink,
  }) {
    return fetchAllPdf?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPdf,
    TResult Function(int subjectId, String bookId)? linkPdf,
    TResult Function(int subjectId, String bookId)? unlink,
    required TResult orElse(),
  }) {
    if (fetchAllPdf != null) {
      return fetchAllPdf();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$FetchLinkPdfToSubjectEvent value) fetchAllPdf,
    required TResult Function(_$LinkPdfLinkPdfToSubjectEvent value) linkPdf,
    required TResult Function(_$UnlinkPdfLinkPdfToSubjectEvent value) unlink,
  }) {
    return fetchAllPdf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$FetchLinkPdfToSubjectEvent value)? fetchAllPdf,
    TResult? Function(_$LinkPdfLinkPdfToSubjectEvent value)? linkPdf,
    TResult? Function(_$UnlinkPdfLinkPdfToSubjectEvent value)? unlink,
  }) {
    return fetchAllPdf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FetchLinkPdfToSubjectEvent value)? fetchAllPdf,
    TResult Function(_$LinkPdfLinkPdfToSubjectEvent value)? linkPdf,
    TResult Function(_$UnlinkPdfLinkPdfToSubjectEvent value)? unlink,
    required TResult orElse(),
  }) {
    if (fetchAllPdf != null) {
      return fetchAllPdf(this);
    }
    return orElse();
  }
}

abstract class _$FetchLinkPdfToSubjectEvent extends LinkPdfToSubjectEvent
    implements
        _SuccessStateEmitter,
        _ErrorStateEmitter,
        _LoadingStateEmitter,
        _IdleStateEmitter {
  const factory _$FetchLinkPdfToSubjectEvent() =
      _$$FetchLinkPdfToSubjectEventImpl;
  const _$FetchLinkPdfToSubjectEvent._() : super._();
}

/// @nodoc
abstract class _$$$LinkPdfLinkPdfToSubjectEventImplCopyWith<$Res> {
  factory _$$$LinkPdfLinkPdfToSubjectEventImplCopyWith(
          _$$LinkPdfLinkPdfToSubjectEventImpl value,
          $Res Function(_$$LinkPdfLinkPdfToSubjectEventImpl) then) =
      __$$$LinkPdfLinkPdfToSubjectEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int subjectId, String bookId});
}

/// @nodoc
class __$$$LinkPdfLinkPdfToSubjectEventImplCopyWithImpl<$Res>
    extends _$LinkPdfToSubjectEventCopyWithImpl<$Res,
        _$$LinkPdfLinkPdfToSubjectEventImpl>
    implements _$$$LinkPdfLinkPdfToSubjectEventImplCopyWith<$Res> {
  __$$$LinkPdfLinkPdfToSubjectEventImplCopyWithImpl(
      _$$LinkPdfLinkPdfToSubjectEventImpl _value,
      $Res Function(_$$LinkPdfLinkPdfToSubjectEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? bookId = null,
  }) {
    return _then(_$$LinkPdfLinkPdfToSubjectEventImpl(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$LinkPdfLinkPdfToSubjectEventImpl extends _$LinkPdfLinkPdfToSubjectEvent
    with _ErrorStateEmitter {
  const _$$LinkPdfLinkPdfToSubjectEventImpl(
      {required this.subjectId, required this.bookId})
      : super._();

  @override
  final int subjectId;
  @override
  final String bookId;

  @override
  String toString() {
    return 'LinkPdfToSubjectEvent.linkPdf(subjectId: $subjectId, bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$LinkPdfLinkPdfToSubjectEventImpl &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subjectId, bookId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$LinkPdfLinkPdfToSubjectEventImplCopyWith<
          _$$LinkPdfLinkPdfToSubjectEventImpl>
      get copyWith => __$$$LinkPdfLinkPdfToSubjectEventImplCopyWithImpl<
          _$$LinkPdfLinkPdfToSubjectEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPdf,
    required TResult Function(int subjectId, String bookId) linkPdf,
    required TResult Function(int subjectId, String bookId) unlink,
  }) {
    return linkPdf(subjectId, bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllPdf,
    TResult? Function(int subjectId, String bookId)? linkPdf,
    TResult? Function(int subjectId, String bookId)? unlink,
  }) {
    return linkPdf?.call(subjectId, bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPdf,
    TResult Function(int subjectId, String bookId)? linkPdf,
    TResult Function(int subjectId, String bookId)? unlink,
    required TResult orElse(),
  }) {
    if (linkPdf != null) {
      return linkPdf(subjectId, bookId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$FetchLinkPdfToSubjectEvent value) fetchAllPdf,
    required TResult Function(_$LinkPdfLinkPdfToSubjectEvent value) linkPdf,
    required TResult Function(_$UnlinkPdfLinkPdfToSubjectEvent value) unlink,
  }) {
    return linkPdf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$FetchLinkPdfToSubjectEvent value)? fetchAllPdf,
    TResult? Function(_$LinkPdfLinkPdfToSubjectEvent value)? linkPdf,
    TResult? Function(_$UnlinkPdfLinkPdfToSubjectEvent value)? unlink,
  }) {
    return linkPdf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FetchLinkPdfToSubjectEvent value)? fetchAllPdf,
    TResult Function(_$LinkPdfLinkPdfToSubjectEvent value)? linkPdf,
    TResult Function(_$UnlinkPdfLinkPdfToSubjectEvent value)? unlink,
    required TResult orElse(),
  }) {
    if (linkPdf != null) {
      return linkPdf(this);
    }
    return orElse();
  }
}

abstract class _$LinkPdfLinkPdfToSubjectEvent extends LinkPdfToSubjectEvent
    implements _ErrorStateEmitter {
  const factory _$LinkPdfLinkPdfToSubjectEvent(
      {required final int subjectId,
      required final String bookId}) = _$$LinkPdfLinkPdfToSubjectEventImpl;
  const _$LinkPdfLinkPdfToSubjectEvent._() : super._();

  int get subjectId;
  String get bookId;
  @JsonKey(ignore: true)
  _$$$LinkPdfLinkPdfToSubjectEventImplCopyWith<
          _$$LinkPdfLinkPdfToSubjectEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$UnlinkPdfLinkPdfToSubjectEventImplCopyWith<$Res> {
  factory _$$$UnlinkPdfLinkPdfToSubjectEventImplCopyWith(
          _$$UnlinkPdfLinkPdfToSubjectEventImpl value,
          $Res Function(_$$UnlinkPdfLinkPdfToSubjectEventImpl) then) =
      __$$$UnlinkPdfLinkPdfToSubjectEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int subjectId, String bookId});
}

/// @nodoc
class __$$$UnlinkPdfLinkPdfToSubjectEventImplCopyWithImpl<$Res>
    extends _$LinkPdfToSubjectEventCopyWithImpl<$Res,
        _$$UnlinkPdfLinkPdfToSubjectEventImpl>
    implements _$$$UnlinkPdfLinkPdfToSubjectEventImplCopyWith<$Res> {
  __$$$UnlinkPdfLinkPdfToSubjectEventImplCopyWithImpl(
      _$$UnlinkPdfLinkPdfToSubjectEventImpl _value,
      $Res Function(_$$UnlinkPdfLinkPdfToSubjectEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? bookId = null,
  }) {
    return _then(_$$UnlinkPdfLinkPdfToSubjectEventImpl(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$UnlinkPdfLinkPdfToSubjectEventImpl
    extends _$UnlinkPdfLinkPdfToSubjectEvent with _ErrorStateEmitter {
  const _$$UnlinkPdfLinkPdfToSubjectEventImpl(
      {required this.subjectId, required this.bookId})
      : super._();

  @override
  final int subjectId;
  @override
  final String bookId;

  @override
  String toString() {
    return 'LinkPdfToSubjectEvent.unlink(subjectId: $subjectId, bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$UnlinkPdfLinkPdfToSubjectEventImpl &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subjectId, bookId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$UnlinkPdfLinkPdfToSubjectEventImplCopyWith<
          _$$UnlinkPdfLinkPdfToSubjectEventImpl>
      get copyWith => __$$$UnlinkPdfLinkPdfToSubjectEventImplCopyWithImpl<
          _$$UnlinkPdfLinkPdfToSubjectEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPdf,
    required TResult Function(int subjectId, String bookId) linkPdf,
    required TResult Function(int subjectId, String bookId) unlink,
  }) {
    return unlink(subjectId, bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllPdf,
    TResult? Function(int subjectId, String bookId)? linkPdf,
    TResult? Function(int subjectId, String bookId)? unlink,
  }) {
    return unlink?.call(subjectId, bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPdf,
    TResult Function(int subjectId, String bookId)? linkPdf,
    TResult Function(int subjectId, String bookId)? unlink,
    required TResult orElse(),
  }) {
    if (unlink != null) {
      return unlink(subjectId, bookId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$FetchLinkPdfToSubjectEvent value) fetchAllPdf,
    required TResult Function(_$LinkPdfLinkPdfToSubjectEvent value) linkPdf,
    required TResult Function(_$UnlinkPdfLinkPdfToSubjectEvent value) unlink,
  }) {
    return unlink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$FetchLinkPdfToSubjectEvent value)? fetchAllPdf,
    TResult? Function(_$LinkPdfLinkPdfToSubjectEvent value)? linkPdf,
    TResult? Function(_$UnlinkPdfLinkPdfToSubjectEvent value)? unlink,
  }) {
    return unlink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FetchLinkPdfToSubjectEvent value)? fetchAllPdf,
    TResult Function(_$LinkPdfLinkPdfToSubjectEvent value)? linkPdf,
    TResult Function(_$UnlinkPdfLinkPdfToSubjectEvent value)? unlink,
    required TResult orElse(),
  }) {
    if (unlink != null) {
      return unlink(this);
    }
    return orElse();
  }
}

abstract class _$UnlinkPdfLinkPdfToSubjectEvent extends LinkPdfToSubjectEvent
    implements _ErrorStateEmitter {
  const factory _$UnlinkPdfLinkPdfToSubjectEvent(
      {required final int subjectId,
      required final String bookId}) = _$$UnlinkPdfLinkPdfToSubjectEventImpl;
  const _$UnlinkPdfLinkPdfToSubjectEvent._() : super._();

  int get subjectId;
  String get bookId;
  @JsonKey(ignore: true)
  _$$$UnlinkPdfLinkPdfToSubjectEventImplCopyWith<
          _$$UnlinkPdfLinkPdfToSubjectEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LinkPdfToSubjectState {
  List<BookDto> get books => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BookDto> books) idle,
    required TResult Function(List<BookDto> books) loading,
    required TResult Function(List<BookDto> books) success,
    required TResult Function(List<BookDto> books, String? errorMsg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BookDto> books)? idle,
    TResult? Function(List<BookDto> books)? loading,
    TResult? Function(List<BookDto> books)? success,
    TResult? Function(List<BookDto> books, String? errorMsg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BookDto> books)? idle,
    TResult Function(List<BookDto> books)? loading,
    TResult Function(List<BookDto> books)? success,
    TResult Function(List<BookDto> books, String? errorMsg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleLinkPdfToSubjectState value) idle,
    required TResult Function(_$LoadingLinkPdfToSubjectState value) loading,
    required TResult Function(_$SuccessLinkPdfToSubjectState value) success,
    required TResult Function(_$ErrorLinkPdfToSubjectState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleLinkPdfToSubjectState value)? idle,
    TResult? Function(_$LoadingLinkPdfToSubjectState value)? loading,
    TResult? Function(_$SuccessLinkPdfToSubjectState value)? success,
    TResult? Function(_$ErrorLinkPdfToSubjectState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleLinkPdfToSubjectState value)? idle,
    TResult Function(_$LoadingLinkPdfToSubjectState value)? loading,
    TResult Function(_$SuccessLinkPdfToSubjectState value)? success,
    TResult Function(_$ErrorLinkPdfToSubjectState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LinkPdfToSubjectStateCopyWith<LinkPdfToSubjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkPdfToSubjectStateCopyWith<$Res> {
  factory $LinkPdfToSubjectStateCopyWith(LinkPdfToSubjectState value,
          $Res Function(LinkPdfToSubjectState) then) =
      _$LinkPdfToSubjectStateCopyWithImpl<$Res, LinkPdfToSubjectState>;
  @useResult
  $Res call({List<BookDto> books});
}

/// @nodoc
class _$LinkPdfToSubjectStateCopyWithImpl<$Res,
        $Val extends LinkPdfToSubjectState>
    implements $LinkPdfToSubjectStateCopyWith<$Res> {
  _$LinkPdfToSubjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_value.copyWith(
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$IdleLinkPdfToSubjectStateImplCopyWith<$Res>
    implements $LinkPdfToSubjectStateCopyWith<$Res> {
  factory _$$$IdleLinkPdfToSubjectStateImplCopyWith(
          _$$IdleLinkPdfToSubjectStateImpl value,
          $Res Function(_$$IdleLinkPdfToSubjectStateImpl) then) =
      __$$$IdleLinkPdfToSubjectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BookDto> books});
}

/// @nodoc
class __$$$IdleLinkPdfToSubjectStateImplCopyWithImpl<$Res>
    extends _$LinkPdfToSubjectStateCopyWithImpl<$Res,
        _$$IdleLinkPdfToSubjectStateImpl>
    implements _$$$IdleLinkPdfToSubjectStateImplCopyWith<$Res> {
  __$$$IdleLinkPdfToSubjectStateImplCopyWithImpl(
      _$$IdleLinkPdfToSubjectStateImpl _value,
      $Res Function(_$$IdleLinkPdfToSubjectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_$$IdleLinkPdfToSubjectStateImpl(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookDto>,
    ));
  }
}

/// @nodoc

class _$$IdleLinkPdfToSubjectStateImpl extends _$IdleLinkPdfToSubjectState {
  const _$$IdleLinkPdfToSubjectStateImpl({required final List<BookDto> books})
      : _books = books,
        super._();

  final List<BookDto> _books;
  @override
  List<BookDto> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'LinkPdfToSubjectState.idle(books: $books)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$IdleLinkPdfToSubjectStateImpl &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$IdleLinkPdfToSubjectStateImplCopyWith<_$$IdleLinkPdfToSubjectStateImpl>
      get copyWith => __$$$IdleLinkPdfToSubjectStateImplCopyWithImpl<
          _$$IdleLinkPdfToSubjectStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BookDto> books) idle,
    required TResult Function(List<BookDto> books) loading,
    required TResult Function(List<BookDto> books) success,
    required TResult Function(List<BookDto> books, String? errorMsg) error,
  }) {
    return idle(books);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BookDto> books)? idle,
    TResult? Function(List<BookDto> books)? loading,
    TResult? Function(List<BookDto> books)? success,
    TResult? Function(List<BookDto> books, String? errorMsg)? error,
  }) {
    return idle?.call(books);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BookDto> books)? idle,
    TResult Function(List<BookDto> books)? loading,
    TResult Function(List<BookDto> books)? success,
    TResult Function(List<BookDto> books, String? errorMsg)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(books);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleLinkPdfToSubjectState value) idle,
    required TResult Function(_$LoadingLinkPdfToSubjectState value) loading,
    required TResult Function(_$SuccessLinkPdfToSubjectState value) success,
    required TResult Function(_$ErrorLinkPdfToSubjectState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleLinkPdfToSubjectState value)? idle,
    TResult? Function(_$LoadingLinkPdfToSubjectState value)? loading,
    TResult? Function(_$SuccessLinkPdfToSubjectState value)? success,
    TResult? Function(_$ErrorLinkPdfToSubjectState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleLinkPdfToSubjectState value)? idle,
    TResult Function(_$LoadingLinkPdfToSubjectState value)? loading,
    TResult Function(_$SuccessLinkPdfToSubjectState value)? success,
    TResult Function(_$ErrorLinkPdfToSubjectState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _$IdleLinkPdfToSubjectState extends LinkPdfToSubjectState {
  const factory _$IdleLinkPdfToSubjectState(
      {required final List<BookDto> books}) = _$$IdleLinkPdfToSubjectStateImpl;
  const _$IdleLinkPdfToSubjectState._() : super._();

  @override
  List<BookDto> get books;
  @override
  @JsonKey(ignore: true)
  _$$$IdleLinkPdfToSubjectStateImplCopyWith<_$$IdleLinkPdfToSubjectStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$LoadingLinkPdfToSubjectStateImplCopyWith<$Res>
    implements $LinkPdfToSubjectStateCopyWith<$Res> {
  factory _$$$LoadingLinkPdfToSubjectStateImplCopyWith(
          _$$LoadingLinkPdfToSubjectStateImpl value,
          $Res Function(_$$LoadingLinkPdfToSubjectStateImpl) then) =
      __$$$LoadingLinkPdfToSubjectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BookDto> books});
}

/// @nodoc
class __$$$LoadingLinkPdfToSubjectStateImplCopyWithImpl<$Res>
    extends _$LinkPdfToSubjectStateCopyWithImpl<$Res,
        _$$LoadingLinkPdfToSubjectStateImpl>
    implements _$$$LoadingLinkPdfToSubjectStateImplCopyWith<$Res> {
  __$$$LoadingLinkPdfToSubjectStateImplCopyWithImpl(
      _$$LoadingLinkPdfToSubjectStateImpl _value,
      $Res Function(_$$LoadingLinkPdfToSubjectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_$$LoadingLinkPdfToSubjectStateImpl(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookDto>,
    ));
  }
}

/// @nodoc

class _$$LoadingLinkPdfToSubjectStateImpl
    extends _$LoadingLinkPdfToSubjectState {
  const _$$LoadingLinkPdfToSubjectStateImpl(
      {required final List<BookDto> books})
      : _books = books,
        super._();

  final List<BookDto> _books;
  @override
  List<BookDto> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'LinkPdfToSubjectState.loading(books: $books)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$LoadingLinkPdfToSubjectStateImpl &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$LoadingLinkPdfToSubjectStateImplCopyWith<
          _$$LoadingLinkPdfToSubjectStateImpl>
      get copyWith => __$$$LoadingLinkPdfToSubjectStateImplCopyWithImpl<
          _$$LoadingLinkPdfToSubjectStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BookDto> books) idle,
    required TResult Function(List<BookDto> books) loading,
    required TResult Function(List<BookDto> books) success,
    required TResult Function(List<BookDto> books, String? errorMsg) error,
  }) {
    return loading(books);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BookDto> books)? idle,
    TResult? Function(List<BookDto> books)? loading,
    TResult? Function(List<BookDto> books)? success,
    TResult? Function(List<BookDto> books, String? errorMsg)? error,
  }) {
    return loading?.call(books);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BookDto> books)? idle,
    TResult Function(List<BookDto> books)? loading,
    TResult Function(List<BookDto> books)? success,
    TResult Function(List<BookDto> books, String? errorMsg)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(books);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleLinkPdfToSubjectState value) idle,
    required TResult Function(_$LoadingLinkPdfToSubjectState value) loading,
    required TResult Function(_$SuccessLinkPdfToSubjectState value) success,
    required TResult Function(_$ErrorLinkPdfToSubjectState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleLinkPdfToSubjectState value)? idle,
    TResult? Function(_$LoadingLinkPdfToSubjectState value)? loading,
    TResult? Function(_$SuccessLinkPdfToSubjectState value)? success,
    TResult? Function(_$ErrorLinkPdfToSubjectState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleLinkPdfToSubjectState value)? idle,
    TResult Function(_$LoadingLinkPdfToSubjectState value)? loading,
    TResult Function(_$SuccessLinkPdfToSubjectState value)? success,
    TResult Function(_$ErrorLinkPdfToSubjectState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$LoadingLinkPdfToSubjectState extends LinkPdfToSubjectState {
  const factory _$LoadingLinkPdfToSubjectState(
          {required final List<BookDto> books}) =
      _$$LoadingLinkPdfToSubjectStateImpl;
  const _$LoadingLinkPdfToSubjectState._() : super._();

  @override
  List<BookDto> get books;
  @override
  @JsonKey(ignore: true)
  _$$$LoadingLinkPdfToSubjectStateImplCopyWith<
          _$$LoadingLinkPdfToSubjectStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$SuccessLinkPdfToSubjectStateImplCopyWith<$Res>
    implements $LinkPdfToSubjectStateCopyWith<$Res> {
  factory _$$$SuccessLinkPdfToSubjectStateImplCopyWith(
          _$$SuccessLinkPdfToSubjectStateImpl value,
          $Res Function(_$$SuccessLinkPdfToSubjectStateImpl) then) =
      __$$$SuccessLinkPdfToSubjectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BookDto> books});
}

/// @nodoc
class __$$$SuccessLinkPdfToSubjectStateImplCopyWithImpl<$Res>
    extends _$LinkPdfToSubjectStateCopyWithImpl<$Res,
        _$$SuccessLinkPdfToSubjectStateImpl>
    implements _$$$SuccessLinkPdfToSubjectStateImplCopyWith<$Res> {
  __$$$SuccessLinkPdfToSubjectStateImplCopyWithImpl(
      _$$SuccessLinkPdfToSubjectStateImpl _value,
      $Res Function(_$$SuccessLinkPdfToSubjectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_$$SuccessLinkPdfToSubjectStateImpl(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookDto>,
    ));
  }
}

/// @nodoc

class _$$SuccessLinkPdfToSubjectStateImpl
    extends _$SuccessLinkPdfToSubjectState {
  const _$$SuccessLinkPdfToSubjectStateImpl(
      {required final List<BookDto> books})
      : _books = books,
        super._();

  final List<BookDto> _books;
  @override
  List<BookDto> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'LinkPdfToSubjectState.success(books: $books)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$SuccessLinkPdfToSubjectStateImpl &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$SuccessLinkPdfToSubjectStateImplCopyWith<
          _$$SuccessLinkPdfToSubjectStateImpl>
      get copyWith => __$$$SuccessLinkPdfToSubjectStateImplCopyWithImpl<
          _$$SuccessLinkPdfToSubjectStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BookDto> books) idle,
    required TResult Function(List<BookDto> books) loading,
    required TResult Function(List<BookDto> books) success,
    required TResult Function(List<BookDto> books, String? errorMsg) error,
  }) {
    return success(books);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BookDto> books)? idle,
    TResult? Function(List<BookDto> books)? loading,
    TResult? Function(List<BookDto> books)? success,
    TResult? Function(List<BookDto> books, String? errorMsg)? error,
  }) {
    return success?.call(books);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BookDto> books)? idle,
    TResult Function(List<BookDto> books)? loading,
    TResult Function(List<BookDto> books)? success,
    TResult Function(List<BookDto> books, String? errorMsg)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(books);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleLinkPdfToSubjectState value) idle,
    required TResult Function(_$LoadingLinkPdfToSubjectState value) loading,
    required TResult Function(_$SuccessLinkPdfToSubjectState value) success,
    required TResult Function(_$ErrorLinkPdfToSubjectState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleLinkPdfToSubjectState value)? idle,
    TResult? Function(_$LoadingLinkPdfToSubjectState value)? loading,
    TResult? Function(_$SuccessLinkPdfToSubjectState value)? success,
    TResult? Function(_$ErrorLinkPdfToSubjectState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleLinkPdfToSubjectState value)? idle,
    TResult Function(_$LoadingLinkPdfToSubjectState value)? loading,
    TResult Function(_$SuccessLinkPdfToSubjectState value)? success,
    TResult Function(_$ErrorLinkPdfToSubjectState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _$SuccessLinkPdfToSubjectState extends LinkPdfToSubjectState {
  const factory _$SuccessLinkPdfToSubjectState(
          {required final List<BookDto> books}) =
      _$$SuccessLinkPdfToSubjectStateImpl;
  const _$SuccessLinkPdfToSubjectState._() : super._();

  @override
  List<BookDto> get books;
  @override
  @JsonKey(ignore: true)
  _$$$SuccessLinkPdfToSubjectStateImplCopyWith<
          _$$SuccessLinkPdfToSubjectStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$ErrorLinkPdfToSubjectStateImplCopyWith<$Res>
    implements $LinkPdfToSubjectStateCopyWith<$Res> {
  factory _$$$ErrorLinkPdfToSubjectStateImplCopyWith(
          _$$ErrorLinkPdfToSubjectStateImpl value,
          $Res Function(_$$ErrorLinkPdfToSubjectStateImpl) then) =
      __$$$ErrorLinkPdfToSubjectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BookDto> books, String? errorMsg});
}

/// @nodoc
class __$$$ErrorLinkPdfToSubjectStateImplCopyWithImpl<$Res>
    extends _$LinkPdfToSubjectStateCopyWithImpl<$Res,
        _$$ErrorLinkPdfToSubjectStateImpl>
    implements _$$$ErrorLinkPdfToSubjectStateImplCopyWith<$Res> {
  __$$$ErrorLinkPdfToSubjectStateImplCopyWithImpl(
      _$$ErrorLinkPdfToSubjectStateImpl _value,
      $Res Function(_$$ErrorLinkPdfToSubjectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_$$ErrorLinkPdfToSubjectStateImpl(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookDto>,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$$ErrorLinkPdfToSubjectStateImpl extends _$ErrorLinkPdfToSubjectState {
  const _$$ErrorLinkPdfToSubjectStateImpl(
      {required final List<BookDto> books,
      this.errorMsg = 'Неизвестная ошибка'})
      : _books = books,
        super._();

  final List<BookDto> _books;
  @override
  List<BookDto> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  @JsonKey()
  final String? errorMsg;

  @override
  String toString() {
    return 'LinkPdfToSubjectState.error(books: $books, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ErrorLinkPdfToSubjectStateImpl &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_books), errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ErrorLinkPdfToSubjectStateImplCopyWith<_$$ErrorLinkPdfToSubjectStateImpl>
      get copyWith => __$$$ErrorLinkPdfToSubjectStateImplCopyWithImpl<
          _$$ErrorLinkPdfToSubjectStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BookDto> books) idle,
    required TResult Function(List<BookDto> books) loading,
    required TResult Function(List<BookDto> books) success,
    required TResult Function(List<BookDto> books, String? errorMsg) error,
  }) {
    return error(books, errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BookDto> books)? idle,
    TResult? Function(List<BookDto> books)? loading,
    TResult? Function(List<BookDto> books)? success,
    TResult? Function(List<BookDto> books, String? errorMsg)? error,
  }) {
    return error?.call(books, errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BookDto> books)? idle,
    TResult Function(List<BookDto> books)? loading,
    TResult Function(List<BookDto> books)? success,
    TResult Function(List<BookDto> books, String? errorMsg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(books, errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleLinkPdfToSubjectState value) idle,
    required TResult Function(_$LoadingLinkPdfToSubjectState value) loading,
    required TResult Function(_$SuccessLinkPdfToSubjectState value) success,
    required TResult Function(_$ErrorLinkPdfToSubjectState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleLinkPdfToSubjectState value)? idle,
    TResult? Function(_$LoadingLinkPdfToSubjectState value)? loading,
    TResult? Function(_$SuccessLinkPdfToSubjectState value)? success,
    TResult? Function(_$ErrorLinkPdfToSubjectState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleLinkPdfToSubjectState value)? idle,
    TResult Function(_$LoadingLinkPdfToSubjectState value)? loading,
    TResult Function(_$SuccessLinkPdfToSubjectState value)? success,
    TResult Function(_$ErrorLinkPdfToSubjectState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$ErrorLinkPdfToSubjectState extends LinkPdfToSubjectState {
  const factory _$ErrorLinkPdfToSubjectState(
      {required final List<BookDto> books,
      final String? errorMsg}) = _$$ErrorLinkPdfToSubjectStateImpl;
  const _$ErrorLinkPdfToSubjectState._() : super._();

  @override
  List<BookDto> get books;
  String? get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$$ErrorLinkPdfToSubjectStateImplCopyWith<_$$ErrorLinkPdfToSubjectStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
