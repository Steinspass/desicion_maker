part of 'watcher_cubit.dart';

@freezed
class WatcherState with _$WatcherState {
  const factory WatcherState.initial() = Initial;
  const factory WatcherState.loadInProgress() = DataTransferInProgress;
  const factory WatcherState.loadSuccess(KtList<ListProsCons> lists) = LoadSuccess;
  const factory WatcherState.loadSuccessItem(KtList<ItemProsCons> items) = LoadSuccessItems;
  const factory WatcherState.loadFailure(ListProsConsFailure noteFailure) = LoadFailure;
}
