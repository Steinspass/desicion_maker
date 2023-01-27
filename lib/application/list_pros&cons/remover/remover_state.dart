part of 'remover_cubit.dart';

@freezed
class RemoverState with _$RemoverState {
  const factory RemoverState.initial() = Initial;
  const factory RemoverState.actionInProgress() = ActionInProgress;
  const factory RemoverState.deleteFailure(ListProsConsFailure listFailure) = DeleteFailure;
  const factory RemoverState.deleteSuccess() = DeleteSuccess;
}
