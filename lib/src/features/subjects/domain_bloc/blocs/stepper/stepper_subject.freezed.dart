// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stepper_subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StepperSubjectState {
  List<List<String>> get filters => throw _privateConstructorUsedError;
  List<Map<String, String>> get selectedFilters =>
      throw _privateConstructorUsedError;
  int get currentStep => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)
        idle,
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)
        processing,
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)
        successful,
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String? errorMessage)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        idle,
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        processing,
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        successful,
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String? errorMessage)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        idle,
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        processing,
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        successful,
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String? errorMessage)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleStepperSubjectState value) idle,
    required TResult Function(_$LoadingItemsStepperSubjectState value)
        processing,
    required TResult Function(_$LoadedItemStepperSubjectState value) successful,
    required TResult Function(_$ErrorStepperSubjectState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleStepperSubjectState value)? idle,
    TResult? Function(_$LoadingItemsStepperSubjectState value)? processing,
    TResult? Function(_$LoadedItemStepperSubjectState value)? successful,
    TResult? Function(_$ErrorStepperSubjectState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleStepperSubjectState value)? idle,
    TResult Function(_$LoadingItemsStepperSubjectState value)? processing,
    TResult Function(_$LoadedItemStepperSubjectState value)? successful,
    TResult Function(_$ErrorStepperSubjectState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StepperSubjectStateCopyWith<StepperSubjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepperSubjectStateCopyWith<$Res> {
  factory $StepperSubjectStateCopyWith(
          StepperSubjectState value, $Res Function(StepperSubjectState) then) =
      _$StepperSubjectStateCopyWithImpl<$Res, StepperSubjectState>;
  @useResult
  $Res call(
      {List<List<String>> filters,
      List<Map<String, String>> selectedFilters,
      int currentStep});
}

/// @nodoc
class _$StepperSubjectStateCopyWithImpl<$Res, $Val extends StepperSubjectState>
    implements $StepperSubjectStateCopyWith<$Res> {
  _$StepperSubjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? selectedFilters = null,
    Object? currentStep = null,
  }) {
    return _then(_value.copyWith(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      selectedFilters: null == selectedFilters
          ? _value.selectedFilters
          : selectedFilters // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$IdleStepperSubjectStateImplCopyWith<$Res>
    implements $StepperSubjectStateCopyWith<$Res> {
  factory _$$$IdleStepperSubjectStateImplCopyWith(
          _$$IdleStepperSubjectStateImpl value,
          $Res Function(_$$IdleStepperSubjectStateImpl) then) =
      __$$$IdleStepperSubjectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<List<String>> filters,
      List<Map<String, String>> selectedFilters,
      int currentStep,
      String message});
}

/// @nodoc
class __$$$IdleStepperSubjectStateImplCopyWithImpl<$Res>
    extends _$StepperSubjectStateCopyWithImpl<$Res,
        _$$IdleStepperSubjectStateImpl>
    implements _$$$IdleStepperSubjectStateImplCopyWith<$Res> {
  __$$$IdleStepperSubjectStateImplCopyWithImpl(
      _$$IdleStepperSubjectStateImpl _value,
      $Res Function(_$$IdleStepperSubjectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? selectedFilters = null,
    Object? currentStep = null,
    Object? message = null,
  }) {
    return _then(_$$IdleStepperSubjectStateImpl(
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      selectedFilters: null == selectedFilters
          ? _value._selectedFilters
          : selectedFilters // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$IdleStepperSubjectStateImpl extends _$IdleStepperSubjectState {
  const _$$IdleStepperSubjectStateImpl(
      {required final List<List<String>> filters,
      required final List<Map<String, String>> selectedFilters,
      required this.currentStep,
      this.message = 'Idle'})
      : _filters = filters,
        _selectedFilters = selectedFilters,
        super._();

  final List<List<String>> _filters;
  @override
  List<List<String>> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  final List<Map<String, String>> _selectedFilters;
  @override
  List<Map<String, String>> get selectedFilters {
    if (_selectedFilters is EqualUnmodifiableListView) return _selectedFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedFilters);
  }

  @override
  final int currentStep;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'StepperSubjectState.idle(filters: $filters, selectedFilters: $selectedFilters, currentStep: $currentStep, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$IdleStepperSubjectStateImpl &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            const DeepCollectionEquality()
                .equals(other._selectedFilters, _selectedFilters) &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_filters),
      const DeepCollectionEquality().hash(_selectedFilters),
      currentStep,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$IdleStepperSubjectStateImplCopyWith<_$$IdleStepperSubjectStateImpl>
      get copyWith => __$$$IdleStepperSubjectStateImplCopyWithImpl<
          _$$IdleStepperSubjectStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)
        idle,
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)
        processing,
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)
        successful,
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String? errorMessage)
        error,
  }) {
    return idle(filters, selectedFilters, currentStep, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        idle,
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        processing,
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        successful,
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String? errorMessage)?
        error,
  }) {
    return idle?.call(filters, selectedFilters, currentStep, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        idle,
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        processing,
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        successful,
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String? errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(filters, selectedFilters, currentStep, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleStepperSubjectState value) idle,
    required TResult Function(_$LoadingItemsStepperSubjectState value)
        processing,
    required TResult Function(_$LoadedItemStepperSubjectState value) successful,
    required TResult Function(_$ErrorStepperSubjectState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleStepperSubjectState value)? idle,
    TResult? Function(_$LoadingItemsStepperSubjectState value)? processing,
    TResult? Function(_$LoadedItemStepperSubjectState value)? successful,
    TResult? Function(_$ErrorStepperSubjectState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleStepperSubjectState value)? idle,
    TResult Function(_$LoadingItemsStepperSubjectState value)? processing,
    TResult Function(_$LoadedItemStepperSubjectState value)? successful,
    TResult Function(_$ErrorStepperSubjectState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _$IdleStepperSubjectState extends StepperSubjectState {
  const factory _$IdleStepperSubjectState(
      {required final List<List<String>> filters,
      required final List<Map<String, String>> selectedFilters,
      required final int currentStep,
      final String message}) = _$$IdleStepperSubjectStateImpl;
  const _$IdleStepperSubjectState._() : super._();

  @override
  List<List<String>> get filters;
  @override
  List<Map<String, String>> get selectedFilters;
  @override
  int get currentStep;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$$IdleStepperSubjectStateImplCopyWith<_$$IdleStepperSubjectStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$LoadingItemsStepperSubjectStateImplCopyWith<$Res>
    implements $StepperSubjectStateCopyWith<$Res> {
  factory _$$$LoadingItemsStepperSubjectStateImplCopyWith(
          _$$LoadingItemsStepperSubjectStateImpl value,
          $Res Function(_$$LoadingItemsStepperSubjectStateImpl) then) =
      __$$$LoadingItemsStepperSubjectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<List<String>> filters,
      List<Map<String, String>> selectedFilters,
      int currentStep,
      String message});
}

/// @nodoc
class __$$$LoadingItemsStepperSubjectStateImplCopyWithImpl<$Res>
    extends _$StepperSubjectStateCopyWithImpl<$Res,
        _$$LoadingItemsStepperSubjectStateImpl>
    implements _$$$LoadingItemsStepperSubjectStateImplCopyWith<$Res> {
  __$$$LoadingItemsStepperSubjectStateImplCopyWithImpl(
      _$$LoadingItemsStepperSubjectStateImpl _value,
      $Res Function(_$$LoadingItemsStepperSubjectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? selectedFilters = null,
    Object? currentStep = null,
    Object? message = null,
  }) {
    return _then(_$$LoadingItemsStepperSubjectStateImpl(
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      selectedFilters: null == selectedFilters
          ? _value._selectedFilters
          : selectedFilters // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$LoadingItemsStepperSubjectStateImpl
    extends _$LoadingItemsStepperSubjectState {
  const _$$LoadingItemsStepperSubjectStateImpl(
      {required final List<List<String>> filters,
      required final List<Map<String, String>> selectedFilters,
      required this.currentStep,
      this.message = 'Processing'})
      : _filters = filters,
        _selectedFilters = selectedFilters,
        super._();

  final List<List<String>> _filters;
  @override
  List<List<String>> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  final List<Map<String, String>> _selectedFilters;
  @override
  List<Map<String, String>> get selectedFilters {
    if (_selectedFilters is EqualUnmodifiableListView) return _selectedFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedFilters);
  }

  @override
  final int currentStep;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'StepperSubjectState.processing(filters: $filters, selectedFilters: $selectedFilters, currentStep: $currentStep, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$LoadingItemsStepperSubjectStateImpl &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            const DeepCollectionEquality()
                .equals(other._selectedFilters, _selectedFilters) &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_filters),
      const DeepCollectionEquality().hash(_selectedFilters),
      currentStep,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$LoadingItemsStepperSubjectStateImplCopyWith<
          _$$LoadingItemsStepperSubjectStateImpl>
      get copyWith => __$$$LoadingItemsStepperSubjectStateImplCopyWithImpl<
          _$$LoadingItemsStepperSubjectStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)
        idle,
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)
        processing,
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)
        successful,
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String? errorMessage)
        error,
  }) {
    return processing(filters, selectedFilters, currentStep, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        idle,
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        processing,
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        successful,
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String? errorMessage)?
        error,
  }) {
    return processing?.call(filters, selectedFilters, currentStep, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        idle,
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        processing,
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        successful,
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String? errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(filters, selectedFilters, currentStep, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleStepperSubjectState value) idle,
    required TResult Function(_$LoadingItemsStepperSubjectState value)
        processing,
    required TResult Function(_$LoadedItemStepperSubjectState value) successful,
    required TResult Function(_$ErrorStepperSubjectState value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleStepperSubjectState value)? idle,
    TResult? Function(_$LoadingItemsStepperSubjectState value)? processing,
    TResult? Function(_$LoadedItemStepperSubjectState value)? successful,
    TResult? Function(_$ErrorStepperSubjectState value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleStepperSubjectState value)? idle,
    TResult Function(_$LoadingItemsStepperSubjectState value)? processing,
    TResult Function(_$LoadedItemStepperSubjectState value)? successful,
    TResult Function(_$ErrorStepperSubjectState value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _$LoadingItemsStepperSubjectState extends StepperSubjectState {
  const factory _$LoadingItemsStepperSubjectState(
      {required final List<List<String>> filters,
      required final List<Map<String, String>> selectedFilters,
      required final int currentStep,
      final String message}) = _$$LoadingItemsStepperSubjectStateImpl;
  const _$LoadingItemsStepperSubjectState._() : super._();

  @override
  List<List<String>> get filters;
  @override
  List<Map<String, String>> get selectedFilters;
  @override
  int get currentStep;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$$LoadingItemsStepperSubjectStateImplCopyWith<
          _$$LoadingItemsStepperSubjectStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$LoadedItemStepperSubjectStateImplCopyWith<$Res>
    implements $StepperSubjectStateCopyWith<$Res> {
  factory _$$$LoadedItemStepperSubjectStateImplCopyWith(
          _$$LoadedItemStepperSubjectStateImpl value,
          $Res Function(_$$LoadedItemStepperSubjectStateImpl) then) =
      __$$$LoadedItemStepperSubjectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<List<String>> filters,
      List<Map<String, String>> selectedFilters,
      int currentStep,
      String message});
}

/// @nodoc
class __$$$LoadedItemStepperSubjectStateImplCopyWithImpl<$Res>
    extends _$StepperSubjectStateCopyWithImpl<$Res,
        _$$LoadedItemStepperSubjectStateImpl>
    implements _$$$LoadedItemStepperSubjectStateImplCopyWith<$Res> {
  __$$$LoadedItemStepperSubjectStateImplCopyWithImpl(
      _$$LoadedItemStepperSubjectStateImpl _value,
      $Res Function(_$$LoadedItemStepperSubjectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? selectedFilters = null,
    Object? currentStep = null,
    Object? message = null,
  }) {
    return _then(_$$LoadedItemStepperSubjectStateImpl(
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      selectedFilters: null == selectedFilters
          ? _value._selectedFilters
          : selectedFilters // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$LoadedItemStepperSubjectStateImpl
    extends _$LoadedItemStepperSubjectState {
  const _$$LoadedItemStepperSubjectStateImpl(
      {required final List<List<String>> filters,
      required final List<Map<String, String>> selectedFilters,
      required this.currentStep,
      this.message = 'Successful'})
      : _filters = filters,
        _selectedFilters = selectedFilters,
        super._();

  final List<List<String>> _filters;
  @override
  List<List<String>> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  final List<Map<String, String>> _selectedFilters;
  @override
  List<Map<String, String>> get selectedFilters {
    if (_selectedFilters is EqualUnmodifiableListView) return _selectedFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedFilters);
  }

  @override
  final int currentStep;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'StepperSubjectState.successful(filters: $filters, selectedFilters: $selectedFilters, currentStep: $currentStep, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$LoadedItemStepperSubjectStateImpl &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            const DeepCollectionEquality()
                .equals(other._selectedFilters, _selectedFilters) &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_filters),
      const DeepCollectionEquality().hash(_selectedFilters),
      currentStep,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$LoadedItemStepperSubjectStateImplCopyWith<
          _$$LoadedItemStepperSubjectStateImpl>
      get copyWith => __$$$LoadedItemStepperSubjectStateImplCopyWithImpl<
          _$$LoadedItemStepperSubjectStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)
        idle,
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)
        processing,
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)
        successful,
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String? errorMessage)
        error,
  }) {
    return successful(filters, selectedFilters, currentStep, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        idle,
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        processing,
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        successful,
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String? errorMessage)?
        error,
  }) {
    return successful?.call(filters, selectedFilters, currentStep, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        idle,
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        processing,
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        successful,
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String? errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(filters, selectedFilters, currentStep, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleStepperSubjectState value) idle,
    required TResult Function(_$LoadingItemsStepperSubjectState value)
        processing,
    required TResult Function(_$LoadedItemStepperSubjectState value) successful,
    required TResult Function(_$ErrorStepperSubjectState value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleStepperSubjectState value)? idle,
    TResult? Function(_$LoadingItemsStepperSubjectState value)? processing,
    TResult? Function(_$LoadedItemStepperSubjectState value)? successful,
    TResult? Function(_$ErrorStepperSubjectState value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleStepperSubjectState value)? idle,
    TResult Function(_$LoadingItemsStepperSubjectState value)? processing,
    TResult Function(_$LoadedItemStepperSubjectState value)? successful,
    TResult Function(_$ErrorStepperSubjectState value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _$LoadedItemStepperSubjectState extends StepperSubjectState {
  const factory _$LoadedItemStepperSubjectState(
      {required final List<List<String>> filters,
      required final List<Map<String, String>> selectedFilters,
      required final int currentStep,
      final String message}) = _$$LoadedItemStepperSubjectStateImpl;
  const _$LoadedItemStepperSubjectState._() : super._();

  @override
  List<List<String>> get filters;
  @override
  List<Map<String, String>> get selectedFilters;
  @override
  int get currentStep;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$$LoadedItemStepperSubjectStateImplCopyWith<
          _$$LoadedItemStepperSubjectStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$ErrorStepperSubjectStateImplCopyWith<$Res>
    implements $StepperSubjectStateCopyWith<$Res> {
  factory _$$$ErrorStepperSubjectStateImplCopyWith(
          _$$ErrorStepperSubjectStateImpl value,
          $Res Function(_$$ErrorStepperSubjectStateImpl) then) =
      __$$$ErrorStepperSubjectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<List<String>> filters,
      List<Map<String, String>> selectedFilters,
      int currentStep,
      String? errorMessage});
}

/// @nodoc
class __$$$ErrorStepperSubjectStateImplCopyWithImpl<$Res>
    extends _$StepperSubjectStateCopyWithImpl<$Res,
        _$$ErrorStepperSubjectStateImpl>
    implements _$$$ErrorStepperSubjectStateImplCopyWith<$Res> {
  __$$$ErrorStepperSubjectStateImplCopyWithImpl(
      _$$ErrorStepperSubjectStateImpl _value,
      $Res Function(_$$ErrorStepperSubjectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? selectedFilters = null,
    Object? currentStep = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$$ErrorStepperSubjectStateImpl(
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      selectedFilters: null == selectedFilters
          ? _value._selectedFilters
          : selectedFilters // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$$ErrorStepperSubjectStateImpl extends _$ErrorStepperSubjectState {
  const _$$ErrorStepperSubjectStateImpl(
      {required final List<List<String>> filters,
      required final List<Map<String, String>> selectedFilters,
      required this.currentStep,
      this.errorMessage = 'Произошла ошибка'})
      : _filters = filters,
        _selectedFilters = selectedFilters,
        super._();

  final List<List<String>> _filters;
  @override
  List<List<String>> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  final List<Map<String, String>> _selectedFilters;
  @override
  List<Map<String, String>> get selectedFilters {
    if (_selectedFilters is EqualUnmodifiableListView) return _selectedFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedFilters);
  }

  @override
  final int currentStep;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'StepperSubjectState.error(filters: $filters, selectedFilters: $selectedFilters, currentStep: $currentStep, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ErrorStepperSubjectStateImpl &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            const DeepCollectionEquality()
                .equals(other._selectedFilters, _selectedFilters) &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_filters),
      const DeepCollectionEquality().hash(_selectedFilters),
      currentStep,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ErrorStepperSubjectStateImplCopyWith<_$$ErrorStepperSubjectStateImpl>
      get copyWith => __$$$ErrorStepperSubjectStateImplCopyWithImpl<
          _$$ErrorStepperSubjectStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)
        idle,
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)
        processing,
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)
        successful,
    required TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String? errorMessage)
        error,
  }) {
    return error(filters, selectedFilters, currentStep, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        idle,
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        processing,
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        successful,
    TResult? Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String? errorMessage)?
        error,
  }) {
    return error?.call(filters, selectedFilters, currentStep, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        idle,
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        processing,
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String message)?
        successful,
    TResult Function(
            List<List<String>> filters,
            List<Map<String, String>> selectedFilters,
            int currentStep,
            String? errorMessage)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(filters, selectedFilters, currentStep, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$IdleStepperSubjectState value) idle,
    required TResult Function(_$LoadingItemsStepperSubjectState value)
        processing,
    required TResult Function(_$LoadedItemStepperSubjectState value) successful,
    required TResult Function(_$ErrorStepperSubjectState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$IdleStepperSubjectState value)? idle,
    TResult? Function(_$LoadingItemsStepperSubjectState value)? processing,
    TResult? Function(_$LoadedItemStepperSubjectState value)? successful,
    TResult? Function(_$ErrorStepperSubjectState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$IdleStepperSubjectState value)? idle,
    TResult Function(_$LoadingItemsStepperSubjectState value)? processing,
    TResult Function(_$LoadedItemStepperSubjectState value)? successful,
    TResult Function(_$ErrorStepperSubjectState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$ErrorStepperSubjectState extends StepperSubjectState {
  const factory _$ErrorStepperSubjectState(
      {required final List<List<String>> filters,
      required final List<Map<String, String>> selectedFilters,
      required final int currentStep,
      final String? errorMessage}) = _$$ErrorStepperSubjectStateImpl;
  const _$ErrorStepperSubjectState._() : super._();

  @override
  List<List<String>> get filters;
  @override
  List<Map<String, String>> get selectedFilters;
  @override
  int get currentStep;
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$$ErrorStepperSubjectStateImplCopyWith<_$$ErrorStepperSubjectStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StepperSubjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextStep,
    required TResult Function() selectItem,
    required TResult Function(String newItem) addNewItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextStep,
    TResult? Function()? selectItem,
    TResult? Function(String newItem)? addNewItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextStep,
    TResult Function()? selectItem,
    TResult Function(String newItem)? addNewItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NextStepStepperSubjectEvent value) nextStep,
    required TResult Function(_$SelectItemStepperSubjectEvent value) selectItem,
    required TResult Function(_$AddNewItemStepperSubjectEvent value) addNewItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$NextStepStepperSubjectEvent value)? nextStep,
    TResult? Function(_$SelectItemStepperSubjectEvent value)? selectItem,
    TResult? Function(_$AddNewItemStepperSubjectEvent value)? addNewItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NextStepStepperSubjectEvent value)? nextStep,
    TResult Function(_$SelectItemStepperSubjectEvent value)? selectItem,
    TResult Function(_$AddNewItemStepperSubjectEvent value)? addNewItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepperSubjectEventCopyWith<$Res> {
  factory $StepperSubjectEventCopyWith(
          StepperSubjectEvent value, $Res Function(StepperSubjectEvent) then) =
      _$StepperSubjectEventCopyWithImpl<$Res, StepperSubjectEvent>;
}

