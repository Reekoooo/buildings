import 'package:building/model/building/building.dart';
import 'package:building/utils/constants.dart';
import 'package:dio/dio.dart';

abstract class BuildingRepository {
  Future<List<Building>> getAllBuildings();
}

class BuildingRepositoryImp extends BuildingRepository {
  Dio _dio = Dio();
  final String path = '$HOST_NAME/buildings';
  final Options options = Options(
    headers: {
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOiI2MGNiMTQzYjk1NzM0ODM4ODhhOWUyNGUiLCJleHAiOjE2MjYyOTAzODM2NjksImlhdCI6MTYyNjI5MDM4MH0.hW2yLV-JwqPZ90yoSn5v4eo6lrteHvF4ar0djCugt-w'
    },
    contentType: 'application/json',
  );

  @override
  Future<List<Building>> getAllBuildings() async {
    final Response response = await _dio.get(path, options: options);
    final List data = response.data['data'];
    final buildings = data.map<Map<String, dynamic>>((e) => e).toList();

    return Future.value(buildings
        .map((response) => Building.fromJson(
            response..addEntries([MapEntry('runtimeType', 'default')])))
        .toList());
  }
}
