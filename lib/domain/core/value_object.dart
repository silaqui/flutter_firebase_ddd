import 'package:dartz/dartz.dart';
import 'package:flutterfirebaseddd/domain/core/errors.dart';
import 'package:meta/meta.dart';

import 'failure.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  Either<ValueFailure<dynamic>,Unit> get failureOrUnit{
    return value.fold((f) => left(f), (_) => right(unit));
  }

  bool isValid() => value.isRight();

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    //id - same as (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  String toString() {
    return 'Value:($value)';
  }
}
