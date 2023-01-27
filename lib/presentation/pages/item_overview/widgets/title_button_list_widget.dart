import 'package:desicion_maker_app/domain/list_pros&cons/itemProsCons.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/presentation/pages/form_item/btnmodal_create_item_widget.dart';
import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:flutter/material.dart';



class TitleButtonListWidget extends StatefulWidget {
  final ListProsCons list;
  final String proLabel;
  final String consLabel;
  
  TitleButtonListWidget({
    Key? key,
    required this.list,
    required this.proLabel,
    required this.consLabel
  }) : super(key: key);

  @override
  State<TitleButtonListWidget> createState() => _TitleButtonListWidgetState();
}

class _TitleButtonListWidgetState extends State<TitleButtonListWidget> {
  
  final Preferences prefs = Preferences();

  
  
  
  
  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 20,),
        Expanded(
          child: RoundedButtonIconWidget(
            onTap: (){
              print('--- ITEM ID FROM title BTN CREATE ITEM WIDGET ${widget.list.id} ---');

              showBottomModalCustomWidget(context, widget: BtnModalCreateItemWidget(isPro: true, item: ItemProsCons.empty(), listId: widget.list.id!.getOrCrash(),), isExpanded: false );

            },
            text: widget.proLabel,
            icon: Icons.add_circle_rounded,
            buttonStyle: getButtonStyle(true),
            textStyle: getTextStyle(true),
          ),
        ),
        SizedBox(width: 20,),
        Expanded(
          child: RoundedButtonIconWidget(
            onTap: (){

              showBottomModalCustomWidget(context, widget: BtnModalCreateItemWidget(isPro: false, item: ItemProsCons.empty(), listId: widget.list.id!.getOrCrash()), isExpanded: false );

            },
            text: widget.consLabel,
            icon: Icons.remove_circle_rounded,
            buttonStyle: getButtonStyle(false),
            textStyle: getTextStyle(false),
          ),
        ),
        SizedBox(width: 20,),
      ],
    );
  }

  TextStyle getTextStyle(bool isPro){

    if(isPro){
      return TextStyle(
        fontWeight: FontWeight.w600, 
        fontSize: 14.0,  
        color: prefs.whatTheme ? darkColorScheme.onTertiary : lightColorScheme.tertiaryContainer
      );
    }else{
      return TextStyle(
        fontWeight: FontWeight.w600, 
        fontSize: 14.0,  
        color: prefs.whatTheme ? darkColorScheme.onSecondary : lightColorScheme.secondaryContainer
      );
    }

  }


  ButtonStyle getButtonStyle(bool isPro){

    if(isPro){
      return  ElevatedButton.styleFrom(
        primary: prefs.whatTheme ? darkColorScheme.tertiary : lightColorScheme.tertiary,
        onPrimary:prefs.whatTheme ? darkColorScheme.onTertiary : lightColorScheme.tertiaryContainer,
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 8.0
      ),
  );
    }else{
      return ElevatedButton.styleFrom(
        primary:prefs.whatTheme ? darkColorScheme.secondary : lightColorScheme.secondary,
        onPrimary:prefs.whatTheme ? darkColorScheme.onSecondary : lightColorScheme.secondaryContainer,
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 8.0
        ),
      );
    }

  }

}


