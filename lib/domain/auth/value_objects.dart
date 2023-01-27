
import 'package:dartz/dartz.dart';
import 'package:desicion_maker_app/domain/core/failures.dart';
import 'package:desicion_maker_app/domain/core/value_objects.dart';
import 'package:desicion_maker_app/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}
