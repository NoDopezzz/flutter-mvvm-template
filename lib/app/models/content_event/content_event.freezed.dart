// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'content_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ContentEventTearOff {
  const _$ContentEventTearOff();

// ignore: unused_element
  Success<TData> success<TData>(TData data) {
    return Success<TData>(
      data,
    );
  }

// ignore: unused_element
  Loading<TData> loading<TData>() {
    return Loading<TData>();
  }

// ignore: unused_element
  Error<TData> error<TData>([String message]) {
    return Error<TData>(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ContentEvent = _$ContentEventTearOff();

/// @nodoc
mixin _$ContentEvent<TData> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(TData data),
    @required TResult loading(),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(TData data),
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(Success<TData> value),
    @required TResult loading(Loading<TData> value),
    @required TResult error(Error<TData> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(Success<TData> value),
    TResult loading(Loading<TData> value),
    TResult error(Error<TData> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ContentEventCopyWith<TData, $Res> {
  factory $ContentEventCopyWith(
          ContentEvent<TData> value, $Res Function(ContentEvent<TData>) then) =
      _$ContentEventCopyWithImpl<TData, $Res>;
}

/// @nodoc
class _$ContentEventCopyWithImpl<TData, $Res>
    implements $ContentEventCopyWith<TData, $Res> {
  _$ContentEventCopyWithImpl(this._value, this._then);

  final ContentEvent<TData> _value;
  // ignore: unused_field
  final $Res Function(ContentEvent<TData>) _then;
}

/// @nodoc
abstract class $SuccessCopyWith<TData, $Res> {
  factory $SuccessCopyWith(
          Success<TData> value, $Res Function(Success<TData>) then) =
      _$SuccessCopyWithImpl<TData, $Res>;
  $Res call({TData data});
}

/// @nodoc
class _$SuccessCopyWithImpl<TData, $Res>
    extends _$ContentEventCopyWithImpl<TData, $Res>
    implements $SuccessCopyWith<TData, $Res> {
  _$SuccessCopyWithImpl(
      Success<TData> _value, $Res Function(Success<TData>) _then)
      : super(_value, (v) => _then(v as Success<TData>));

  @override
  Success<TData> get _value => super._value as Success<TData>;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Success<TData>(
      data == freezed ? _value.data : data as TData,
    ));
  }
}

/// @nodoc
class _$Success<TData> with DiagnosticableTreeMixin implements Success<TData> {
  const _$Success(this.data) : assert(data != null);

  @override
  final TData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContentEvent<$TData>.success(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContentEvent<$TData>.success'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success<TData> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<TData, Success<TData>> get copyWith =>
      _$SuccessCopyWithImpl<TData, Success<TData>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(TData data),
    @required TResult loading(),
    @required TResult error(String message),
  }) {
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(TData data),
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(Success<TData> value),
    @required TResult loading(Loading<TData> value),
    @required TResult error(Error<TData> value),
  }) {
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(Success<TData> value),
    TResult loading(Loading<TData> value),
    TResult error(Error<TData> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<TData> implements ContentEvent<TData> {
  const factory Success(TData data) = _$Success<TData>;

  TData get data;
  @JsonKey(ignore: true)
  $SuccessCopyWith<TData, Success<TData>> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<TData, $Res> {
  factory $LoadingCopyWith(
          Loading<TData> value, $Res Function(Loading<TData>) then) =
      _$LoadingCopyWithImpl<TData, $Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<TData, $Res>
    extends _$ContentEventCopyWithImpl<TData, $Res>
    implements $LoadingCopyWith<TData, $Res> {
  _$LoadingCopyWithImpl(
      Loading<TData> _value, $Res Function(Loading<TData>) _then)
      : super(_value, (v) => _then(v as Loading<TData>));

  @override
  Loading<TData> get _value => super._value as Loading<TData>;
}

/// @nodoc
class _$Loading<TData> with DiagnosticableTreeMixin implements Loading<TData> {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContentEvent<$TData>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContentEvent<$TData>.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading<TData>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(TData data),
    @required TResult loading(),
    @required TResult error(String message),
  }) {
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(TData data),
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(Success<TData> value),
    @required TResult loading(Loading<TData> value),
    @required TResult error(Error<TData> value),
  }) {
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(Success<TData> value),
    TResult loading(Loading<TData> value),
    TResult error(Error<TData> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<TData> implements ContentEvent<TData> {
  const factory Loading() = _$Loading<TData>;
}

/// @nodoc
abstract class $ErrorCopyWith<TData, $Res> {
  factory $ErrorCopyWith(Error<TData> value, $Res Function(Error<TData>) then) =
      _$ErrorCopyWithImpl<TData, $Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<TData, $Res>
    extends _$ContentEventCopyWithImpl<TData, $Res>
    implements $ErrorCopyWith<TData, $Res> {
  _$ErrorCopyWithImpl(Error<TData> _value, $Res Function(Error<TData>) _then)
      : super(_value, (v) => _then(v as Error<TData>));

  @override
  Error<TData> get _value => super._value as Error<TData>;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(Error<TData>(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$Error<TData> with DiagnosticableTreeMixin implements Error<TData> {
  const _$Error([this.message]);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContentEvent<$TData>.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContentEvent<$TData>.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error<TData> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<TData, Error<TData>> get copyWith =>
      _$ErrorCopyWithImpl<TData, Error<TData>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(TData data),
    @required TResult loading(),
    @required TResult error(String message),
  }) {
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(TData data),
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(Success<TData> value),
    @required TResult loading(Loading<TData> value),
    @required TResult error(Error<TData> value),
  }) {
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(Success<TData> value),
    TResult loading(Loading<TData> value),
    TResult error(Error<TData> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<TData> implements ContentEvent<TData> {
  const factory Error([String message]) = _$Error<TData>;

  String get message;
  @JsonKey(ignore: true)
  $ErrorCopyWith<TData, Error<TData>> get copyWith;
}
