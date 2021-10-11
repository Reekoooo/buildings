
import 'package:building/model/building/building.dart';
import 'package:building/model/flat/flat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_vm.freezed.dart';

@freezed
class HomeVm with _$HomeVm{
  const factory HomeVm({
    String? profileImage,
    required void Function() profileImageOnTap,
    required List<Flat> flats,
    required List<Building> buildings,

  }) = _HomeVm;
}