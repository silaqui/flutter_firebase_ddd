import 'package:flutterfirebaseddd/domain/core/failure.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encounter a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure value: $valueFailure');
  }
}