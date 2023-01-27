import 'package:bloc/bloc.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'selected_list_state.dart';
part 'selected_list_cubit.freezed.dart';

@injectable
class SelectedListCubit extends Cubit<SelectedListState> {
  SelectedListCubit() : super(SelectedListState.initial());


  void listSelectedChanged(ListProsCons? listSelected){

    emit(state.copyWith(listSelected: listSelected ?? ListProsCons.empty()));

  }

}
