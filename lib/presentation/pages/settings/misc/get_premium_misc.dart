import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

Future<void> getPremium() async{



  final Preferences prefs = Preferences();


  try {
  
  CustomerInfo customerInfo =
    await Purchases.purchaseProduct('premium_no_ads', type: PurchaseType.inapp);

    if(customerInfo.entitlements.active.containsKey('premium_app')){

      prefs.isUserPremium = customerInfo
      .entitlements.active.containsKey('premium_app');


    }
    
    return;    

  } catch (e) {
    print(e);
  }


}