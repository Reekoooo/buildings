import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? prefs;
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) =>prefs!);
final dioProvider = Provider((ref)=>Dio());