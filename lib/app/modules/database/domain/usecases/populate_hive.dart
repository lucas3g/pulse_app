import 'package:injectable/injectable.dart';

import '../../../../core/domain/entities/either_of.dart';
import '../../../../core/domain/entities/failure.dart';
import '../../../../core/domain/entities/usecase.dart';
import '../repositories/database_repository.dart';

@injectable
class PopulateHiveUseCase implements UseCase<VoidSuccess, NoArgs> {
  final DatabaseRepository _repository;

  PopulateHiveUseCase({required DatabaseRepository repository})
      : _repository = repository;

  @override
  Future<EitherOf<AppFailure, VoidSuccess>> call(NoArgs args) async {
    return await _repository.populateHive();
  }
}
