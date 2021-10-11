import 'package:building/infrastructure/repositories/auth_repository.dart';
import 'package:building/infrastructure/repositories/building_repository.dart';
import 'package:building/infrastructure/repositories/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final buildingsProvider = FutureProvider.autoDispose((ref) => BuildingRepositoryImp().getAllBuildings());
final authRepositoryProvider = Provider((ref) => AuthRepositoryImp(ref.read));
final userRepositoryProvider = Provider((ref)=>UserRepositoryImp(ref.read));
