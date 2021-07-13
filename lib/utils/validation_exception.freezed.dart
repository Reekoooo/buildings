// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'validation_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValidationErrorTearOff {
  const _$ValidationErrorTearOff();

  EmailValidationError email() {
    return const EmailValidationError();
  }

  PasswordValidationError password() {
    return const PasswordValidationError();
  }

  NameValidationError name() {
    return const NameValidationError();
  }

  FlatNoValidationError no() {
    return const FlatNoValidationError();
  }

  IdValidationError id() {
    return const IdValidationError();
  }

  FromJsonValidationError json(
      {required Map<String, dynamic> json, required Object opject}) {
    return FromJsonValidationError(
      json: json,
      opject: opject,
    );
  }
}

/// @nodoc
const $ValidationError = _$ValidationErrorTearOff();

/// @nodoc
mixin _$ValidationError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() email,
    required TResult Function() password,
    required TResult Function() name,
    required TResult Function() no,
    required TResult Function() id,
    required TResult Function(Map<String, dynamic> json, Object opject) json,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? name,
    TResult Function()? no,
    TResult Function()? id,
    TResult Function(Map<String, dynamic> json, Object opject)? json,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailValidationError value) email,
    required TResult Function(PasswordValidationError value) password,
    required TResult Function(NameValidationError value) name,
    required TResult Function(FlatNoValidationError value) no,
    required TResult Function(IdValidationError value) id,
    required TResult Function(FromJsonValidationError value) json,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailValidationError value)? email,
    TResult Function(PasswordValidationError value)? password,
    TResult Function(NameValidationError value)? name,
    TResult Function(FlatNoValidationError value)? no,
    TResult Function(IdValidationError value)? id,
    TResult Function(FromJsonValidationError value)? json,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationErrorCopyWith<$Res> {
  factory $ValidationErrorCopyWith(
          ValidationError value, $Res Function(ValidationError) then) =
      _$ValidationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ValidationErrorCopyWithImpl<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  _$ValidationErrorCopyWithImpl(this._value, this._then);

  final ValidationError _value;
  // ignore: unused_field
  final $Res Function(ValidationError) _then;
}

/// @nodoc
abstract class $EmailValidationErrorCopyWith<$Res> {
  factory $EmailValidationErrorCopyWith(EmailValidationError value,
          $Res Function(EmailValidationError) then) =
      _$EmailValidationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailValidationErrorCopyWithImpl<$Res>
    extends _$ValidationErrorCopyWithImpl<$Res>
    implements $EmailValidationErrorCopyWith<$Res> {
  _$EmailValidationErrorCopyWithImpl(
      EmailValidationError _value, $Res Function(EmailValidationError) _then)
      : super(_value, (v) => _then(v as EmailValidationError));

  @override
  EmailValidationError get _value => super._value as EmailValidationError;
}

/// @nodoc

class _$EmailValidationError extends EmailValidationError
    with DiagnosticableTreeMixin {
  const _$EmailValidationError() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValidationError.email()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ValidationError.email'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailValidationError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() email,
    required TResult Function() password,
    required TResult Function() name,
    required TResult Function() no,
    required TResult Function() id,
    required TResult Function(Map<String, dynamic> json, Object opject) json,
  }) {
    return email();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? name,
    TResult Function()? no,
    TResult Function()? id,
    TResult Function(Map<String, dynamic> json, Object opject)? json,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailValidationError value) email,
    required TResult Function(PasswordValidationError value) password,
    required TResult Function(NameValidationError value) name,
    required TResult Function(FlatNoValidationError value) no,
    required TResult Function(IdValidationError value) id,
    required TResult Function(FromJsonValidationError value) json,
  }) {
    return email(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailValidationError value)? email,
    TResult Function(PasswordValidationError value)? password,
    TResult Function(NameValidationError value)? name,
    TResult Function(FlatNoValidationError value)? no,
    TResult Function(IdValidationError value)? id,
    TResult Function(FromJsonValidationError value)? json,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email(this);
    }
    return orElse();
  }
}

