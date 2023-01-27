import 'dart:ui';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:desicion_maker_app/application/auth/auth_bloc.dart';
import 'package:desicion_maker_app/application/auth/login/login_cubit.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/presentation/layout/responsive_widget_layout.dart';
import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:platform_plus/platform_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Preferences prefs = Preferences();

  final ButtonStyle styleElevatedButton = ElevatedButton.styleFrom(
    elevation: 0.0,
    primary: darkColorScheme.onBackground,
    onPrimary: darkColorScheme.background,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
  );

  final TextStyle googleLoginTextStyle = TextStyle(
      fontSize: 14.0,
      color: darkColorScheme.background,
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        
        state.authFailureOrSuccessOption?.fold(
          () {}, 
          (either) => either.fold(
            (l){

              FlushbarHelper.createError(
                message: l.map(
                  cancelledByUser: (_) => 'Cancelled', 
                  serverError: (_) =>'Server Error'
                  ),
                  title: 'Error ocurred' 
              ).show(context);

            },

            (_){

              Navigator.pushNamedAndRemoveUntil(context, '/Home', (_) => false ,);

              context.read<AuthBloc>().add(AuthCheckRequested());


            }

          )
        );

      },
      builder: (context, state) {

        if(platformPlus.isAndroidNative) return mobileLoginPageAndroid(context, state);

        return responsiveWidgetLayout(
          context,
          mobileL: mobileLoginPageWeb(context, state),
          tabletL: mobileLoginPageWeb(context, state),
          desktopL: desktopLoginPage(context, state),
        );
        
      },
    );
  }


  Scaffold mobileLoginPageWeb(BuildContext context, LoginState state) {
    return Scaffold(
        body: Column(
          children: [
            // SizedBox(
            //   height: 1.h,
            // ),

            Container(
              width: 100.w,
              height: 30.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30),),
                gradient: LinearGradient(
                  colors: gradientColors(),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  Center(
                  child: TextWidget(
                    text: 'WeMaker',
                    padding: const EdgeInsets.all(8.0),
                    textStyle: Theme.of(context).textTheme.headline3)),
                 Center(
                child: TextWidget(
                    text: "Start making the right decisions and don't waste time with the Pros and Cons list.",
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 30
                    ),
                    textStyle: textStyleSubtitle() )),
                  SizedBox(
                    height: 1.h,
                  ),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RoundedButtonIconWidget(
                            text: 'Play Store',
                            icon: BoxIcons.bxl_play_store,
                            onTap: () {
                              launchUrlString('https://play.google.com/store/apps/details?id=com.bunkalogic.desicionmakerapp');
                            },
                          ),
                        ),
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RoundedButtonIconWidget(
                            text: 'Coming Soon', 
                            icon: BoxIcons.bxl_apple,
                            onTap: () {
                              
                            },
                          ),
                        ),
                      ],
                    ),
                  )                       
                ],
              ),
            ),
            Spacer(),
            
            
            // TODO: add the checkbox for privacy policies and terms

            RoundedButtonLogoWidget(
              logo: Logos.google,
              text: "Continue with Google",
              textStyle: textStyleGoogleButon(),
              buttonStyle: styleElevatedButton,
              onTap: () {

                prefs.isAnon = false;

                context.read<LoginCubit>().signInWithGooglePressed();
              },
            ),

            SizedBox(
              height: 1.h,
            ),
            prefs.isAnon 
            ? SizedBox.shrink()
            : Padding(
                padding: const EdgeInsets.only(right: 60, left: 60),
                child: Divider(),
              ),
            SizedBox(
              height: 1.h,
            ),

            prefs.isAnon 
            ? SizedBox.shrink()
            : BorderButtonWidget(
              text: 'Continue as anonymous user',
              onTap: () {
                
                prefs.isAnon = true;

                context.read<LoginCubit>().signInAnonymousPressed();
                
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            if(state.isSubmitting!)...[
              const LinearProgressIndicator(value: null,)
            ]
          ],
        ),
      );
  }

  
  TextStyle textStyleSubtitle() {
    return TextStyle(
        fontSize: 20,
        color: prefs.whatTheme 
        ? darkColorScheme.primaryContainer 
        : lightColorScheme.primary,
        fontWeight: FontWeight.w700);
  }

  Scaffold mobileLoginPageAndroid(BuildContext context, LoginState state) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Image(
                image: AssetImage('assets/W.png'),
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
            Center(child: TextWidget(
                    text: "WeMaker",
                    padding: const EdgeInsets.all(8.0),
                    textStyle: Theme.of(context).textTheme.headline4),),
            Spacer(),
            TextWidget(
                    text: "Welcome, login to take the next decision",
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 60
                    ),
                    textStyle: Theme.of(context).textTheme.subtitle1),
            // Center(
            //     child: TextWidget(
            //         text: "Start making the right decisions and don't waste your time be more productive",
            //         padding: const EdgeInsets.symmetric(
            //           horizontal: 40,
            //           vertical: 40
            //         ),
            //         textStyle: Theme.of(context).textTheme.subtitle1)),
            
            // TODO: add the checkbox for privacy policies and terms

            RoundedButtonLogoWidget(
              logo: Logos.google,
              text: "Continue with Google",
              textStyle: textStyleGoogleButon(),
              buttonStyle: styleElevatedButton,
              onTap: () {

                prefs.isAnon = false;

                context.read<LoginCubit>().signInWithGooglePressed();
              },
            ),

            SizedBox(
              height: 1.h,
            ),
            prefs.isAnon 
            ? SizedBox.shrink()
            : Padding(
                padding: const EdgeInsets.only(right: 60, left: 60),
                child: Divider(),
              ),
            SizedBox(
              height: 1.h,
            ),

            prefs.isAnon 
            ? SizedBox.shrink()
            : BorderButtonWidget(
              text: 'Continue as anonymous user',
              onTap: () {
                
                prefs.isAnon = true;

                context.read<LoginCubit>().signInAnonymousPressed();
                
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            if(state.isSubmitting!)...[
              const LinearProgressIndicator(value: null,)
            ]
          ],
        ),
      );
  }

  



  Scaffold desktopLoginPage(BuildContext context, LoginState state) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 2.h,
            ),

            Container(
              width: 98.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: gradientColors(),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  Center(
                  child: TextWidget(
                    text: 'WeMaker',
                    padding: const EdgeInsets.all(8.0),
                    textStyle: Theme.of(context).textTheme.headline1)),
                 Center(
                child: SizedBox(
                  width: 40.w,
                  child: TextWidget(
                      text: "Start making the right decisions and don't waste time with the Pros and Cons list.",
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 30
                      ),
                      textStyle: Theme.of(context).textTheme.headline2),
                )),
                  SizedBox(
                    height: 4.h,
                  ),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RoundedButtonIconWidget(
                            text: 'Play Store',
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24.0,
                              vertical: 8.0
                            ), 
                            icon: BoxIcons.bxl_play_store,
                            onTap: () {
                              launchUrlString('https://play.google.com/store/apps/details?id=com.bunkalogic.desicionmakerapp');
                            },
                          ),
                        ),
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RoundedButtonIconWidget(
                            text: 'Coming Soon',
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24.0,
                              vertical: 8.0
                            ), 
                            icon: BoxIcons.bxl_apple,
                            onTap: () {
                              
                            },
                          ),
                        ),
                      ],
                    ),
                  )                       
                ],
              ),
            ),
            
            Spacer(),
            Center(
              child: Image(
                image: AssetImage('assets/W.png'),
                height: 40.0,
                fit: BoxFit.cover,
              ),
            ),
            
            Center(
                child: TextWidget(
                    text: "Welcome, login to take the next decision",
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 60
                    ),
                    textStyle: Theme.of(context).textTheme.headline6)),
            
            // TODO: add the checkbox for privacy policies and terms

            RoundedButtonLogoWidget(
              logo: Logos.google,
              text: "Continue with Google",
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 8.0
              ), 
              textStyle: textStyleGoogleButon(),
              buttonStyle: styleElevatedButton,
              onTap: () {

                prefs.isAnon = false;

                context.read<LoginCubit>().signInWithGooglePressed();
              },
            ),

            SizedBox(
              height: 1.h,
            ),
            prefs.isAnon 
            ? SizedBox.shrink()
            : SizedBox(
                width: 20.w,
                child: Divider(),
              ),
            SizedBox(
              height: 1.h,
            ),

            prefs.isAnon 
            ? SizedBox.shrink()
            : BorderButtonWidget(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 8.0
              ), 
              text: 'Continue as anonymous user',
              onTap: () {
                
                prefs.isAnon = true;

                context.read<LoginCubit>().signInAnonymousPressed();
                
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            if(state.isSubmitting!)...[
              const LinearProgressIndicator(value: null,)
            ]
          ],
        ),
      );
  }


  List<Color> gradientColors(){

    List<Color> darkGradientColor = [darkColorScheme.tertiary.withOpacity(0.9), darkColorScheme.secondary.withOpacity(0.9)];
    List<Color> lightGradientColor = [lightColorScheme.tertiaryContainer, lightColorScheme.secondaryContainer];

    return prefs.whatTheme 
    ? darkGradientColor
    : lightGradientColor;
  }



  TextStyle textStyleGoogleButon() {
    return TextStyle(
        fontSize: 14.0,
        color: prefs.whatTheme
            ? darkColorScheme.background
            : lightColorScheme.onSurfaceVariant,
        fontWeight: FontWeight.w600);
  }

  ButtonStyle btnStyleGoogle() {
    return ElevatedButton.styleFrom(
      elevation: 0.0,
      primary: prefs.whatTheme
          ? darkColorScheme.onBackground
          : lightColorScheme.inversePrimary,
      onPrimary: prefs.whatTheme
          ? darkColorScheme.background
          : darkColorScheme.inversePrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
    );
  }

  
  
}
