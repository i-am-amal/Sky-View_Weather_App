// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchHomeDataEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchHomeDataEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchHomeDataEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchHomeDataEvent value) fetchHomeDataEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchHomeDataEvent value)? fetchHomeDataEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHomeDataEvent value)? fetchHomeDataEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenEventCopyWith<$Res> {
  factory $HomeScreenEventCopyWith(
          HomeScreenEvent value, $Res Function(HomeScreenEvent) then) =
      _$HomeScreenEventCopyWithImpl<$Res, HomeScreenEvent>;
}

/// @nodoc
class _$HomeScreenEventCopyWithImpl<$Res, $Val extends HomeScreenEvent>
    implements $HomeScreenEventCopyWith<$Res> {
  _$HomeScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchHomeDataEventCopyWith<$Res> {
  factory _$$FetchHomeDataEventCopyWith(_$FetchHomeDataEvent value,
          $Res Function(_$FetchHomeDataEvent) then) =
      __$$FetchHomeDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchHomeDataEventCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$FetchHomeDataEvent>
    implements _$$FetchHomeDataEventCopyWith<$Res> {
  __$$FetchHomeDataEventCopyWithImpl(
      _$FetchHomeDataEvent _value, $Res Function(_$FetchHomeDataEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchHomeDataEvent implements FetchHomeDataEvent {
  const _$FetchHomeDataEvent();

  @override
  String toString() {
    return 'HomeScreenEvent.fetchHomeDataEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchHomeDataEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchHomeDataEvent,
  }) {
    return fetchHomeDataEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchHomeDataEvent,
  }) {
    return fetchHomeDataEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchHomeDataEvent,
    required TResult orElse(),
  }) {
    if (fetchHomeDataEvent != null) {
      return fetchHomeDataEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchHomeDataEvent value) fetchHomeDataEvent,
  }) {
    return fetchHomeDataEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchHomeDataEvent value)? fetchHomeDataEvent,
  }) {
    return fetchHomeDataEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHomeDataEvent value)? fetchHomeDataEvent,
    required TResult orElse(),
  }) {
    if (fetchHomeDataEvent != null) {
      return fetchHomeDataEvent(this);
    }
    return orElse();
  }
}

abstract class FetchHomeDataEvent implements HomeScreenEvent {
  const factory FetchHomeDataEvent() = _$FetchHomeDataEvent;
}

/// @nodoc
mixin _$HomeScreenState {
  String? get weather => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get temp => throw _privateConstructorUsedError;
  double? get feelsLike => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  int? get visibility => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;
  double? get maxTemp => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? weather,
            String? name,
            double? temp,
            double? feelsLike,
            int? humidity,
            int? visibility,
            int? pressure,
            double? maxTemp,
            String? errorMsg)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? weather,
            String? name,
            double? temp,
            double? feelsLike,
            int? humidity,
            int? visibility,
            int? pressure,
            double? maxTemp,
            String? errorMsg)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? weather,
            String? name,
            double? temp,
            double? feelsLike,
            int? humidity,
            int? visibility,
            int? pressure,
            double? maxTemp,
            String? errorMsg)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call(
      {String? weather,
      String? name,
      double? temp,
      double? feelsLike,
      int? humidity,
      int? visibility,
      int? pressure,
      double? maxTemp,
      String? errorMsg});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = freezed,
    Object? name = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? humidity = freezed,
    Object? visibility = freezed,
    Object? pressure = freezed,
    Object? maxTemp = freezed,
    Object? errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      maxTemp: freezed == maxTemp
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? weather,
      String? name,
      double? temp,
      double? feelsLike,
      int? humidity,
      int? visibility,
      int? pressure,
      double? maxTemp,
      String? errorMsg});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = freezed,
    Object? name = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? humidity = freezed,
    Object? visibility = freezed,
    Object? pressure = freezed,
    Object? maxTemp = freezed,
    Object? errorMsg = freezed,
  }) {
    return _then(_$_Initial(
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      maxTemp: freezed == maxTemp
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.weather,
      this.name,
      this.temp,
      this.feelsLike,
      this.humidity,
      this.visibility,
      this.pressure,
      this.maxTemp,
      this.errorMsg});

  @override
  final String? weather;
  @override
  final String? name;
  @override
  final double? temp;
  @override
  final double? feelsLike;
  @override
  final int? humidity;
  @override
  final int? visibility;
  @override
  final int? pressure;
  @override
  final double? maxTemp;
  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'HomeScreenState.initial(weather: $weather, name: $name, temp: $temp, feelsLike: $feelsLike, humidity: $humidity, visibility: $visibility, pressure: $pressure, maxTemp: $maxTemp, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.maxTemp, maxTemp) || other.maxTemp == maxTemp) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather, name, temp, feelsLike,
      humidity, visibility, pressure, maxTemp, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? weather,
            String? name,
            double? temp,
            double? feelsLike,
            int? humidity,
            int? visibility,
            int? pressure,
            double? maxTemp,
            String? errorMsg)
        initial,
  }) {
    return initial(weather, name, temp, feelsLike, humidity, visibility,
        pressure, maxTemp, errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? weather,
            String? name,
            double? temp,
            double? feelsLike,
            int? humidity,
            int? visibility,
            int? pressure,
            double? maxTemp,
            String? errorMsg)?
        initial,
  }) {
    return initial?.call(weather, name, temp, feelsLike, humidity, visibility,
        pressure, maxTemp, errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? weather,
            String? name,
            double? temp,
            double? feelsLike,
            int? humidity,
            int? visibility,
            int? pressure,
            double? maxTemp,
            String? errorMsg)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(weather, name, temp, feelsLike, humidity, visibility,
          pressure, maxTemp, errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeScreenState {
  const factory _Initial(
      {final String? weather,
      final String? name,
      final double? temp,
      final double? feelsLike,
      final int? humidity,
      final int? visibility,
      final int? pressure,
      final double? maxTemp,
      final String? errorMsg}) = _$_Initial;

  @override
  String? get weather;
  @override
  String? get name;
  @override
  double? get temp;
  @override
  double? get feelsLike;
  @override
  int? get humidity;
  @override
  int? get visibility;
  @override
  int? get pressure;
  @override
  double? get maxTemp;
  @override
  String? get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
