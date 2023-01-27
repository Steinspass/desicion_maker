import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/i_prosCons_repository.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/itemProsCons.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'watcher_state.dart';
part 'watcher_cubit.freezed.dart';

@injectable
class WatcherCubit extends Cubit<WatcherState> {

  final IProsConsRepository _iProsConsRepository;

  WatcherCubit(this._iProsConsRepository) : super(WatcherState.initial());

  StreamSubscription<Either<ListProsConsFailure, KtList<ListProsCons>>>? _listStreamSubscription;

  StreamSubscription<Either<ListProsConsFailure, KtList<ItemProsCons>>>? _itemStreamSubscription;


  Future<void> watchAllStarted() async {

    emit(WatcherState.loadInProgress());
    print('--- CUBIT WATCHER = watchAllStarted => load in progress state --- ');

    await _listStreamSubscription?.cancel();

    print('--- CUBIT WATCHER = watchAllStarted => stream subcription cancel --- ');

    _listStreamSubscription = _iProsConsRepository
      .watchAll()
      .listen((failureOrlist) => _listRecieved(failureOrlist));

  }

  


  void watchNotDecideStarted() async {

    emit(WatcherState.loadInProgress());

    await _listStreamSubscription?.cancel();

    _listStreamSubscription = _iProsConsRepository
      .watchOnlyNotDecide()
      .listen((failureOrlist) => _listRecieved(failureOrlist));

  }


  void watchProsStarted() async {

    emit(WatcherState.loadInProgress());

    await _listStreamSubscription?.cancel();

    _listStreamSubscription = _iProsConsRepository
      .watchOnlyPros()
      .listen((failureOrlist) => _listRecieved(failureOrlist));

  }


  void watchConsStarted() async {

    emit(WatcherState.loadInProgress());

    await _listStreamSubscription?.cancel();

    _listStreamSubscription = _iProsConsRepository
      .watchOnlyCons()
      .listen((failureOrlist) => _listRecieved(failureOrlist));

  }
  


  Future<void> watchItemProsStarted(String id) async {

    emit(WatcherState.loadInProgress());
    print('--- CUBIT WATCHER = watchAllStarted => load in progress state --- ');

    // await _itemStreamSubscription?.cancel();

    print('--- CUBIT WATCHER = watchAllStarted => stream subcription cancel --- ');

    _itemStreamSubscription = _iProsConsRepository
      .watchItemPros(id)
      .listen((failureOrlist) => _listItemsRecieved(failureOrlist));

  }

  Future<void> watchItemConsStarted(String id) async {

    emit(WatcherState.loadInProgress());
    print('--- CUBIT WATCHER = watchAllStarted => load in progress state --- ');

    await _itemStreamSubscription?.cancel();

    print('--- CUBIT WATCHER = watchAllStarted => stream subcription cancel --- ');

    _itemStreamSubscription = _iProsConsRepository
      .watchItemCons(id)
      .listen((failureOrlist) => _listItemsRecieved(failureOrlist));

  }




  void _listRecieved(Either<ListProsConsFailure, KtList<ListProsCons>> failureOrlist){

    print('--- CUBIT WATCHER = _listRecived => begin fold --- ');
    failureOrlist.fold(
          (f) {
            print('--- CUBIT WATCHER = _listRecived => list is failure error: $f  --- ');
            emit(WatcherState.loadFailure(f));
          }, 
          (lists) {
            print('--- CUBIT WATCHER = _listRecived => list is success, list size: ${lists.size}  --- ');
            emit(WatcherState.loadSuccess(lists));
          } 
        );

  }


  void _listItemsRecieved(Either<ListProsConsFailure, KtList<ItemProsCons>> failureOrItems){

    print('--- CUBIT WATCHER = _listItemsRecived => begin fold --- ');
    failureOrItems.fold(
          (f) {
            print('--- CUBIT WATCHER = _listItemsRecived => list is failure error: $f  --- ');
            emit(WatcherState.loadFailure(f));
          }, 
          (items) {
            print('--- CUBIT WATCHER = _listItemsRecived => items is success, list size: ${items.size}  --- ');
            emit(WatcherState.loadSuccessItem(items));
          } 
        );

  }


  @override
  Future<void> close() async {
    await _listStreamSubscription?.cancel();
    await _itemStreamSubscription?.cancel();
    return super.close();
  }

}
