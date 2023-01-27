import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:flutter/services.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

void isPremiumUser(CustomerInfo customerInfo) {

  final Preferences prefs = Preferences();
  

  try{

    if (customerInfo.entitlements.all['premium_app'] != null &&
    customerInfo.entitlements.all['premium_app']!.isActive == true) {
      prefs.isUserPremium = true;
      print('--- IS Premium User ---');
      return;
    }else{
      prefs.isUserPremium = false;
      print('--- IS NOT Premium User ---');
      return;
    }

  } on PlatformException catch(e){

    var errorCode = PurchasesErrorHelper.getErrorCode(e);
      if (errorCode == PurchasesErrorCode.purchaseCancelledError) {
        print("User cancelled");
      } else if (errorCode == PurchasesErrorCode.purchaseNotAllowedError) {
        print("User not allowed to purchase");
      }

  }
  

}