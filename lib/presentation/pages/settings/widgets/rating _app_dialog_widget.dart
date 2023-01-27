import 'package:app_review/app_review.dart';
import 'package:desicion_maker_app/domain/core/utils/encode_emails_utils.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';


class RatingAppDialogWidget extends StatefulWidget {
  RatingAppDialogWidget({Key? key}) : super(key: key);

  @override
  State<RatingAppDialogWidget> createState() => _RatingAppDialogWidgetState();
}

class _RatingAppDialogWidgetState extends State<RatingAppDialogWidget> {

  final Preferences prefs = Preferences();


  @override
  Widget build(BuildContext context) {
    return RatingDialog(
      image: Image(
        image: AssetImage('assets/W.png'),
        height: 45,
        fit: BoxFit.scaleDown,
      ),
      title: Text('Rate WeMaker', style: Theme.of(context).textTheme.headline6, textAlign: TextAlign.center),
      starColor: darkColorScheme.primary,
      starSize: 28,
      showCloseButton: true,
      submitButtonText: 'Send',
      submitButtonTextStyle: Theme.of(context).textTheme.button!,
      initialRating: 1,
      onSubmitted: (resp) {
        print('Rating => ${resp.rating}, Comment => ${resp.comment}');

        if(resp.rating < 3.0){
          sendFeedback(resp.comment);
        }else{
          rateAndReviewApp();
        }



      },
    );   
  }


  Future<void> sendFeedback(String comment) async {

    PackageInfo packageInfo = await PackageInfo.fromPlatform();            

          String _version = packageInfo.version;
          String _buildNumber = packageInfo.buildNumber;

            final Uri _emailLaunchUri = Uri(
              scheme: 'mailto',
              path: 'desicionmakerapp.feed.bunkalogic@gmail.com',
              query: encodeQueryParameters(<String, String>{
                'subject': 'FEEDBACK from RATING ${prefs.getCurrentUsername} ',
                'body': '(VersionNumber: $_version) \n (BuildNumber: $_buildNumber) \n \n Please let us know what we can improve, thank you for taking the time to help us. \n $comment'
              }),
            );

    await launchUrlString(_emailLaunchUri.toString());        

  }


  void rateAndReviewApp(){
    prefs.voteInPlayStore = true;

    AppReview.writeReview.then((onValue){
            setState(() {
              print(onValue);
            });
            
    });
  }  



}