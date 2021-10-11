import 'package:building/utils/custom_exceptions/validation_exception.dart';

const int MIN_ALLOWED_NO = 1;


class FlatNo{
  late final int _no;
  int get no =>_no;
  FlatNo(int no){
    if(! _validNo(no)) throw FlatNoValidationError();
    _no = no;
  }
  bool _validNo(int no) => no >= MIN_ALLOWED_NO;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FlatNo && runtimeType == other.runtimeType && _no == other.no;

  @override
  int get hashCode => _no.hashCode;
}