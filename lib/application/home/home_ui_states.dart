
import 'package:building/application/home/home_vm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_ui_states.freezed.dart';
@freezed
class HomeState with _$HomeState{
  const factory HomeState.data({required HomeVm vm}) = UserData;
  const factory HomeState.loading() = HomeStateLoading ;
  const factory HomeState.noData() = NoUserData;
}