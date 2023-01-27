

import 'package:desicion_maker_app/domain/list_pros&cons/itemProsCons.dart';
import 'package:kt_dart/kt.dart';


int sumImportance(KtList<ItemProsCons> items){
  int totalImpt = 0;

  if(items.isEmpty()) return totalImpt;

  items.onEach((item) { 
    totalImpt += item.importance!;
  });

  return totalImpt;
}


/// 1. TOTAL ITEM PRO + TOTAL IMPORTANCE PRO = TOTAL PROS
  /// 2. TOTAL ITEM CONS + TOTAL IMPORTANCE CONS = TOTAL CONS
  /// 3. TOTAL PROS + TOTAL CONS = TOTALITY
  /// GET PERCENT PRO
  /// -----
  /// 4. TOTAL PROS / TOTALITY = PROS RATIO
  /// 5. PROS RATIO x 100 = PERCENT PRO
  /// ----
  /// GET PERCENT CONTRA
  /// ----
  /// 4. TOTAL CONS / TOTALITY = CONS RATIO
  /// 5. CONS RATIO x 100 = PERCENT CONS
  /// ----
  /// GET IS PRO or CONS
  /// 6. PERCENT PRO > PERCENT CONS == IS PRO
  /// 


int getTotalSizeListUtils({
  required int totalItem,
  required int totalImpt,
}){

  int totalSize = totalItem + totalImpt;

  return totalSize;
}


int getPercentUtils({
  required int totalSizelist,
  required int totality,
}){
  
  double ratio = totalSizelist / totality;

  double percent = ratio * 100;

  int percentRound = percent.round();

  return  percentRound;

}


bool isProUtils({
  required int percentPro,
  required int percentCons
}){

  return percentPro > percentCons;

}