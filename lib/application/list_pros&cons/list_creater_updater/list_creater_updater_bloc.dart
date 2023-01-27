import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/i_prosCons_repository.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons_failure.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';


part 'list_creater_updater_event.dart';
part 'list_creater_updater_state.dart';
part 'list_creater_updater_bloc.freezed.dart';

@injectable
class ListCreaterUpdaterBloc extends Bloc<ListCreaterUpdaterEvent, ListCreaterUpdaterState> {
  
  final IProsConsRepository _iProsConsRepository;

  ListCreaterUpdaterBloc(this._iProsConsRepository) : super((ListCreaterUpdaterState.initial()))
  {
    on<_Initialized>(_initialized);
    on<_TitleChanged>(_titleChanged);
    on<_DescriptionChanged>(_descriptionChanged);
    on<_NameProsChanged>(_nameProsChanged);
    on<_NameConsChanged>(_nameConsChanged);
    on<_StatusChanged>(_statusChanged);
    on<_IsPrivateChanged>(_isPrivateChanged);
    on<_CreateDateChanged>(_createDateChanged);
    on<_BalanceChanged>(_balanceChanged);
    on<_UserIdChanged>(_userIdChanged);
    on<_UserNameChanged>(_userNameChanged);
    on<_CollaboratorsChanged>(_collaboratorsChanged);
    on<_Saved>(_saved);

  }

  
  
  void _initialized(ListCreaterUpdaterEvent event, Emitter<ListCreaterUpdaterState> emit) async {

    event.mapOrNull(
      initialized: (value) => value.initialListOption.fold(
        () => emit(state), 
        (lists) {
          emit(
            state.copyWith(
              isEditing: true,
              lists: lists
            )
          );
        }
      ),  
    );
    

  }


