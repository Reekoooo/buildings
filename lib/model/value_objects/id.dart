

import 'package:building/utils/custom_exceptions/validation_exception.dart';
import 'package:objectid/objectid.dart';

typedef  bool _IsValidId(String id) ;

class Id{
  late final String _id;
  String get id => _id;

  Id(String id,{_IsValidId isValidId = ObjectId.isValid}){
    if (! isValidId(id)) throw IdValidationError();  // regular expression to validate mongo Id /^[a-fA-F0-9]{24}$/
    _id = id;
  }


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Id && runtimeType == other.runtimeType && _id == other.id;

  @override
  int get hashCode => _id.hashCode;

  @override
  String toString() {
    return 'Id $_id';

  }
}