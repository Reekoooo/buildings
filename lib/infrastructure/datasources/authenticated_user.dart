import 'dart:convert';
import 'package:building/application/login/credentials.dart';
import 'package:building/infrastructure/providers/data_sorces_providers.dart';
import 'package:building/model/user/user.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:building/utils/constants.dart';

final credentialsProvider = StateNotifierProvider<CredentialsNotifier,Credentials>((ref){
  UserUnion user;
  final _prefs = ref.read(sharedPreferencesProvider);
  final jsonUser = _prefs.getString(AUTHENTICATED_USER);
  final token = _prefs.getString(TOKEN_KEY) ?? "";
  if(jsonUser == null){
    user = const UnAuthenticatedUser();
  }else{
    user = User.fromJson(json.decode(jsonUser));
  }

  final initialState = Credentials(user: user, token: token);
  return CredentialsNotifier(initialState,ref.read);
});


class CredentialsNotifier extends StateNotifier<Credentials>{
  final Reader _read;
  CredentialsNotifier(initialState,this._read)
      : _prefs = _read(sharedPreferencesProvider) ,
        super(initialState);

  final SharedPreferences _prefs;
  String _token = '';
  UserUnion _authenticatedUser = const UnAuthenticatedUser();

  Future<bool> saveAuthenticatedUser()  async{
    return _prefs.setString(
        AUTHENTICATED_USER, json.encode(_authenticatedUser.toJson()));
  }
  Future<bool> saveToken() async{
    return await _prefs.setString(TOKEN_KEY, _token);
  }

  void saveCredentials() async {
    await saveToken();
    await saveAuthenticatedUser();
  }

  void changeAuthenticatedUser(Response response){
    final data = response.data['data'];
    final user = (data['user'] as Map<String, dynamic>)
      ..addEntries([MapEntry('runtimeType', 'default')]);
    _authenticatedUser = User.fromJson(user);
  }

  void updateAuthenticatedUser(Response response){
    changeAuthenticatedUser(response);
    state = Credentials(user: _authenticatedUser,token: _token);
  }
  void changeToken(Response response){
    final data = response.data['data'];
    _token = data['token'];
  }
  void updateToken(Response response){
    changeToken(response);
    state = Credentials(user: _authenticatedUser,token: _token);
  }

  void updateCredentials(Response response) {
   changeAuthenticatedUser(response);
   changeToken(response);
    state = Credentials(user: _authenticatedUser,token: _token);
  }

  /// used when user logout to clear the credentials
  void resetCredentials(){
    _token = '';
    _authenticatedUser = const UnAuthenticatedUser();
    _prefs.remove(TOKEN_KEY);
    _prefs.remove(AUTHENTICATED_USER);
    state = Credentials(user: _authenticatedUser, token: _token);
  }

}