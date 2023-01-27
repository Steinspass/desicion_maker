part of 'item_creater_updater_bloc.dart';

@freezed
class ItemCreaterUpdaterEvent with _$ItemCreaterUpdaterEvent {
  
  const factory ItemCreaterUpdaterEvent.initialized(Option<ItemProsCons> initialItemOption, bool isPro, String id) = _InitializedItem;

  // Title
  const factory ItemCreaterUpdaterEvent.titleItemChanged(String title) = _TitleItemChanged;
  // Importance
  const factory ItemCreaterUpdaterEvent.importanceItemChanged(int importance) = _ImportanceItemChanged;
  // Create Date
  const factory ItemCreaterUpdaterEvent.createDateItemChanged(String createDate) = _CreateDateItemChanged;
  // isPro
  const factory ItemCreaterUpdaterEvent.isProItemChanged(bool isPro) = _IsProItemChanged;
  // User Id
  const factory ItemCreaterUpdaterEvent.userIdItemChanged(String userId) = _UserIdItemChanged;
  // Username
  const factory ItemCreaterUpdaterEvent.userNameItemChanged(String userName) = _UserNameItemChanged;

  const factory ItemCreaterUpdaterEvent.saved() = _ItemSaved;
}