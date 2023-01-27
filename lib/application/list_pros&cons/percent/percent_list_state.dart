part of 'percent_list_cubit.dart';

@freezed
class PercentListState with _$PercentListState {
  
  const factory PercentListState({
    @Default(0) int percentPro,
    @Default(0) int percentCons
  }) = _PercentListState;
  
  factory PercentListState.initial() => _PercentListState();
}
