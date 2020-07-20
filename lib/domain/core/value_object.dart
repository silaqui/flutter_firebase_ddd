import 'package:dartz/dartz.dart';
import 'package:flutterfirebaseddd/domain/core/errors.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

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
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  String toString() {
    return 'Value:($value)';
  }
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return UniqueId._(right(uniqueId));
  }

  const UniqueId._(this.value);
}
