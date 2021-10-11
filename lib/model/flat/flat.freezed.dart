// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'flat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Flat _$FlatFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return _Flat.fromJson(json);
    case 'id':
      return FlatId.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$FlatTearOff {
  const _$FlatTearOff();

  _Flat call(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson)
          required Id id,
      required Building building,
      required User owner,
      @JsonKey(toJson: _flatNoToJson, fromJson: _flatNoFromJson)
          required FlatNo flatNo,
      @JsonKey(toJson: _balanceToJson, fromJson: _balanceFromJson)
          required Balance balance,
      List<User> residents = const []}) {
    return _Flat(
      id: id,
      building: building,
      owner: owner,
      flatNo: flatNo,
      balance: balance,
      residents: residents,
    );
  }

  FlatId id(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson) required Id id}) {
    return FlatId(
      id: id,
    );
  }

  Flat fromJson(Map<String, Object> json) {
    return Flat.fromJson(json);
  }
}

/// @nodoc
const $Flat = _$FlatTearOff();

/// @nodoc
mixin _$Flat {
  @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
  Id get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            Building building,
            User owner,
            @JsonKey(toJson: _flatNoToJson, fromJson: _flatNoFromJson)
                FlatNo flatNo,
            @JsonKey(toJson: _balanceToJson, fromJson: _balanceFromJson)
                Balance balance,
            List<User> residents)
        $default, {
    required TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id)
        id,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            Building building,
            User owner,
            @JsonKey(toJson: _flatNoToJson, fromJson: _flatNoFromJson)
                FlatNo flatNo,
            @JsonKey(toJson: _balanceToJson, fromJson: _balanceFromJson)
                Balance balance,
            List<User> residents)?
        $default, {
    TResult Function(@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id)?
        id,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Flat value) $default, {
    required TResult Function(FlatId value) id,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Flat value)? $default, {
    TResult Function(FlatId value)? id,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlatCopyWith<Flat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlatCopyWith<$Res> {
  factory $FlatCopyWith(Flat value, $Res Function(Flat) then) =
      _$FlatCopyWithImpl<$Res>;
  $Res call({@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id});
}

/// @nodoc
class _$FlatCopyWithImpl<$Res> implements $FlatCopyWith<$Res> {
  _$FlatCopyWithImpl(this._value, this._then);

  final Flat _value;
  // ignore: unused_field
  final $Res Function(Flat) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
    ));
  }
}

/// @nodoc
abstract class _$FlatCopyWith<$Res> implements $FlatCopyWith<$Res> {
  factory _$FlatCopyWith(_Flat value, $Res Function(_Flat) then) =
      __$FlatCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson)
          Id id,
      Building building,
      User owner,
      @JsonKey(toJson: _flatNoToJson, fromJson: _flatNoFromJson)
          FlatNo flatNo,
      @JsonKey(toJson: _balanceToJson, fromJson: _balanceFromJson)
          Balance balance,
      List<User> residents});
}

