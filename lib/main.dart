import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/injection.dart';
import 'package:desicion_maker_app/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:platform_plus/platform_plus.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  final prefs = new Preferences();
  await prefs.initPrefs();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  if(platformPlus.isAndroidNative){
    Purchases.setDebugLogsEnabled(true);

    await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    ); // To turn off landscape mode

    await Purchases.configure(PurchasesConfiguration('goog_NQoXscRGriTIHeXdRQdSudlFHmT'));
    await MobileAds.instance.initialize();

  }
  runApp(AppWidget());
}

