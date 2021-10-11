import 'package:building/utils/custom_exceptions/validation_exception.dart';

abstract class _BaseName {
  late final String _name;

  _BaseName(String name) {
    if (!_validName(name)) throw NameValidationError();
    _name = name;
  }

  bool _validName(String name); //=> name.length > 2 &&  name.length < 20;
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _BaseName &&
          runtimeType == other.runtimeType &&
          _name == other._name;

  @override
  int get hashCode => _name.hashCode;
}

abstract class Validator<T> {
  Validator({
    required T input,
    required this.validator,
    this.validatorException,
    int? minLength,
    int? maxLength,
  }) {
    if (!validator(input) ||
        !_minLengthValidator(minLength, input) ||
        !_maxLengthValidator(maxLength, input)) {
      validatorException == null
          ? throw Exception('Not valid input')
          : throw validatorException!;
    }
    _value = input;
  }

  bool _minLengthValidator(int? minLength, T input) {
    return minLength == null ? true : (input as String).length >= minLength;
  }

  bool _maxLengthValidator(int? maxLength, T input) {
    return maxLength == null ? true : (input as String).length <= maxLength;
  }

  late final T _value;
  Exception? validatorException;
  final bool Function(T text) validator;

  T get value => _value;
}


abstract class TextValidator extends Validator<String> {
  TextValidator({
    required String inputText,
    bool Function(String)? validator ,
    Exception? exception,
    int? minLength,
    int? maxLength,
  }) : super(
          input: inputText,
          validator: validator ?? (s)=>true ,
          validatorException: exception,
          minLength: minLength,
          maxLength: maxLength,
        );
}

class FName extends TextValidator{
  FName({required String fName}) : super(
    inputText: fName,
    minLength: 3,
    maxLength: 10
  );

}

class FirstName extends _BaseName {
  FirstName(String firstName) : super(firstName);

  String get firstName => _name;

  @override
  bool _validName(String firstName) =>
      firstName.length > 2 && firstName.length < 20;

  @override
  Map<String, dynamic> toJson() => {'firstName': this.firstName};

  factory FirstName.fromJson(Map<String, dynamic> json) =>
      FirstName(json['firstName']);
}

class LastName extends _BaseName {
  LastName(String lastName) : super(lastName);

  String get lastName => _name;

  @override
  bool _validName(String lastName) =>
      lastName.length > 2 && lastName.length < 20;

  @override
  Map<String, dynamic> toJson() => {'lastName': this.lastName};

  factory LastName.fromJson(Map<String, dynamic> json) =>
      LastName(json['lastName']);
}

class BuildingName extends _BaseName {
  BuildingName(String buildingName) : super(buildingName);

  String get name => _name;

  @override
  bool _validName(String lastName) =>
      lastName.length > 2 && lastName.length < 20;

  @override
  Map<String, dynamic> toJson() => {'name': this.name};

  factory BuildingName.fromJson(Map<String, dynamic> json) =>
      BuildingName(json['name']);
}

class Address extends _BaseName {
  Address(String address) : super(address);

  String get address => _name;

  @override
  bool _validName(String address) => address.length > 5 && address.length < 100;

  @override
  Map<String, dynamic> toJson() => {'address': this.address};

  factory Address.fromJson(Map<String, dynamic> json) =>
      Address(json['address']);
}
