// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ui_pages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PageConfigurationTearOff {
  const _$PageConfigurationTearOff();

  SplashConfig splash({PageAction currentPageAction = const NoPageAction()}) {
    return SplashConfig(
      currentPageAction: currentPageAction,
    );
  }

  LoginConfig login({PageAction currentPageAction = const NoPageAction()}) {
    return LoginConfig(
      currentPageAction: currentPageAction,
    );
  }

  SignUpConfig signUp({PageAction currentPageAction = const NoPageAction()}) {
    return SignUpConfig(
      currentPageAction: currentPageAction,
    );
  }

  HomeConfig home({PageAction currentPageAction = const NoPageAction()}) {
    return HomeConfig(
      currentPageAction: currentPageAction,
    );
  }
}

/// @nodoc
const $PageConfiguration = _$PageConfigurationTearOff();

/// @nodoc
mixin _$PageConfiguration {
  PageAction get currentPageAction => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageAction currentPageAction) splash,
    required TResult Function(PageAction currentPageAction) login,
    required TResult Function(PageAction currentPageAction) signUp,
    required TResult Function(PageAction currentPageAction) home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageAction currentPageAction)? splash,
    TResult Function(PageAction currentPageAction)? login,
    TResult Function(PageAction currentPageAction)? signUp,
    TResult Function(PageAction currentPageAction)? home,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashConfig value) splash,
    required TResult Function(LoginConfig value) login,
    required TResult Function(SignUpConfig value) signUp,
    required TResult Function(HomeConfig value) home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashConfig value)? splash,
    TResult Function(LoginConfig value)? login,
    TResult Function(SignUpConfig value)? signUp,
    TResult Function(HomeConfig value)? home,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageConfigurationCopyWith<PageConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageConfigurationCopyWith<$Res> {
  factory $PageConfigurationCopyWith(
          PageConfiguration value, $Res Function(PageConfiguration) then) =
      _$PageConfigurationCopyWithImpl<$Res>;
  $Res call({PageAction currentPageAction});

  $PageActionCopyWith<$Res> get currentPageAction;
}

/// @nodoc
class _$PageConfigurationCopyWithImpl<$Res>
    implements $PageConfigurationCopyWith<$Res> {
  _$PageConfigurationCopyWithImpl(this._value, this._then);

  final PageConfiguration _value;
  // ignore: unused_field
  final $Res Function(PageConfiguration) _then;

  @override
  $Res call({
    Object? currentPageAction = freezed,
  }) {
    return _then(_value.copyWith(
      currentPageAction: currentPageAction == freezed
          ? _value.currentPageAction
          : currentPageAction // ignore: cast_nullable_to_non_nullable
              as PageAction,
    ));
  }

  @override
  $PageActionCopyWith<$Res> get currentPageAction {
    return $PageActionCopyWith<$Res>(_value.currentPageAction, (value) {
      return _then(_value.copyWith(currentPageAction: value));
    });
  }
}

/// @nodoc
abstract class $SplashConfigCopyWith<$Res>
    implements $PageConfigurationCopyWith<$Res> {
  factory $SplashConfigCopyWith(
          SplashConfig value, $Res Function(SplashConfig) then) =
      _$SplashConfigCopyWithImpl<$Res>;
  @override
  $Res call({PageAction currentPageAction});

  @override
  $PageActionCopyWith<$Res> get currentPageAction;
}

/// @nodoc
class _$SplashConfigCopyWithImpl<$Res>
    extends _$PageConfigurationCopyWithImpl<$Res>
    implements $SplashConfigCopyWith<$Res> {
  _$SplashConfigCopyWithImpl(
      SplashConfig _value, $Res Function(SplashConfig) _then)
      : super(_value, (v) => _then(v as SplashConfig));

  @override
  SplashConfig get _value => super._value as SplashConfig;

  @override
  $Res call({
    Object? currentPageAction = freezed,
  }) {
    return _then(SplashConfig(
      currentPageAction: currentPageAction == freezed
          ? _value.currentPageAction
          : currentPageAction // ignore: cast_nullable_to_non_nullable
              as PageAction,
    ));
  }
}

/// @nodoc

class _$SplashConfig extends SplashConfig {
  const _$SplashConfig({this.currentPageAction = const NoPageAction()})
      : super._();

  @JsonKey(defaultValue: const NoPageAction())
  @override
  final PageAction currentPageAction;

