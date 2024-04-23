import '../../../../core/domain/entities/either_of.dart';
import '../../../../core/domain/entities/failure.dart';

abstract class DatabaseRepository {
  Future<EitherOf<AppFailure, VoidSuccess>> populateHive();
}
