part of 'selected_list_cubit.dart';

@freezed
class SelectedListState with _$SelectedListState {
  
   const factory SelectedListState({
    @required ListProsCons? listSelected,
  }) = _SelectedListState;
  
  factory SelectedListState.initial() => _SelectedListState();
}