  @override
  String toString() {
    return 'PageConfiguration.splash(currentPageAction: $currentPageAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SplashConfig &&
            (identical(other.currentPageAction, currentPageAction) ||
                const DeepCollectionEquality()
                    .equals(other.currentPageAction, currentPageAction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPageAction);

  @JsonKey(ignore: true)
  @override
  $SplashConfigCopyWith<SplashConfig> get copyWith =>
      _$SplashConfigCopyWithImpl<SplashConfig>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageAction currentPageAction) splash,
    required TResult Function(PageAction currentPageAction) login,
    required TResult Function(PageAction currentPageAction) signUp,
    required TResult Function(PageAction currentPageAction) home,
  }) {
    return splash(currentPageAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageAction currentPageAction)? splash,
    TResult Function(PageAction currentPageAction)? login,
    TResult Function(PageAction currentPageAction)? signUp,
    TResult Function(PageAction currentPageAction)? home,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash(currentPageAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashConfig value) splash,
    required TResult Function(LoginConfig value) login,
    required TResult Function(SignUpConfig value) signUp,
    required TResult Function(HomeConfig value) home,
  }) {
    return splash(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashConfig value)? splash,
    TResult Function(LoginConfig value)? login,
    TResult Function(SignUpConfig value)? signUp,
    TResult Function(HomeConfig value)? home,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash(this);
    }
    return orElse();
  }
}

abstract class SplashConfig extends PageConfiguration {
  const factory SplashConfig({PageAction currentPageAction}) = _$SplashConfig;
  const SplashConfig._() : super._();

  @override
  PageAction get currentPageAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SplashConfigCopyWith<SplashConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginConfigCopyWith<$Res>
    implements $PageConfigurationCopyWith<$Res> {
  factory $LoginConfigCopyWith(
          LoginConfig value, $Res Function(LoginConfig) then) =
      _$LoginConfigCopyWithImpl<$Res>;
  @override
  $Res call({PageAction currentPageAction});

  @override
  $PageActionCopyWith<$Res> get currentPageAction;
}

/// @nodoc
class _$LoginConfigCopyWithImpl<$Res>
    extends _$PageConfigurationCopyWithImpl<$Res>
    implements $LoginConfigCopyWith<$Res> {
  _$LoginConfigCopyWithImpl(
      LoginConfig _value, $Res Function(LoginConfig) _then)
      : super(_value, (v) => _then(v as LoginConfig));

  @override
  LoginConfig get _value => super._value as LoginConfig;

  @override
  $Res call({
    Object? currentPageAction = freezed,
  }) {
    return _then(LoginConfig(
      currentPageAction: currentPageAction == freezed
          ? _value.currentPageAction
          : currentPageAction // ignore: cast_nullable_to_non_nullable
              as PageAction,
    ));
  }
}

/// @nodoc

class _$LoginConfig extends LoginConfig {
  const _$LoginConfig({this.currentPageAction = const NoPageAction()})
      : super._();

  @JsonKey(defaultValue: const NoPageAction())
  @override
  final PageAction currentPageAction;

