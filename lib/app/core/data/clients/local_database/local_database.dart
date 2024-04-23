import 'params/database_params.dart';

abstract class LocalDatabase {
  Future<bool> setData({required DatabaseParams params});
  Future<dynamic> getData({required DatabaseParams params});
  Future<bool> removeData({required DatabaseParams params});
}