abstract class EmailValidationError extends ValidationError {
  const factory EmailValidationError() = _$EmailValidationError;
  const EmailValidationError._() : super._();
}

/// @nodoc
abstract class $PasswordValidationErrorCopyWith<$Res> {
  factory $PasswordValidationErrorCopyWith(PasswordValidationError value,
          $Res Function(PasswordValidationError) then) =
      _$PasswordValidationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordValidationErrorCopyWithImpl<$Res>
    extends _$ValidationErrorCopyWithImpl<$Res>
    implements $PasswordValidationErrorCopyWith<$Res> {
  _$PasswordValidationErrorCopyWithImpl(PasswordValidationError _value,
      $Res Function(PasswordValidationError) _then)
      : super(_value, (v) => _then(v as PasswordValidationError));

  @override
  PasswordValidationError get _value => super._value as PasswordValidationError;
}

/// @nodoc

class _$PasswordValidationError extends PasswordValidationError
    with DiagnosticableTreeMixin {
  const _$PasswordValidationError() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValidationError.password()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ValidationError.password'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PasswordValidationError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() email,
    required TResult Function() password,
    required TResult Function() name,
    required TResult Function() no,
    required TResult Function() id,
    required TResult Function(Map<String, dynamic> json, Object opject) json,
  }) {
    return password();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? name,
    TResult Function()? no,
    TResult Function()? id,
    TResult Function(Map<String, dynamic> json, Object opject)? json,
    required TResult orElse(),
  }) {
    if (password != null) {
      return password();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailValidationError value) email,
    required TResult Function(PasswordValidationError value) password,
    required TResult Function(NameValidationError value) name,
    required TResult Function(FlatNoValidationError value) no,
    required TResult Function(IdValidationError value) id,
    required TResult Function(FromJsonValidationError value) json,
  }) {
    return password(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailValidationError value)? email,
    TResult Function(PasswordValidationError value)? password,
    TResult Function(NameValidationError value)? name,
    TResult Function(FlatNoValidationError value)? no,
    TResult Function(IdValidationError value)? id,
    TResult Function(FromJsonValidationError value)? json,
    required TResult orElse(),
  }) {
    if (password != null) {
      return password(this);
    }
    return orElse();
  }
}

abstract class PasswordValidationError extends ValidationError {
  const factory PasswordValidationError() = _$PasswordValidationError;
  const PasswordValidationError._() : super._();
}

/// @nodoc
abstract class $NameValidationErrorCopyWith<$Res> {
  factory $NameValidationErrorCopyWith(
          NameValidationError value, $Res Function(NameValidationError) then) =
      _$NameValidationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$NameValidationErrorCopyWithImpl<$Res>
    extends _$ValidationErrorCopyWithImpl<$Res>
    implements $NameValidationErrorCopyWith<$Res> {
  _$NameValidationErrorCopyWithImpl(
      NameValidationError _value, $Res Function(NameValidationError) _then)
      : super(_value, (v) => _then(v as NameValidationError));

  @override
  NameValidationError get _value => super._value as NameValidationError;
}

/// @nodoc

class _$NameValidationError extends NameValidationError
    with DiagnosticableTreeMixin {
  const _$NameValidationError() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValidationError.name()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ValidationError.name'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NameValidationError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() email,
    required TResult Function() password,
    required TResult Function() name,
    required TResult Function() no,
    required TResult Function() id,
    required TResult Function(Map<String, dynamic> json, Object opject) json,
  }) {
    return name();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? name,
    TResult Function()? no,
    TResult Function()? id,
    TResult Function(Map<String, dynamic> json, Object opject)? json,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailValidationError value) email,
    required TResult Function(PasswordValidationError value) password,
    required TResult Function(NameValidationError value) name,
    required TResult Function(FlatNoValidationError value) no,
    required TResult Function(IdValidationError value) id,
    required TResult Function(FromJsonValidationError value) json,
  }) {
    return name(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailValidationError value)? email,
    TResult Function(PasswordValidationError value)? password,
    TResult Function(NameValidationError value)? name,
    TResult Function(FlatNoValidationError value)? no,
    TResult Function(IdValidationError value)? id,
    TResult Function(FromJsonValidationError value)? json,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name(this);
    }
    return orElse();
  }
}

