import 'package:freezed_annotation/freezed_annotation.dart';


part 'listProsCons_failure.freezed.dart';


@freezed
abstract class ListProsConsFailure with _$ListProsConsFailure{

  const factory ListProsConsFailure.unexpected() = Unexpected;
  const factory ListProsConsFailure.insufficientPermissions() = InsufficientPermissions;
  const factory ListProsConsFailure.unableToUpdate() = UnableToUpdate;

}