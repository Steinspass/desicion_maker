import 'package:bloc/bloc.dart';
import 'package:desicion_maker_app/domain/core/utils/get_percent_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'percent_list_state.dart';
part 'percent_list_cubit.freezed.dart';

@injectable
class PercentListCubit extends Cubit<PercentListState> {
  
  PercentListCubit() : super(PercentListState.initial());
  
  int totality = 0;

  int totalSizePro = 0;
  int totalSizeCons = 0;

  int percentPro = 0;
  int percentCons = 0;

  void changedPercentPro(int totalItem, int totalimpt){
    
    totalSizePro = getTotalSizeListUtils(totalItem: totalItem, totalImpt: totalimpt); 
    
    totality = totalSizePro + totalSizeCons;

    percentPro = getPercentUtils(totalSizelist: totalSizePro , totality: totality);


    emit(state.copyWith(percentPro: percentPro));
  }


  void changedPercentCons(int totalItem, int totalimpt){
    totalSizeCons = getTotalSizeListUtils(totalItem: totalItem, totalImpt: totalimpt);
    
    totality = totalSizePro + totalSizeCons;

    percentCons = getPercentUtils(totalSizelist: totalSizeCons , totality: totality);

    emit(state.copyWith(percentCons: percentCons));
  }


  // void getPercent(){

  //   print('--- CUBIT PERCENT LIST CONS => $percentCons  ---');
  //   print('--- CUBIT PERCENT LIST PROS => $percentPro  ---');

  //   emit(PercentListState(percentPro: percentPro, percentCons: percentCons));


  // }

}