/// @nodoc
class __$FlatCopyWithImpl<$Res> extends _$FlatCopyWithImpl<$Res>
    implements _$FlatCopyWith<$Res> {
  __$FlatCopyWithImpl(_Flat _value, $Res Function(_Flat) _then)
      : super(_value, (v) => _then(v as _Flat));

  @override
  _Flat get _value => super._value as _Flat;

  @override
  $Res call({
    Object? id = freezed,
    Object? building = freezed,
    Object? owner = freezed,
    Object? flatNo = freezed,
    Object? balance = freezed,
    Object? residents = freezed,
  }) {
    return _then(_Flat(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as Building,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User,
      flatNo: flatNo == freezed
          ? _value.flatNo
          : flatNo // ignore: cast_nullable_to_non_nullable
              as FlatNo,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Balance,
      residents: residents == freezed
          ? _value.residents
          : residents // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Flat implements _Flat {
  const _$_Flat(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson)
          required this.id,
      required this.building,
      required this.owner,
      @JsonKey(toJson: _flatNoToJson, fromJson: _flatNoFromJson)
          required this.flatNo,
      @JsonKey(toJson: _balanceToJson, fromJson: _balanceFromJson)
          required this.balance,
      this.residents = const []});

  factory _$_Flat.fromJson(Map<String, dynamic> json) =>
      _$_$_FlatFromJson(json);

  @override
  @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
  final Id id;
  @override
  final Building building;
  @override
  final User owner;
  @override
  @JsonKey(toJson: _flatNoToJson, fromJson: _flatNoFromJson)
  final FlatNo flatNo;
  @override
  @JsonKey(toJson: _balanceToJson, fromJson: _balanceFromJson)
  final Balance balance;
  @JsonKey(defaultValue: const [])
  @override
  final List<User> residents;

  @override
  String toString() {
    return 'Flat(id: $id, building: $building, owner: $owner, flatNo: $flatNo, balance: $balance, residents: $residents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Flat &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.building, building) ||
                const DeepCollectionEquality()
                    .equals(other.building, building)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.flatNo, flatNo) ||
                const DeepCollectionEquality().equals(other.flatNo, flatNo)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.residents, residents) ||
                const DeepCollectionEquality()
                    .equals(other.residents, residents)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(building) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(flatNo) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(residents);

  @JsonKey(ignore: true)
  @override
  _$FlatCopyWith<_Flat> get copyWith =>
      __$FlatCopyWithImpl<_Flat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            Building building,
            User owner,
            @JsonKey(toJson: _flatNoToJson, fromJson: _flatNoFromJson)
                FlatNo flatNo,
            @JsonKey(toJson: _balanceToJson, fromJson: _balanceFromJson)
                Balance balance,
            List<User> residents)
        $default, {
    required TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id)
        id,
  }) {
    return $default(this.id, building, owner, flatNo, balance, residents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            Building building,
            User owner,
            @JsonKey(toJson: _flatNoToJson, fromJson: _flatNoFromJson)
                FlatNo flatNo,
            @JsonKey(toJson: _balanceToJson, fromJson: _balanceFromJson)
                Balance balance,
            List<User> residents)?
        $default, {
    TResult Function(@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id)?
        id,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this.id, building, owner, flatNo, balance, residents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Flat value) $default, {
    required TResult Function(FlatId value) id,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Flat value)? $default, {
    TResult Function(FlatId value)? id,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FlatToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class _Flat implements Flat {
  const factory _Flat(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson)
          required Id id,
      required Building building,
      required User owner,
      @JsonKey(toJson: _flatNoToJson, fromJson: _flatNoFromJson)
          required FlatNo flatNo,
      @JsonKey(toJson: _balanceToJson, fromJson: _balanceFromJson)
          required Balance balance,
      List<User> residents}) = _$_Flat;

  factory _Flat.fromJson(Map<String, dynamic> json) = _$_Flat.fromJson;

  @override
  @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
  Id get id => throw _privateConstructorUsedError;
  Building get building => throw _privateConstructorUsedError;
  User get owner => throw _privateConstructorUsedError;
  @JsonKey(toJson: _flatNoToJson, fromJson: _flatNoFromJson)
  FlatNo get flatNo => throw _privateConstructorUsedError;
  @JsonKey(toJson: _balanceToJson, fromJson: _balanceFromJson)
  Balance get balance => throw _privateConstructorUsedError;
  List<User> get residents => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FlatCopyWith<_Flat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlatIdCopyWith<$Res> implements $FlatCopyWith<$Res> {
  factory $FlatIdCopyWith(FlatId value, $Res Function(FlatId) then) =
      _$FlatIdCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id});
}

/// @nodoc
class _$FlatIdCopyWithImpl<$Res> extends _$FlatCopyWithImpl<$Res>
    implements $FlatIdCopyWith<$Res> {
  _$FlatIdCopyWithImpl(FlatId _value, $Res Function(FlatId) _then)
      : super(_value, (v) => _then(v as FlatId));

  @override
  FlatId get _value => super._value as FlatId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(FlatId(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlatId implements FlatId {
  const _$FlatId(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson) required this.id});

  factory _$FlatId.fromJson(Map<String, dynamic> json) =>
      _$_$FlatIdFromJson(json);

  @override
  @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
  final Id id;

  @override
  String toString() {
    return 'Flat.id(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FlatId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $FlatIdCopyWith<FlatId> get copyWith =>
      _$FlatIdCopyWithImpl<FlatId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            Building building,
            User owner,
            @JsonKey(toJson: _flatNoToJson, fromJson: _flatNoFromJson)
                FlatNo flatNo,
            @JsonKey(toJson: _balanceToJson, fromJson: _balanceFromJson)
                Balance balance,
            List<User> residents)
        $default, {
    required TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id)
        id,
  }) {
    return id(this.id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            Building building,
            User owner,
            @JsonKey(toJson: _flatNoToJson, fromJson: _flatNoFromJson)
                FlatNo flatNo,
            @JsonKey(toJson: _balanceToJson, fromJson: _balanceFromJson)
                Balance balance,
            List<User> residents)?
        $default, {
    TResult Function(@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id)?
        id,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this.id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Flat value) $default, {
    required TResult Function(FlatId value) id,
  }) {
    return id(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Flat value)? $default, {
    TResult Function(FlatId value)? id,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$FlatIdToJson(this)..['runtimeType'] = 'id';
  }
}

abstract class FlatId implements Flat {
  const factory FlatId(
          {@JsonKey(toJson: _idToJson, fromJson: _idFromJson) required Id id}) =
      _$FlatId;

  factory FlatId.fromJson(Map<String, dynamic> json) = _$FlatId.fromJson;

  @override
  @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
  Id get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FlatIdCopyWith<FlatId> get copyWith => throw _privateConstructorUsedError;
}
