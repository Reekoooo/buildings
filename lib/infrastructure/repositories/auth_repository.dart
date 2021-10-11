import 'dart:convert';
import 'dart:io';
import 'package:building/application/fcm.dart';
import 'package:building/application/login/login.dart';
import 'package:building/application/signup/signup.dart';
import 'package:building/infrastructure/datasources/authenticated_user.dart';
import 'package:building/infrastructure/providers/data_sorces_providers.dart';
import 'package:building/model/user/user.dart';
import 'package:building/model/user/user_profile.dart';
import 'package:building/utils/constants.dart';
import 'package:building/utils/custom_exceptions/login_exception.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IAuthRepository {
  Future<void> login({required Login login});
  Future<void> signUp({required Signup signup});
  User? getAuthenticatedUser();
  Future<String?> getToken();
  Future<void> logOut();
  Future<void> updateMe({required UserProfile myProfile});
}

class AuthRepositoryImp implements IAuthRepository {
  final Reader _read;
  final Dio _dio;
  final SharedPreferences _prefs;
  final messaging = FirebaseMessaging.instance;
  String? _token;
  User? _authenticatedUser;

  AuthRepositoryImp(this._read)
      : _dio = _read(dioProvider),
        _prefs = _read(sharedPreferencesProvider);

  _dioErrorCatch(e) {
    if (e.type == DioErrorType.response) {
      final statusCode = e.response?.statusCode;
      if (statusCode == 401) {
        final message = e.response?.data['message'];
        throw Error401(message: message);
      }
      if (statusCode == 409) {
        final message = e.response?.data['message'];
        throw Error409(message: message);
      }
    }
    throw NetworkError(message: e.message);
  }

  @override
  Future<void> login({required Login login}) async {
    final String _path = '$HOST_NAME/users/login';
    final Options _options = Options(
      contentType: 'application/json',
    );
    final String? fcm = await messaging.getToken();
    final _data = {
      'email': login.email.email,
      'password': login.password.password,
      'fcm': fcm
    };
    try {
      final response = await _dio.post(_path, data: _data, options: _options);
      if (response.statusCode == 200) {
        _read(credentialsProvider.notifier).updateCredentials(response);

        if (login.rememberMe) {
          _read(credentialsProvider.notifier).saveCredentials();
        }
        Fcm.configureFcmMessage();
      }
    } on DioError catch (e) {
      _dioErrorCatch(e);
    }
  }

  @override
  User? getAuthenticatedUser() {
    if (_authenticatedUser != null)
      return _authenticatedUser!;
    final jsonUser = _prefs.getString(AUTHENTICATED_USER);
    if (jsonUser != null)
      return User.fromJson(json.decode(jsonUser));
    return null;
  }

  @override
  Future<String?> getToken() async {
    if (_token != null) return SynchronousFuture(_token!);
    _token = _prefs.getString(TOKEN_KEY);
    return SynchronousFuture(_token);
  }

  @override
  Future<void> logOut() async {
    await getToken();
    final String _path = '$HOST_NAME/users/logout';
    final String? fcm = await messaging.getToken();
    final Options _options = Options(
      contentType: 'application/json',
      headers: {'Authorization': 'Bearer $_token'},
    );
    final _data = {'fcm': fcm};

    try {
      await _dio.post(_path, data: _data, options: _options);
      _read(credentialsProvider.notifier).resetCredentials();
    } on DioError catch (e) {
      _dioErrorCatch(e);
    }
  }

  @override
  Future<void> signUp({required Signup signup}) async {
    final String _path = '$HOST_NAME/users/signup';
    final String? fcm = await messaging.getToken();
    final Options _options = Options(
      contentType: 'application/json',
    );
    final _data = {
      'email': signup.email.email,
      'password': signup.password.password,
      'passwordConfirm': signup.passwordConfirm.password,
      'fcm': fcm
    };
    try {
      final response = await _dio.post(_path, data: _data, options: _options);
      if (response.statusCode == 201) {
        _read(credentialsProvider.notifier).updateCredentials(response);
        if (signup.rememberMe) {
          _read(credentialsProvider.notifier).saveCredentials();
        }
        Fcm.configureFcmMessage();
      }
    } on DioError catch (e) {
      _dioErrorCatch(e);
    }
  }

  @override
  Future<void> updateMe({required UserProfile myProfile}) async{
    // final Directory docDir = await getApplicationDocumentsDirectory();
    // final path = 'assets/img.png';
    // final String localPath = docDir.path;
    // File file = File('$localPath/${path.split('/').last}');
    // final imageBytes = await rootBundle.load(path);
    // final buffer = imageBytes.buffer;
    // await file.writeAsBytes(
    //     buffer.asUint8List(imageBytes.offsetInBytes, imageBytes.lengthInBytes));

    final String _path = '$HOST_NAME/users/updateMe';
    final Options _options = Options(
      headers: {'Authorization':'Bearer $_token'},
      contentType: 'multipart/form-data',
    );
    final Map<String,dynamic> formDataMap = {
      'profile': myProfile.toJson(),
    };
    if(myProfile.profileImage != null){
      formDataMap['profileImage'] =  await MultipartFile.fromFile(
          myProfile.profileImage!,
          filename: 'imageProfile.png');
    }
    final _data = FormData.fromMap(formDataMap);


    // final _data = FormData.fromMap();
    // 'profileImage': await MultipartFile.fromFile(
    // myProfile.profileImage,
    // //'$localPath/${path.split('/').last}',
    // filename: 'imageProfile.png')

    try{
      final response = await _dio.patch(_path,data: _data,options: _options);
      if (response.statusCode == 200){
         _read(credentialsProvider.notifier).updateAuthenticatedUser(response);
        if (_prefs.containsKey(AUTHENTICATED_USER)){
          _read(credentialsProvider.notifier).saveAuthenticatedUser();
        }
      }
    }on DioError catch(e){
      _dioErrorCatch(e);
    }
  }
}
