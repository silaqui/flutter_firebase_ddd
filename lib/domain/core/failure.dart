import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    @required T failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLenght<T>;

  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.multiLine({
    @required T failedValue,
  }) = MultiLine<T>;

  const factory ValueFailure.listTooLong({
    @required T failedValue,
    @required int max,
  }) = ListTooLong<T>;

}
