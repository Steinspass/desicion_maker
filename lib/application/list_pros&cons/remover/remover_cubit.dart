import 'package:bloc/bloc.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/i_prosCons_repository.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/itemProsCons.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'remover_state.dart';
part 'remover_cubit.freezed.dart';

@injectable
class RemoverCubit extends Cubit<RemoverState> {

  final IProsConsRepository _iProsConsRepository;

  RemoverCubit(this._iProsConsRepository) : super(RemoverState.initial());


  Future<void> removerList(ListProsCons list) async {

    emit(RemoverState.actionInProgress());

    final possibleFailure = await _iProsConsRepository.deleteList(list);

    possibleFailure.fold(
      (f) => emit(RemoverState.deleteFailure(f)), 
      (r) => emit(RemoverState.deleteSuccess())
    );

  }

  Future<void> removerItem(ItemProsCons item, bool isPro, String id) async {

    emit(RemoverState.actionInProgress());

    final possibleFailure = await _iProsConsRepository.deleteItem(item, isPro, id);

    possibleFailure.fold(
      (f) => emit(RemoverState.deleteFailure(f)), 
      (r) => emit(RemoverState.deleteSuccess())
    );

  }

}