/// @nodoc
class _$StepperSubjectEventCopyWithImpl<$Res, $Val extends StepperSubjectEvent>
    implements $StepperSubjectEventCopyWith<$Res> {
  _$StepperSubjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$NextStepStepperSubjectEventImplCopyWith<$Res> {
  factory _$$$NextStepStepperSubjectEventImplCopyWith(
          _$$NextStepStepperSubjectEventImpl value,
          $Res Function(_$$NextStepStepperSubjectEventImpl) then) =
      __$$$NextStepStepperSubjectEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$NextStepStepperSubjectEventImplCopyWithImpl<$Res>
    extends _$StepperSubjectEventCopyWithImpl<$Res,
        _$$NextStepStepperSubjectEventImpl>
    implements _$$$NextStepStepperSubjectEventImplCopyWith<$Res> {
  __$$$NextStepStepperSubjectEventImplCopyWithImpl(
      _$$NextStepStepperSubjectEventImpl _value,
      $Res Function(_$$NextStepStepperSubjectEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$NextStepStepperSubjectEventImpl extends _$NextStepStepperSubjectEvent
    with
        _ProcessingStateEmitter,
        _SuccessfulStateEmitter,
        _ErrorStateEmitter,
        _IdleStateEmitter {
  const _$$NextStepStepperSubjectEventImpl() : super._();

  @override
  String toString() {
    return 'StepperSubjectEvent.nextStep()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$NextStepStepperSubjectEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextStep,
    required TResult Function() selectItem,
    required TResult Function(String newItem) addNewItem,
  }) {
    return nextStep();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextStep,
    TResult? Function()? selectItem,
    TResult? Function(String newItem)? addNewItem,
  }) {
    return nextStep?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextStep,
    TResult Function()? selectItem,
    TResult Function(String newItem)? addNewItem,
    required TResult orElse(),
  }) {
    if (nextStep != null) {
      return nextStep();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NextStepStepperSubjectEvent value) nextStep,
    required TResult Function(_$SelectItemStepperSubjectEvent value) selectItem,
    required TResult Function(_$AddNewItemStepperSubjectEvent value) addNewItem,
  }) {
    return nextStep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$NextStepStepperSubjectEvent value)? nextStep,
    TResult? Function(_$SelectItemStepperSubjectEvent value)? selectItem,
    TResult? Function(_$AddNewItemStepperSubjectEvent value)? addNewItem,
  }) {
    return nextStep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NextStepStepperSubjectEvent value)? nextStep,
    TResult Function(_$SelectItemStepperSubjectEvent value)? selectItem,
    TResult Function(_$AddNewItemStepperSubjectEvent value)? addNewItem,
    required TResult orElse(),
  }) {
    if (nextStep != null) {
      return nextStep(this);
    }
    return orElse();
  }
}