  void _titleChanged(ListCreaterUpdaterEvent event, Emitter<ListCreaterUpdaterState> emit) async {

    event.mapOrNull(
      titleChanged: (value) {

        emit(state.copyWith(
          lists: state.lists?.copyWith( title: ListItemName(value.title ?? 'Title') ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }


  void _descriptionChanged(ListCreaterUpdaterEvent event, Emitter<ListCreaterUpdaterState> emit) async {

    event.mapOrNull(
      descChanged: (value) {

        emit(state.copyWith(
          lists: state.lists?.copyWith( desc: ListItemDesc(value.desc ?? '') ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }


  void _nameProsChanged(ListCreaterUpdaterEvent event, Emitter<ListCreaterUpdaterState> emit) async {

    event.mapOrNull(
      nameProsChanged: (value) {

        emit(state.copyWith(
          lists: state.lists?.copyWith( namePros: ListItemProsConsTitle(value.namePros ?? 'Pros') ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }


  void _nameConsChanged(ListCreaterUpdaterEvent event, Emitter<ListCreaterUpdaterState> emit) async {

    event.mapOrNull(
      nameConsChanged: (value) {

        emit(state.copyWith(
          lists: state.lists?.copyWith( nameCons: ListItemProsConsTitle(value.nameCons ?? 'Cons') ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }



  void _statusChanged(ListCreaterUpdaterEvent event, Emitter<ListCreaterUpdaterState> emit) async {

    event.mapOrNull(
      statusChanged: (value) {

        emit(state.copyWith(
          lists: state.lists?.copyWith( status: value.status ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }


  void _isPrivateChanged(ListCreaterUpdaterEvent event, Emitter<ListCreaterUpdaterState> emit) async {

    event.mapOrNull(
      isPrivateChanged: (value) {

        emit(state.copyWith(
          lists: state.lists?.copyWith( isPrivate: value.isPrivate ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }


  void _createDateChanged(ListCreaterUpdaterEvent event, Emitter<ListCreaterUpdaterState> emit) async {

    event.mapOrNull(
      createDateChanged: (value) {

        emit(state.copyWith(
          lists: state.lists?.copyWith( createDate: value.createDate ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }


  void _balanceChanged(ListCreaterUpdaterEvent event, Emitter<ListCreaterUpdaterState> emit) async {

    event.mapOrNull(
      balanceChanged: (value) {

        emit(state.copyWith(
          lists: state.lists?.copyWith( balance: value.balance ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }

  void _userIdChanged(ListCreaterUpdaterEvent event, Emitter<ListCreaterUpdaterState> emit) async {

    event.mapOrNull(
      userIdChanged: (value) {

        emit(state.copyWith(
          lists: state.lists?.copyWith( userId: value.userId ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }


  void _userNameChanged(ListCreaterUpdaterEvent event, Emitter<ListCreaterUpdaterState> emit) async {

    event.mapOrNull(
      userNameChanged: (value) {

        emit(state.copyWith(
          lists: state.lists?.copyWith( userName: value.userName ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }


  void _collaboratorsChanged(ListCreaterUpdaterEvent event, Emitter<ListCreaterUpdaterState> emit) async {

    event.mapOrNull(
      collaboratorsChanged: (value) {

        emit(state.copyWith(
          lists: state.lists?.copyWith( collaborators: value.collaborators ),
          saveFailureOrSuccessOption: none(),
        ));

      }
    );
    
  }

  Future<void> _saved(ListCreaterUpdaterEvent event, Emitter<ListCreaterUpdaterState> emit) async {

    await event.mapOrNull(
      saved: (_) async {

        Either<ListProsConsFailure, Unit>? failureOrSuccess;

        emit(
          state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none()
          )
        );


        final bool isListNotEmpty = state.lists!.failureOption.isNone();
        bool isDone = false;

        if(isListNotEmpty) {
          failureOrSuccess = state.isEditing
            ? await _iProsConsRepository.updateList(state.lists!).whenComplete(() => isDone = true)
            : await _iProsConsRepository.createList(state.lists!).whenComplete(() => isDone = true);


          
          // emit( 
          //   state.copyWith(
          //     isSaving: false,
          //     showErrorMessages: true,
          //     saveFailureOrSuccessOption: optionOf(failureOrSuccess)
          //   )
          // );  
        }


        if(isDone && emit.isDone){
          emit(_saving(failureOrSuccess));
        }
        
        

      }
    );

  }

  ListCreaterUpdaterState _saving(Either<ListProsConsFailure, Unit>? failOrSuccess) {
    
    return  state.copyWith(
    
        isSaving: false,
    
        showErrorMessages: true,
    
        saveFailureOrSuccessOption: optionOf(failOrSuccess)
    
    );
            

  }

  
  
  
  
  
  // Stream<ListCreaterUpdaterState> mapEventToState(ListCreaterUpdaterEvent event) async*{

  //   event.map(
  //     initialized: (e) async*{
  //       yield e.initialListOption.fold(
  //         () => state, 
          
  //         (lists) {
  //           return state.copyWith(
  //             isEditing: true,
  //             lists: lists
  //           );
  //         }
          
  //       );
  //     },

  //     titleChanged: (e) async*{

  //       yield state.copyWith(
  //         lists: state.lists?.copyWith( title: ListItemName(e.title) ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     }, 
      
  //     descChanged: (e) async*{

  //       yield state.copyWith(
  //         lists: state.lists?.copyWith( desc: ListItemDesc(e.desc) ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     },
      
  //     nameProsChanged: (e) async*{

  //       yield state.copyWith(
  //         lists: state.lists?.copyWith( namePros: ListItemProsConsTitle(e.namePros) ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     }, 
      
  //     nameConsChanged: (e) async*{

  //       yield state.copyWith(
  //         lists: state.lists?.copyWith( nameCons: ListItemProsConsTitle(e.nameCons) ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     }, 
      
  //     statusChanged: (e) async*{

  //       yield state.copyWith(
  //         lists: state.lists?.copyWith( status: e.status ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     }, 
      
  //     isPrivateChanged: (e) async*{

  //       yield state.copyWith(
  //         lists: state.lists?.copyWith( isPrivate: e.isPrivate ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     }, 
      
  //     createDateChanged: (e) async*{

  //       yield state.copyWith(
  //         lists: state.lists?.copyWith( createDate: e.createDate ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     }, 
      
  //     balanceChanged: (e) async*{

  //       yield state.copyWith(
  //         lists: state.lists?.copyWith( balance: e.balance ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     }, 
      
  //     userIdChanged: (e) async*{

  //       yield state.copyWith(
  //         lists: state.lists?.copyWith( userId: e.userId ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     }, 
      
  //     userNameChanged: (e) async*{

  //       yield state.copyWith(
  //         lists: state.lists?.copyWith( userName: e.userName ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     }, 
      
  //     collaboratorsChanged: (e) async*{

  //       yield state.copyWith(
  //         lists: state.lists?.copyWith( collaborators: e.collaborators ),
  //         saveFailureOrSuccessOption: none(),
  //       );

  //     },

  //     saved: (e) async*{

  //       Either<ListProsConsFailure, Unit>? failureOrSuccess;

  //       yield state.copyWith(
  //         isSaving: true,
  //         saveFailureOrSuccessOption: none()
  //       );


  //       final bool isListEmpty = state.lists!.failureOption.isNone(); 

  //       if(isListEmpty){
  //         failureOrSuccess = state.isEditing!
  //           ? await _iProsConsRepository.updateList(state.lists!)
  //           : await _iProsConsRepository.createList(state.lists!);
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
