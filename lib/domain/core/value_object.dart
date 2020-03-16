import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'failure.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

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