abstract class _$NextStepStepperSubjectEvent extends StepperSubjectEvent
    implements
        _ProcessingStateEmitter,
        _SuccessfulStateEmitter,
        _ErrorStateEmitter,
        _IdleStateEmitter {
  const factory _$NextStepStepperSubjectEvent() =
      _$$NextStepStepperSubjectEventImpl;
  const _$NextStepStepperSubjectEvent._() : super._();
}

/// @nodoc
abstract class _$$$SelectItemStepperSubjectEventImplCopyWith<$Res> {
  factory _$$$SelectItemStepperSubjectEventImplCopyWith(
          _$$SelectItemStepperSubjectEventImpl value,
          $Res Function(_$$SelectItemStepperSubjectEventImpl) then) =
      __$$$SelectItemStepperSubjectEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$SelectItemStepperSubjectEventImplCopyWithImpl<$Res>
    extends _$StepperSubjectEventCopyWithImpl<$Res,
        _$$SelectItemStepperSubjectEventImpl>
    implements _$$$SelectItemStepperSubjectEventImplCopyWith<$Res> {
  __$$$SelectItemStepperSubjectEventImplCopyWithImpl(
      _$$SelectItemStepperSubjectEventImpl _value,
      $Res Function(_$$SelectItemStepperSubjectEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$SelectItemStepperSubjectEventImpl
    extends _$SelectItemStepperSubjectEvent {
  const _$$SelectItemStepperSubjectEventImpl() : super._();

  @override
  String toString() {
    return 'StepperSubjectEvent.selectItem()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$SelectItemStepperSubjectEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextStep,
    required TResult Function() selectItem,
    required TResult Function(String newItem) addNewItem,
  }) {
    return selectItem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextStep,
    TResult? Function()? selectItem,
    TResult? Function(String newItem)? addNewItem,
  }) {
    return selectItem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextStep,
    TResult Function()? selectItem,
    TResult Function(String newItem)? addNewItem,
    required TResult orElse(),
  }) {
    if (selectItem != null) {
      return selectItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NextStepStepperSubjectEvent value) nextStep,
    required TResult Function(_$SelectItemStepperSubjectEvent value) selectItem,
    required TResult Function(_$AddNewItemStepperSubjectEvent value) addNewItem,
  }) {
    return selectItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$NextStepStepperSubjectEvent value)? nextStep,
    TResult? Function(_$SelectItemStepperSubjectEvent value)? selectItem,
    TResult? Function(_$AddNewItemStepperSubjectEvent value)? addNewItem,
  }) {
    return selectItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NextStepStepperSubjectEvent value)? nextStep,
    TResult Function(_$SelectItemStepperSubjectEvent value)? selectItem,
    TResult Function(_$AddNewItemStepperSubjectEvent value)? addNewItem,
    required TResult orElse(),
  }) {
    if (selectItem != null) {
      return selectItem(this);
    }
    return orElse();
  }
}

