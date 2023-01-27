import 'package:desicion_maker_app/application/theme/theme_app_cubit.dart';
import 'package:desicion_maker_app/domain/core/utils/encode_emails_utils.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/presentation/pages/settings/misc/get_premium_misc.dart';
import 'package:desicion_maker_app/presentation/pages/settings/widgets/btnmodal_support_dev_widget.dart';
import 'package:desicion_maker_app/presentation/pages/settings/widgets/dialog_signout_widget.dart';
import 'package:desicion_maker_app/presentation/pages/settings/widgets/rating%20_app_dialog_widget.dart';
import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:platform_plus/platform_plus.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../widgets/a_widgets.dart';

class BottomModalOptionsSettingsWidget extends StatefulWidget {
  BottomModalOptionsSettingsWidget({Key? key}) : super(key: key);

  @override
  _BottomModalOptionsSettingsWidgetState createState() => _BottomModalOptionsSettingsWidgetState();
}

class _BottomModalOptionsSettingsWidgetState extends State<BottomModalOptionsSettingsWidget> {
  
  final Preferences prefs = Preferences();
  
  
  @override
  Widget build(BuildContext context){

    final sizeWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [

        sizeWidth >= 800 
        ? SizedBox.shrink()
        :ListTilesWidget(title: 'Theme', 
        icon: prefs.whatTheme ? Icons.light_mode_rounded : Icons.dark_mode_rounded, 
        onTap: (){
          
          prefs.whatTheme = !prefs.whatTheme;
          BlocProvider.of<ThemeAppCubit>(context).changedTheme(prefs.whatTheme);

          setState(() {
          });
        }),
        
        !isAndroid() 
        ? ListTilesWidget(
          title: 'Support the development', 
          color: prefs.whatTheme ? darkColorScheme.primary : lightColorScheme.primary, 
          icon: Icons.offline_bolt_rounded, 
          onTap:(){
            Navigator.pop(context);
            showBottomModalCustomWidget(
              context,
              isExpanded: false,
              widget: BtnModalSupportDevWidget()
            );
          }
        )
        : prefs.isUserPremium 
        ? ListTilesWidget(
          title: 'Supporter User 🚀', 
          color: prefs.whatTheme ? darkColorScheme.primary : lightColorScheme.primary, 
          icon: Icons.offline_bolt_rounded, 
          onTap: (){
          
        })         
        :ListTilesWidget(
          title: 'Become a Supporter and remove Ads', 
          color: prefs.whatTheme ? darkColorScheme.primary : lightColorScheme.primary, 
          icon: Icons.offline_bolt_rounded, 
          onTap: (){
          
          if(isAndroid()){
            return lauchPlayStoreBilling();
          }

        }),
        isAndroid()
        ? ListTilesWidget(title: 'Continue in the Web App', icon: Icons.web_rounded, onTap: (){
          launchUrlString('https://desicionmakerapp.web.app');
        })     
        : SizedBox.shrink(),


        // ListTilesWidget(title: 'Settings', icon: Icons.settings, onTap: (){
        //   // Navigator.pushNamed(context, '/Settings');
        // }),

        // // ListTilesWidget(title: 'Feedback', icon: Icons.feedback_rounded, onTap: (){
        // //   sendFeedback();
        // // }),
        
        isAndroid() 
        ? ListTilesWidget(title: 'Rate in Play Store', icon: Icons.star_half_rounded, onTap: (){
          showDialog(
          context: context,
          builder: (context) => RatingAppDialogWidget(),
        );
        })
        : ListTilesWidget(title: 'Send feedback', icon: Icons.feedback_rounded, onTap: (){
          sendFeedback();
        }),

        ListTilesWidget(title: 'License of Open Source', icon: Icons.code_rounded, onTap: (){
          Navigator.pushNamed(context, '/License');
        }),
        
        ListTilesWidget(title: 'Privacy Policy', icon: Icons.policy_rounded, onTap: (){
          // Navigator.pushNamed(context, '/Policy');
          launchUrlString('https://www.freeprivacypolicy.com/live/56ac0980-362f-43ab-9510-07668719829c');
        }),

        ListTilesWidget(title: 'LogOut', color: prefs.whatTheme ? darkColorScheme.error : lightColorScheme.error, icon: Icons.logout_rounded, onTap: (){
          Navigator.pop(context);

          showDialog(context: context, builder: ((context) => BuildDialogSignOutWidget(gettingPremium: false,)) );

        }),

        SizedBox(height:10,),
      ],
    );  
  }



  bool isAndroid(){
    return platformPlus.isAndroidNative; 
  }


  void sendFeedback() async {

    PackageInfo packageInfo = await PackageInfo.fromPlatform();            
    
    String _version = packageInfo.version;
    String _buildNumber = packageInfo.buildNumber;
      final Uri _emailLaunchUri = Uri(
        scheme: 'mailto',
        path: 'desicionmakerapp.feed.bunkalogic@gmail.com',
        query: encodeQueryParameters(<String, String>{
          'subject': 'FEEDBACK ${prefs.getCurrentUsername} ',
          'body': '(VersionNumber: $_version) \n (BuildNumber: $_buildNumber) \n \n Please let us know what we can improve, thank you for taking the time to help us.'
        }),
      );  
      
    launchUrlString(_emailLaunchUri.toString());


  }

  Future<void> lauchPlayStoreBilling() async {

    if(prefs.isAnon){
      showDialog(context: context, builder: ((context) => BuildDialogSignOutWidget(gettingPremium: false,)) );
      return;
    }

    // Offerings offerings;
      try {
        // offerings = await Purchases.getOfferings();



        await getPremium();

      } on PlatformException catch (e) {
        print('--- Offerings Error $e  ---');
      }

  }

}