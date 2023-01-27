part of 'list_creater_updater_bloc.dart';

@freezed
class ListCreaterUpdaterState with _$ListCreaterUpdaterState {
  
  const factory ListCreaterUpdaterState({
    @required  ListProsCons? lists,
    @Default(false) bool showErrorMessages,
    @Default(false) bool isEditing,
    @Default(false) bool isSaving,
    @required Option<Either<ListProsConsFailure, Unit>>? saveFailureOrSuccessOption,
  }) = _ListCreaterUpdaterState; 


  factory ListCreaterUpdaterState.initial() => ListCreaterUpdaterState(
    lists: ListProsCons.empty(), 
    showErrorMessages: false, 
    isEditing: false, 
    isSaving: false, 
    saveFailureOrSuccessOption: none()
  );

}
