import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:platform_plus/platform_plus.dart';

void getIntersticialAds(String unitId){
  InterstitialAd _interstitialAd;
  final Preferences prefs = Preferences();

  //if the platform is no android native dont need Ads
    if(!platformPlus.isAndroidNative) return null;

    // if the user is premium not get ads
    if(prefs.isUserPremium) return null;

    
    InterstitialAd.load(
      adUnitId: unitId, 
      request: AdRequest(), 
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;

          _interstitialAd.fullScreenContentCallback = FullScreenContentCallback(
            
            onAdImpression: (ad) {
              print('--- intersticial $ad impression occurred. ---');
              ad.show();
            },
            
            onAdDismissedFullScreenContent: (ad) {
              print('--- $ad onAdDismissedFullScreenContent. ---');
              ad.dispose();
            },

            onAdFailedToShowFullScreenContent: (ad, error) {
              print('--- $ad onAdFailedToShowFullScreenContent: $error ---' );
              ad.dispose();
            },

          );
          
        }, 
        onAdFailedToLoad: (error) {
           print('--- InterstitialAd failed to load: $error ---');
        },
      )
    );



    


}