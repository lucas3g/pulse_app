// ignore_for_file: invalid_annotation_target

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/domain/entities/app_global.dart';
import 'dependency_injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async {
  _initAppGlobal();

  await getIt.init();

  await _initHive();
}

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  Dio get dio => _dioFactory();

  HiveInterface get hive => Hive;
}

Dio _dioFactory() {
  final BaseOptions baseOptions = BaseOptions(
    headers: <String, dynamic>{'Content-Type': 'application/json'},
  );

  return Dio(baseOptions);
}

void _initAppGlobal() {
  AppGlobal();
}

Future<void> _initHive() async {
  await Hive.initFlutter();
}
