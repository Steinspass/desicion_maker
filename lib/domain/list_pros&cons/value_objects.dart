import 'package:dartz/dartz.dart';
import 'package:desicion_maker_app/domain/core/failures.dart';
import 'package:desicion_maker_app/domain/core/value_objects.dart';
import 'package:desicion_maker_app/domain/core/value_validators.dart';




class ListItemDesc extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 250;

  factory ListItemDesc(String input) {
    return ListItemDesc._(
      validateMaxStringLength(input, maxLength),
    );
  }

  const ListItemDesc._(this.value);
}


class ListItemName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 40;

  factory ListItemName(String input) {
    return ListItemName._(
      validateMaxStringLength(input, maxLength)
          // .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const ListItemName._(this.value);
}

class ListItemProsConsTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 20;

  factory ListItemProsConsTitle(String input) {
    return ListItemProsConsTitle._(
      validateMaxStringLength(input, maxLength)
          // .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const ListItemProsConsTitle._(this.value);
}


class StatusList{

  static const notdecide = 0;

  static const pros = 1;

  static const cons = 2;

  static const all = 3;

}