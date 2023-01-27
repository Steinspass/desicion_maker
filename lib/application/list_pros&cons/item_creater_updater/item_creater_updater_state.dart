part of 'item_creater_updater_bloc.dart';

@freezed
class ItemCreaterUpdaterState with _$ItemCreaterUpdaterState {
  
  const factory ItemCreaterUpdaterState({
    @required String? id,
    @required  ItemProsCons? item,
    @required bool? isPro,
    @Default(false) bool showErrorMessages,
    @Default(false) bool isEditing,
    @Default(false) bool isSaving,
    @required Option<Either<ListProsConsFailure, Unit>>? saveFailureOrSuccessOption,
  }) = _ItemCreaterUpdaterState; 


  factory ItemCreaterUpdaterState.initial() => ItemCreaterUpdaterState(
    item: ItemProsCons.empty(),
    id: '',
    isPro: false, 
    showErrorMessages: false, 
    isEditing: false, 
    isSaving: false, 
    saveFailureOrSuccessOption: none()
  );

}
