import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/i_prosCons_repository.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/itemProsCons.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons_failure.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'item_creater_updater_event.dart';
part 'item_creater_updater_state.dart';
part 'item_creater_updater_bloc.freezed.dart';

@injectable
class ItemCreaterUpdaterBloc extends Bloc<ItemCreaterUpdaterEvent, ItemCreaterUpdaterState> {
  
  final IProsConsRepository _iProsConsRepository;

  ItemCreaterUpdaterBloc(this._iProsConsRepository) : super((ItemCreaterUpdaterState.initial())){
    on<_InitializedItem>(_initializedItem);
    on<_TitleItemChanged>(_titleItemChanged);
    on<_ImportanceItemChanged>(_importanceItemChanged);
    on<_CreateDateItemChanged>(_createDateItemChanged);
    on<_IsProItemChanged>(_isProItemChanged);
    on<_UserIdItemChanged>(_userIdItemChanged);
    on<_UserNameItemChanged>(_userNameItemChanged);
    on<_ItemSaved>(_itemSaved);
  }


  void _initializedItem(ItemCreaterUpdaterEvent event, Emitter<ItemCreaterUpdaterState> emit) async{

    event.mapOrNull(
      initialized: (value) => value.initialItemOption.fold(
        () => emit(state), 
        (item) {
          emit(
            state.copyWith(
              id: value.id,
              isEditing: true,
              item: item,
              isPro: value.isPro
            )
          );
        }
      ),  
    );

  }


  void _titleItemChanged(ItemCreaterUpdaterEvent event, Emitter<ItemCreaterUpdaterState> emit) async {

    event.mapOrNull(
      titleItemChanged: (value) {

        emit(state.copyWith(
          item: state.item?.copyWith( title: ListItemName(value.title) ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }

  void _importanceItemChanged(ItemCreaterUpdaterEvent event, Emitter<ItemCreaterUpdaterState> emit) async {

    event.mapOrNull(
      importanceItemChanged: (value) {

        emit(state.copyWith(
          item: state.item?.copyWith( importance: value.importance ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }

  void _createDateItemChanged(ItemCreaterUpdaterEvent event, Emitter<ItemCreaterUpdaterState> emit) async {

    event.mapOrNull(
      createDateItemChanged: (value) {

        emit(state.copyWith(
          item: state.item?.copyWith( createDate: value.createDate ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }

  void _isProItemChanged(ItemCreaterUpdaterEvent event, Emitter<ItemCreaterUpdaterState> emit) async {

    event.mapOrNull(
      isProItemChanged: (value) {

        emit(state.copyWith(
          item: state.item?.copyWith( isPro: value.isPro ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }

  void _userIdItemChanged(ItemCreaterUpdaterEvent event, Emitter<ItemCreaterUpdaterState> emit) async {

    event.mapOrNull(
      userIdItemChanged: (value) {

        emit(state.copyWith(
          item: state.item?.copyWith( userId: value.userId ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }

  void _userNameItemChanged(ItemCreaterUpdaterEvent event, Emitter<ItemCreaterUpdaterState> emit) async {

    event.mapOrNull(
      userNameItemChanged: (value) {

        emit(state.copyWith(
          item: state.item?.copyWith( userName: value.userName ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }

  Future<void> _itemSaved(ItemCreaterUpdaterEvent event, Emitter<ItemCreaterUpdaterState> emit) async {

    await event.mapOrNull(
      saved: (_) async {

        Either<ListProsConsFailure, Unit>? failureOrSuccess;

        emit(
          state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none()
          )
        );


        final bool isItemEmpty = state.item!.failureOption.isNone(); 

        if(isItemEmpty) {
          failureOrSuccess = state.isEditing
            ? await _iProsConsRepository.updateItem(state.item!, state.isPro!, state.id!)
            : await _iProsConsRepository.createItem(state.item!, state.isPro!, state.id!);
        }

        emit( 
          state.copyWith(
            isSaving: false,
            showErrorMessages: true,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess)
          )
        );

      }
    );

  }


  
  // Stream<ItemCreaterUpdaterState> mapEventToState(ItemCreaterUpdaterEvent event) async*{
  //   event.map(

  //     initialized: (e) async*{
  //       yield e.initialItemOption.fold(
  //         () => state, 
          
  //         (item) {
  //           return state.copyWith(
  //             isEditing: true,
  //             item: item,
  //             isPro: e.isPro
  //           );
  //         }
          
  //       );
  //     },

  //     titleItemChanged: (e) async*{

  //       yield state.copyWith(
  //         item: state.item?.copyWith( title: ListItemName(e.title) ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     }, 
      
  //     importanceItemChanged: (e) async*{

  //       yield state.copyWith(
  //         item: state.item?.copyWith( importance: e.importance ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     }, 
      
  //     createDateItemChanged: (e) async*{
        
  //       yield state.copyWith(
  //         item: state.item?.copyWith( createDate: e.createDate ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     }, 
      
  //     isProItemChanged: (e) async*{

  //       yield state.copyWith(
  //         item: state.item?.copyWith( isPro: e.isPro ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     }, 
      
  //     userIdItemChanged: (e) async*{

  //       yield state.copyWith(
  //         item: state.item?.copyWith( userId: e.userId ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     }, 
      
  //     userNameItemChanged: (e) async*{

  //       yield state.copyWith(
  //         item: state.item?.copyWith( userName: e.userName ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     },

  //     saved: (e) async*{

  //       Either<ListProsConsFailure, Unit>? failureOrSuccess;

  //       yield state.copyWith(
  //         isSaving: true,
  //         saveFailureOrSuccessOption: none()
  //       );

  //       final bool isItemEmpty = state.item!.failureOption.isNone();

  //       if(isItemEmpty){

  //         failureOrSuccess = state.isEditing!
  //           ? await _iProsConsRepository.updateItem(state.item!, state.isPro!)
  //           : await _iProsConsRepository.createItem(state.item!, state.isPro!);

  //       } 

  //       yield state.copyWith(
  //         isSaving: false,
  //         showErrorMessages: true,
  //         saveFailureOrSuccessOption: optionOf(failureOrSuccess)
  //       );

  //     }

  //   );
  // }

}
