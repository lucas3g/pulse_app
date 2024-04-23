import 'package:injectable/injectable.dart';

import '../../../../core/data/clients/local_database/local_database.dart';
import 'database_datasource.dart';

@Injectable(as: DatabaseDatasource)
class DatabaseDatasourceImpl implements DatabaseDatasource {
  final LocalDatabase _localDatabase;

  DatabaseDatasourceImpl({required LocalDatabase localDatabase})
      : _localDatabase = localDatabase;

  @override
  Future<bool> populateHive() async {
    return true;
  }
}
