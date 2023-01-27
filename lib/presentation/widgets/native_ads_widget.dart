import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:platform_plus/platform_plus.dart';

class NativeAdsWidget extends StatefulWidget {
  final String unitId;
  NativeAdsWidget({
    Key? key,
    required this.unitId
  }) : super(key: key);

  @override
  State<NativeAdsWidget> createState() => _NativeAdsWidgetState();
}

class _NativeAdsWidgetState extends State<NativeAdsWidget> {
  
  final Preferences prefs = Preferences();

  @override
  Widget build(BuildContext context) {
    
    //if the platform is no android native dont need Ads
    if(!platformPlus.isAndroidNative) return SizedBox.shrink();

    // if the user is premium not get ads
    if(prefs.isUserPremium) return SizedBox.shrink();

    

    late AdWidget adWidget;

    return FutureBuilder(
      future: Admob.nativeAd(widget.unitId).then(
        (value) {
          adWidget = AdWidget(ad: value,);
        }, 
      ),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox(
            height: 60,
            width: 60,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          return SizedBox(height: 60, child: adWidget);
        } else {
          return const SizedBox(
            height: 60,
            width: 60,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
    
  }
}


class Admob{
  static Future<NativeAd> nativeAd(String adUnitId) async {
    final NativeAd nativeAd = NativeAd(
      adUnitId: adUnitId,
      factoryId: 'listTile',
      request: const AdRequest(),
      listener: NativeAdListener(
        onAdLoaded: (Ad ad) => debugPrint('Ad loaded.'),
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          ad.dispose();
          debugPrint('Ad failed to load: $error');
        },
        onAdOpened: (Ad ad) => debugPrint('Ad opened.'),
        onAdClosed: (Ad ad) => debugPrint('Ad closed.'),
        onAdImpression: (Ad ad) => debugPrint('Ad impression.'),
      ),
    );
    await nativeAd.load();
    return nativeAd;
  }
}