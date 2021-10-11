
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class IUserRepository{
  //Future<void> updateMe({required UserProfile myProfile});
}

class UserRepositoryImp implements IUserRepository{

  UserRepositoryImp(this._read);
  final Reader _read;
  Dio _dio = Dio();

  // @override
  // Future<void> updateMe({required UserProfile myProfile}) async{
  //   final Directory docDir = await getApplicationDocumentsDirectory();
  //   final path = 'assets/img.png';
  //   final String localPath = docDir.path;
  //   File file = File('$localPath/${path.split('/').last}');
  //   final imageBytes = await rootBundle.load(path);
  //   final buffer = imageBytes.buffer;
  //   await file.writeAsBytes(
  //       buffer.asUint8List(imageBytes.offsetInBytes, imageBytes.lengthInBytes));
  //
  //   final String _path = 'http://10.0.2.2:3000/users/updateMe';
  //   final token = await _read(authRepositoryProvider).getToken();
  //   final Options _options = Options(
  //     headers: {'Authorization':'Bearer $token'},
  //     contentType: 'multipart/form-data',
  //   );
  //   final _data = FormData.fromMap({
  //     'profile': myProfile.toJson(),
  //     'profileImage': await MultipartFile.fromFile(
  //         '$localPath/${path.split('/').last}',
  //         filename: 'imageProfile.png')
  //   });
  //
  //   try{
  //     final response = await _dio.patch(_path,data: _data,options: _options);
  //     if (response.statusCode == 200){
  //       print(response);
  //     }
  //
  //   }on DioError catch(e){
  //     print (e);
  //     print (e.response?.data);
  //   }
  // }

}