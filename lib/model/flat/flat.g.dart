// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Flat _$_$_FlatFromJson(Map<String, dynamic> json) {
  return _$_Flat(
    id: _idFromJson(json['id'] as String),
    building: Building.fromJson(json['building'] as Map<String, dynamic>),
    owner: User.fromJson(json['owner'] as Map<String, dynamic>),
    flatNo: _flatNoFromJson(json['flatNo'] as int),
    balance: _balanceFromJson(json['balance'] as double),
    residents: (json['residents'] as List<dynamic>?)
            ?.map((e) => User.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_FlatToJson(_$_Flat instance) => <String, dynamic>{
      'id': _idToJson(instance.id),
      'building': instance.building,
      'owner': instance.owner,
      'flatNo': _flatNoToJson(instance.flatNo),
      'balance': _balanceToJson(instance.balance),
      'residents': instance.residents,
    };

_$FlatId _$_$FlatIdFromJson(Map<String, dynamic> json) {
  return _$FlatId(
    id: _idFromJson(json['id'] as String),
  );
}

Map<String, dynamic> _$_$FlatIdToJson(_$FlatId instance) => <String, dynamic>{
      'id': _idToJson(instance.id),
    };