abstract class NameValidationError extends ValidationError {
  const factory NameValidationError() = _$NameValidationError;
  const NameValidationError._() : super._();
}

/// @nodoc
abstract class $FlatNoValidationErrorCopyWith<$Res> {
  factory $FlatNoValidationErrorCopyWith(FlatNoValidationError value,
          $Res Function(FlatNoValidationError) then) =
      _$FlatNoValidationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$FlatNoValidationErrorCopyWithImpl<$Res>
    extends _$ValidationErrorCopyWithImpl<$Res>
    implements $FlatNoValidationErrorCopyWith<$Res> {
  _$FlatNoValidationErrorCopyWithImpl(
      FlatNoValidationError _value, $Res Function(FlatNoValidationError) _then)
      : super(_value, (v) => _then(v as FlatNoValidationError));

  @override
  FlatNoValidationError get _value => super._value as FlatNoValidationError;
}

/// @nodoc

class _$FlatNoValidationError extends FlatNoValidationError
    with DiagnosticableTreeMixin {
  const _$FlatNoValidationError() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValidationError.no()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ValidationError.no'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FlatNoValidationError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() email,
    required TResult Function() password,
    required TResult Function() name,
    required TResult Function() no,
    required TResult Function() id,
    required TResult Function(Map<String, dynamic> json, Object opject) json,
  }) {
    return no();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? name,
    TResult Function()? no,
    TResult Function()? id,
    TResult Function(Map<String, dynamic> json, Object opject)? json,
    required TResult orElse(),
  }) {
    if (no != null) {
      return no();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailValidationError value) email,
    required TResult Function(PasswordValidationError value) password,
    required TResult Function(NameValidationError value) name,
    required TResult Function(FlatNoValidationError value) no,
    required TResult Function(IdValidationError value) id,
    required TResult Function(FromJsonValidationError value) json,
  }) {
    return no(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailValidationError value)? email,
    TResult Function(PasswordValidationError value)? password,
    TResult Function(NameValidationError value)? name,
    TResult Function(FlatNoValidationError value)? no,
    TResult Function(IdValidationError value)? id,
    TResult Function(FromJsonValidationError value)? json,
    required TResult orElse(),
  }) {
    if (no != null) {
      return no(this);
    }
    return orElse();
  }
}

abstract class FlatNoValidationError extends ValidationError {
  const factory FlatNoValidationError() = _$FlatNoValidationError;
  const FlatNoValidationError._() : super._();
}

/// @nodoc
abstract class $IdValidationErrorCopyWith<$Res> {
  factory $IdValidationErrorCopyWith(
          IdValidationError value, $Res Function(IdValidationError) then) =
      _$IdValidationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdValidationErrorCopyWithImpl<$Res>
    extends _$ValidationErrorCopyWithImpl<$Res>
    implements $IdValidationErrorCopyWith<$Res> {
  _$IdValidationErrorCopyWithImpl(
      IdValidationError _value, $Res Function(IdValidationError) _then)
      : super(_value, (v) => _then(v as IdValidationError));

  @override
  IdValidationError get _value => super._value as IdValidationError;
}

/// @nodoc

class _$IdValidationError extends IdValidationError
    with DiagnosticableTreeMixin {
  const _$IdValidationError() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValidationError.id()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ValidationError.id'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IdValidationError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() email,
    required TResult Function() password,
    required TResult Function() name,
    required TResult Function() no,
    required TResult Function() id,
    required TResult Function(Map<String, dynamic> json, Object opject) json,
  }) {
    return id();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? name,
    TResult Function()? no,
    TResult Function()? id,
    TResult Function(Map<String, dynamic> json, Object opject)? json,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailValidationError value) email,
    required TResult Function(PasswordValidationError value) password,
    required TResult Function(NameValidationError value) name,
    required TResult Function(FlatNoValidationError value) no,
    required TResult Function(IdValidationError value) id,
    required TResult Function(FromJsonValidationError value) json,
  }) {
    return id(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailValidationError value)? email,
    TResult Function(PasswordValidationError value)? password,
    TResult Function(NameValidationError value)? name,
    TResult Function(FlatNoValidationError value)? no,
    TResult Function(IdValidationError value)? id,
    TResult Function(FromJsonValidationError value)? json,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this);
    }
    return orElse();
  }
}

