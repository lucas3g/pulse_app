import 'package:pulse_app/app/core/domain/vos/int_vo.dart';

abstract class BaseEntity {
  final IntVO id;

  BaseEntity({
    required this.id,
  });
}
