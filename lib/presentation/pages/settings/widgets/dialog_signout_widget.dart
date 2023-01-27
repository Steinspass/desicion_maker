import 'package:desicion_maker_app/application/auth/auth_bloc.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class BuildDialogSignOutWidget extends StatefulWidget {
  final bool gettingPremium;
  
  BuildDialogSignOutWidget({
    Key? key,
    required this.gettingPremium
  }) : super(key: key);

  @override
  State<BuildDialogSignOutWidget> createState() => _BuildDialogSignOutWidgetState();
}

class _BuildDialogSignOutWidgetState extends State<BuildDialogSignOutWidget> {
  final Preferences prefs = Preferences();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),

        title: TextWidget(
          text: prefs.isAnon ? 'Go to login with Google' : 'Log Out' , 
          padding: const EdgeInsets.all(8.0), 
          textStyle: Theme.of(context).textTheme.headline6
        ),

        content: TextWidget(
          text: prefs.isAnon 
          ? !widget.gettingPremium 
          ? 'Go to login with google so you dont lose what you ve been working on'
          :  'Go to login with google so you dont lose your Premium Accesss'
          : 'Are you sure you want to log out?' , 
          padding: const EdgeInsets.all(6.0), 
          textStyle: Theme.of(context).textTheme.subtitle2
        ),

        actions: [
          GestureDetector(
            onTap: (){

              if(prefs.isAnon){

                Navigator.pushReplacementNamed(context, '/Login');

                context.read<AuthBloc>().add(SignedOut());


              }else{

                Navigator.pop(context);
                
              }

            },
            child: TextWidget(
            text: prefs.isAnon ? 'LogOut' : 'Cancel' , 
            padding: const EdgeInsets.all(8.0), 
            textStyle: Theme.of(context).textTheme.button
            ),
          ),
          SizedBox(width: 4,),
          RoundedButtonWidget(
            text: prefs.isAnon ? 'Login' : 'LogOut',
            onTap: () {

              if(prefs.isAnon){

                Navigator.pushReplacementNamed(context, '/Login');

              }else{

                Navigator.pushReplacementNamed(context, '/Login');

                prefs.getCurrentUserID = '';
                prefs.getCurrentUsername = '';

                context.read<AuthBloc>().add(SignedOut());

              }

            },
          )
        ],
      ),
    );
  }
}