abstract class _$SelectItemStepperSubjectEvent extends StepperSubjectEvent {
  const factory _$SelectItemStepperSubjectEvent() =
      _$$SelectItemStepperSubjectEventImpl;
  const _$SelectItemStepperSubjectEvent._() : super._();
}

/// @nodoc
abstract class _$$$AddNewItemStepperSubjectEventImplCopyWith<$Res> {
  factory _$$$AddNewItemStepperSubjectEventImplCopyWith(
          _$$AddNewItemStepperSubjectEventImpl value,
          $Res Function(_$$AddNewItemStepperSubjectEventImpl) then) =
      __$$$AddNewItemStepperSubjectEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newItem});
}

/// @nodoc
class __$$$AddNewItemStepperSubjectEventImplCopyWithImpl<$Res>
    extends _$StepperSubjectEventCopyWithImpl<$Res,
        _$$AddNewItemStepperSubjectEventImpl>
    implements _$$$AddNewItemStepperSubjectEventImplCopyWith<$Res> {
  __$$$AddNewItemStepperSubjectEventImplCopyWithImpl(
      _$$AddNewItemStepperSubjectEventImpl _value,
      $Res Function(_$$AddNewItemStepperSubjectEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newItem = null,
  }) {
    return _then(_$$AddNewItemStepperSubjectEventImpl(
      newItem: null == newItem
          ? _value.newItem
          : newItem // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$AddNewItemStepperSubjectEventImpl
    extends _$AddNewItemStepperSubjectEvent {
  const _$$AddNewItemStepperSubjectEventImpl({required this.newItem})
      : super._();

  @override
  final String newItem;

  @override
  String toString() {
    return 'StepperSubjectEvent.addNewItem(newItem: $newItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$AddNewItemStepperSubjectEventImpl &&
            (identical(other.newItem, newItem) || other.newItem == newItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$AddNewItemStepperSubjectEventImplCopyWith<
          _$$AddNewItemStepperSubjectEventImpl>
      get copyWith => __$$$AddNewItemStepperSubjectEventImplCopyWithImpl<
          _$$AddNewItemStepperSubjectEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextStep,
    required TResult Function() selectItem,
    required TResult Function(String newItem) addNewItem,
  }) {
    return addNewItem(newItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextStep,
    TResult? Function()? selectItem,
    TResult? Function(String newItem)? addNewItem,
  }) {
    return addNewItem?.call(newItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextStep,
    TResult Function()? selectItem,
    TResult Function(String newItem)? addNewItem,
    required TResult orElse(),
  }) {
    if (addNewItem != null) {
      return addNewItem(newItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NextStepStepperSubjectEvent value) nextStep,
    required TResult Function(_$SelectItemStepperSubjectEvent value) selectItem,
    required TResult Function(_$AddNewItemStepperSubjectEvent value) addNewItem,
  }) {
    return addNewItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$NextStepStepperSubjectEvent value)? nextStep,
    TResult? Function(_$SelectItemStepperSubjectEvent value)? selectItem,
    TResult? Function(_$AddNewItemStepperSubjectEvent value)? addNewItem,
  }) {
    return addNewItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NextStepStepperSubjectEvent value)? nextStep,
    TResult Function(_$SelectItemStepperSubjectEvent value)? selectItem,
    TResult Function(_$AddNewItemStepperSubjectEvent value)? addNewItem,
    required TResult orElse(),
  }) {
    if (addNewItem != null) {
      return addNewItem(this);
    }
    return orElse();
  }
}

abstract class _$AddNewItemStepperSubjectEvent extends StepperSubjectEvent {
  const factory _$AddNewItemStepperSubjectEvent(
      {required final String newItem}) = _$$AddNewItemStepperSubjectEventImpl;
  const _$AddNewItemStepperSubjectEvent._() : super._();

  String get newItem;
  @JsonKey(ignore: true)
  _$$$AddNewItemStepperSubjectEventImplCopyWith<
          _$$AddNewItemStepperSubjectEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
