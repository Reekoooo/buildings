
import 'package:building/model/building/building.dart';
import 'package:building/model/user/user.dart';
import 'package:building/model/value_objects/balance.dart';
import 'package:building/model/value_objects/flat_no.dart';
import 'package:building/model/value_objects/id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flat.freezed.dart';
part 'flat.g.dart';

String _idToJson(Id id)=> id.id;
Id _idFromJson(String id) =>Id(id);
int _flatNoToJson(FlatNo no)=> no.no;
FlatNo _flatNoFromJson(int no) =>FlatNo(no);
double _balanceToJson(Balance balance)=> balance.balance;
Balance _balanceFromJson(double balance) =>Balance(balance);

@freezed
class Flat with _$Flat{
  const factory Flat({
    @JsonKey(toJson: _idToJson, fromJson: _idFromJson)required Id id,
    required Building building,
    required User owner,
    @JsonKey(toJson: _flatNoToJson,fromJson: _flatNoFromJson) required FlatNo flatNo,
    @JsonKey(toJson: _balanceToJson, fromJson: _balanceFromJson) required Balance balance,
    @Default(const[])List<User> residents ,

  }) = _Flat;
  const factory Flat.id({@JsonKey(toJson: _idToJson, fromJson: _idFromJson) required Id id}) = FlatId;
  factory Flat.fromJson(Map<String,dynamic> json) => _$FlatFromJson(json);
}