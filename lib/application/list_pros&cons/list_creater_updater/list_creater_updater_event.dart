part of 'list_creater_updater_bloc.dart';

@freezed
class ListCreaterUpdaterEvent with _$ListCreaterUpdaterEvent {
  
  const factory ListCreaterUpdaterEvent.initialized(Option<ListProsCons> initialListOption) = _Initialized;
  // Title
  const factory ListCreaterUpdaterEvent.titleChanged(String? title) = _TitleChanged;
  //Description
  const factory ListCreaterUpdaterEvent.descChanged(String? desc) = _DescriptionChanged;
  // Name Title Pros
  const factory ListCreaterUpdaterEvent.nameProsChanged(String? namePros) = _NameProsChanged;
  // Name Title Cons
  const factory ListCreaterUpdaterEvent.nameConsChanged(String? nameCons) = _NameConsChanged;
  // Status
  const factory ListCreaterUpdaterEvent.statusChanged(int status) = _StatusChanged;
  // isPrivate
  const factory ListCreaterUpdaterEvent.isPrivateChanged(bool isPrivate) = _IsPrivateChanged;
  // Create date
  const factory ListCreaterUpdaterEvent.createDateChanged(String createDate) = _CreateDateChanged;
  // Balace
  const factory ListCreaterUpdaterEvent.balanceChanged(double balance) = _BalanceChanged;
  // User Id
  const factory ListCreaterUpdaterEvent.userIdChanged(String userId) = _UserIdChanged;
  // Username
  const factory ListCreaterUpdaterEvent.userNameChanged(String userName) = _UserNameChanged;
  // collabs
  const factory ListCreaterUpdaterEvent.collaboratorsChanged(List<String> collaborators) = _CollaboratorsChanged;


  const factory ListCreaterUpdaterEvent.saved() = _Saved;

}