abstract class IdValidationError extends ValidationError {
  const factory IdValidationError() = _$IdValidationError;
  const IdValidationError._() : super._();
}

/// @nodoc
abstract class $FromJsonValidationErrorCopyWith<$Res> {
  factory $FromJsonValidationErrorCopyWith(FromJsonValidationError value,
          $Res Function(FromJsonValidationError) then) =
      _$FromJsonValidationErrorCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> json, Object opject});
}

/// @nodoc
class _$FromJsonValidationErrorCopyWithImpl<$Res>
    extends _$ValidationErrorCopyWithImpl<$Res>
    implements $FromJsonValidationErrorCopyWith<$Res> {
  _$FromJsonValidationErrorCopyWithImpl(FromJsonValidationError _value,
      $Res Function(FromJsonValidationError) _then)
      : super(_value, (v) => _then(v as FromJsonValidationError));

  @override
  FromJsonValidationError get _value => super._value as FromJsonValidationError;

  @override
  $Res call({
    Object? json = freezed,
    Object? opject = freezed,
  }) {
    return _then(FromJsonValidationError(
      json: json == freezed
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      opject: opject == freezed
          ? _value.opject
          : opject // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$FromJsonValidationError extends FromJsonValidationError
    with DiagnosticableTreeMixin {
  const _$FromJsonValidationError({required this.json, required this.opject})
      : super._();

  @override
  final Map<String, dynamic> json;
  @override
  final Object opject;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValidationError.json(json: $json, opject: $opject)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValidationError.json'))
      ..add(DiagnosticsProperty('json', json))
      ..add(DiagnosticsProperty('opject', opject));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FromJsonValidationError &&
            (identical(other.json, json) ||
                const DeepCollectionEquality().equals(other.json, json)) &&
            (identical(other.opject, opject) ||
                const DeepCollectionEquality().equals(other.opject, opject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(json) ^
      const DeepCollectionEquality().hash(opject);

  @JsonKey(ignore: true)
  @override
  $FromJsonValidationErrorCopyWith<FromJsonValidationError> get copyWith =>
      _$FromJsonValidationErrorCopyWithImpl<FromJsonValidationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() email,
    required TResult Function() password,
    required TResult Function() name,
    required TResult Function() no,
    required TResult Function() id,
    required TResult Function(Map<String, dynamic> json, Object opject) json,
  }) {
    return json(this.json, opject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? name,
    TResult Function()? no,
    TResult Function()? id,
    TResult Function(Map<String, dynamic> json, Object opject)? json,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(this.json, opject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailValidationError value) email,
    required TResult Function(PasswordValidationError value) password,
    required TResult Function(NameValidationError value) name,
    required TResult Function(FlatNoValidationError value) no,
    required TResult Function(IdValidationError value) id,
    required TResult Function(FromJsonValidationError value) json,
  }) {
    return json(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailValidationError value)? email,
    TResult Function(PasswordValidationError value)? password,
    TResult Function(NameValidationError value)? name,
    TResult Function(FlatNoValidationError value)? no,
    TResult Function(IdValidationError value)? id,
    TResult Function(FromJsonValidationError value)? json,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(this);
    }
    return orElse();
  }
}

abstract class FromJsonValidationError extends ValidationError {
  const factory FromJsonValidationError(
      {required Map<String, dynamic> json,
      required Object opject}) = _$FromJsonValidationError;
  const FromJsonValidationError._() : super._();

  Map<String, dynamic> get json => throw _privateConstructorUsedError;
  Object get opject => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FromJsonValidationErrorCopyWith<FromJsonValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}