  @override
  String toString() {
    return 'PageConfiguration.login(currentPageAction: $currentPageAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginConfig &&
            (identical(other.currentPageAction, currentPageAction) ||
                const DeepCollectionEquality()
                    .equals(other.currentPageAction, currentPageAction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPageAction);

  @JsonKey(ignore: true)
  @override
  $LoginConfigCopyWith<LoginConfig> get copyWith =>
      _$LoginConfigCopyWithImpl<LoginConfig>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageAction currentPageAction) splash,
    required TResult Function(PageAction currentPageAction) login,
    required TResult Function(PageAction currentPageAction) signUp,
    required TResult Function(PageAction currentPageAction) home,
  }) {
    return login(currentPageAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageAction currentPageAction)? splash,
    TResult Function(PageAction currentPageAction)? login,
    TResult Function(PageAction currentPageAction)? signUp,
    TResult Function(PageAction currentPageAction)? home,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(currentPageAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashConfig value) splash,
    required TResult Function(LoginConfig value) login,
    required TResult Function(SignUpConfig value) signUp,
    required TResult Function(HomeConfig value) home,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashConfig value)? splash,
    TResult Function(LoginConfig value)? login,
    TResult Function(SignUpConfig value)? signUp,
    TResult Function(HomeConfig value)? home,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginConfig extends PageConfiguration {
  const factory LoginConfig({PageAction currentPageAction}) = _$LoginConfig;
  const LoginConfig._() : super._();

  @override
  PageAction get currentPageAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoginConfigCopyWith<LoginConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpConfigCopyWith<$Res>
    implements $PageConfigurationCopyWith<$Res> {
  factory $SignUpConfigCopyWith(
          SignUpConfig value, $Res Function(SignUpConfig) then) =
      _$SignUpConfigCopyWithImpl<$Res>;
  @override
  $Res call({PageAction currentPageAction});

  @override
  $PageActionCopyWith<$Res> get currentPageAction;
}

/// @nodoc
class _$SignUpConfigCopyWithImpl<$Res>
    extends _$PageConfigurationCopyWithImpl<$Res>
    implements $SignUpConfigCopyWith<$Res> {
  _$SignUpConfigCopyWithImpl(
      SignUpConfig _value, $Res Function(SignUpConfig) _then)
      : super(_value, (v) => _then(v as SignUpConfig));

  @override
  SignUpConfig get _value => super._value as SignUpConfig;

  @override
  $Res call({
    Object? currentPageAction = freezed,
  }) {
    return _then(SignUpConfig(
      currentPageAction: currentPageAction == freezed
          ? _value.currentPageAction
          : currentPageAction // ignore: cast_nullable_to_non_nullable
              as PageAction,
    ));
  }
}

/// @nodoc

class _$SignUpConfig extends SignUpConfig {
  const _$SignUpConfig({this.currentPageAction = const NoPageAction()})
      : super._();

  @JsonKey(defaultValue: const NoPageAction())
  @override
  final PageAction currentPageAction;

  @override
  String toString() {
    return 'PageConfiguration.signUp(currentPageAction: $currentPageAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpConfig &&
            (identical(other.currentPageAction, currentPageAction) ||
                const DeepCollectionEquality()
                    .equals(other.currentPageAction, currentPageAction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPageAction);

  @JsonKey(ignore: true)
  @override
  $SignUpConfigCopyWith<SignUpConfig> get copyWith =>
      _$SignUpConfigCopyWithImpl<SignUpConfig>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageAction currentPageAction) splash,
    required TResult Function(PageAction currentPageAction) login,
    required TResult Function(PageAction currentPageAction) signUp,
    required TResult Function(PageAction currentPageAction) home,
  }) {
    return signUp(currentPageAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageAction currentPageAction)? splash,
    TResult Function(PageAction currentPageAction)? login,
    TResult Function(PageAction currentPageAction)? signUp,
    TResult Function(PageAction currentPageAction)? home,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(currentPageAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashConfig value) splash,
    required TResult Function(LoginConfig value) login,
    required TResult Function(SignUpConfig value) signUp,
    required TResult Function(HomeConfig value) home,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashConfig value)? splash,
    TResult Function(LoginConfig value)? login,
    TResult Function(SignUpConfig value)? signUp,
    TResult Function(HomeConfig value)? home,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUpConfig extends PageConfiguration {
  const factory SignUpConfig({PageAction currentPageAction}) = _$SignUpConfig;
  const SignUpConfig._() : super._();

  @override
  PageAction get currentPageAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SignUpConfigCopyWith<SignUpConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeConfigCopyWith<$Res>
    implements $PageConfigurationCopyWith<$Res> {
  factory $HomeConfigCopyWith(
          HomeConfig value, $Res Function(HomeConfig) then) =
      _$HomeConfigCopyWithImpl<$Res>;
  @override
  $Res call({PageAction currentPageAction});

  @override
  $PageActionCopyWith<$Res> get currentPageAction;
}

/// @nodoc
class _$HomeConfigCopyWithImpl<$Res>
    extends _$PageConfigurationCopyWithImpl<$Res>
    implements $HomeConfigCopyWith<$Res> {
  _$HomeConfigCopyWithImpl(HomeConfig _value, $Res Function(HomeConfig) _then)
      : super(_value, (v) => _then(v as HomeConfig));

  @override
  HomeConfig get _value => super._value as HomeConfig;

  @override
  $Res call({
    Object? currentPageAction = freezed,
  }) {
    return _then(HomeConfig(
      currentPageAction: currentPageAction == freezed
          ? _value.currentPageAction
          : currentPageAction // ignore: cast_nullable_to_non_nullable
              as PageAction,
    ));
  }
}

/// @nodoc

class _$HomeConfig extends HomeConfig {
  const _$HomeConfig({this.currentPageAction = const NoPageAction()})
      : super._();

  @JsonKey(defaultValue: const NoPageAction())
  @override
  final PageAction currentPageAction;

  @override
  String toString() {
    return 'PageConfiguration.home(currentPageAction: $currentPageAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomeConfig &&
            (identical(other.currentPageAction, currentPageAction) ||
                const DeepCollectionEquality()
                    .equals(other.currentPageAction, currentPageAction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPageAction);

  @JsonKey(ignore: true)
  @override
  $HomeConfigCopyWith<HomeConfig> get copyWith =>
      _$HomeConfigCopyWithImpl<HomeConfig>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageAction currentPageAction) splash,
    required TResult Function(PageAction currentPageAction) login,
    required TResult Function(PageAction currentPageAction) signUp,
    required TResult Function(PageAction currentPageAction) home,
  }) {
    return home(currentPageAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageAction currentPageAction)? splash,
    TResult Function(PageAction currentPageAction)? login,
    TResult Function(PageAction currentPageAction)? signUp,
    TResult Function(PageAction currentPageAction)? home,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(currentPageAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashConfig value) splash,
    required TResult Function(LoginConfig value) login,
    required TResult Function(SignUpConfig value) signUp,
    required TResult Function(HomeConfig value) home,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashConfig value)? splash,
    TResult Function(LoginConfig value)? login,
    TResult Function(SignUpConfig value)? signUp,
    TResult Function(HomeConfig value)? home,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class HomeConfig extends PageConfiguration {
  const factory HomeConfig({PageAction currentPageAction}) = _$HomeConfig;
  const HomeConfig._() : super._();

  @override
  PageAction get currentPageAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $HomeConfigCopyWith<HomeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
