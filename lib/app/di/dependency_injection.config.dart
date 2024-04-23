// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i8;
import 'package:hive_flutter/hive_flutter.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../core/data/clients/http/client_http.dart' as _i11;
import '../core/data/clients/http/dio_http_client_impl.dart' as _i12;
import '../core/data/clients/local_database/hive_service.dart' as _i7;
import '../core/data/clients/local_database/local_database.dart' as _i6;
import '../core/data/clients/local_storage/local_storage.dart' as _i9;
import '../core/data/clients/local_storage/shared_preferences_service.dart'
    as _i10;
import '../modules/database/data/datasources/database_datasource.dart' as _i13;
import '../modules/database/data/datasources/database_datasource_impl.dart'
    as _i14;
import '../modules/database/data/repositories/database_repository_impl.dart'
    as _i16;
import '../modules/database/domain/repositories/database_repository.dart'
    as _i15;
import '../modules/database/domain/usecases/populate_hive.dart' as _i17;
import 'dependency_injection.dart' as _i18;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i4.Dio>(() => registerModule.dio);
    gh.factory<_i5.HiveInterface>(() => registerModule.hive);
    gh.factory<_i6.LocalDatabase>(
        () => _i7.HiveService(hive: gh<_i8.HiveInterface>()));
    gh.factory<_i9.LocalStorage>(() => _i10.SharedPreferencesService(
        preferences: gh<_i3.SharedPreferences>()));
    gh.singleton<_i11.ClientHttp>(
        () => _i12.DioClientHttpImpl(dio: gh<_i4.Dio>()));
    gh.factory<_i13.DatabaseDatasource>(() =>
        _i14.DatabaseDatasourceImpl(localDatabase: gh<_i6.LocalDatabase>()));
    gh.factory<_i15.DatabaseRepository>(() => _i16.DatabaseRepositoryImpl(
        databaseDatasource: gh<_i13.DatabaseDatasource>()));
    gh.factory<_i17.PopulateHiveUseCase>(() =>
        _i17.PopulateHiveUseCase(repository: gh<_i15.DatabaseRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i18.RegisterModule {}
