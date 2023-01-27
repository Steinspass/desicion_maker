import 'package:auto_size_text/auto_size_text.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ItemProsConsWidget extends StatefulWidget {

  final String? name;
  final int? importance;
  final bool? isPros;
  final Function()? onTap;
  final Function()? onLongPress;

  ItemProsConsWidget({
    @required this.name,
    @required this.importance,
    @required this.isPros,
    @required this.onTap,
    @required this.onLongPress
  });

  @override
  State<ItemProsConsWidget> createState() => _ItemProsConsWidgetState();
}

class _ItemProsConsWidgetState extends State<ItemProsConsWidget> {

  final Preferences prefs = Preferences();

   



  
  
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0
      ),
      child: GestureDetector(
        onTap: widget.onTap ?? (){},
        onLongPress: widget.onLongPress ?? (){},
        child: Card(
          color: getBackgroundContainer(),
          elevation: 1.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(   
              child: Row(
                children: [
                  Container(
                    height: 6.h,
                    width: 3.h,
                    decoration: BoxDecoration(
                      color: getOnContainer(),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Center(
                      child: TextWidget(
                      text: widget.importance.toString(), 
                      padding: const EdgeInsets.all(0), 
                      textStyle: getImptTextStyle(),
                  ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: AutoSizeText(
                        widget.name!,
                        style: getTextStyle(),
                        presetFontSizes: [14, 12],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis
                      ),
                    ),
                  ),
                  // TextWidget(
                  //   text: widget.name, 
                  //   padding: const EdgeInsets.all(2), 
                  //   textStyle: getTextStyle(),
                  // ),
                ],
              ),
              height: 6.h,
              width: 80.w,
            ),
        ),
      ),
    );
  }


  TextStyle getTextStyle(){

    if(widget.isPros!){
      return TextStyle(
        fontWeight: FontWeight.w600, 
        fontSize: 14.0,  
        color: prefs.whatTheme ? darkColorScheme.onTertiaryContainer : lightColorScheme.onTertiaryContainer
      );
    }else{
      return TextStyle(
        fontWeight: FontWeight.w600, 
        fontSize: 14.0,  
        color: prefs.whatTheme ? darkColorScheme.onSecondaryContainer : lightColorScheme.onSecondaryContainer
      );
    }

  }

  TextStyle getImptTextStyle(){

    if(widget.isPros!){
      return TextStyle(
        fontWeight: FontWeight.w600, 
        fontSize: 14.0,  
        color: prefs.whatTheme ? darkColorScheme.tertiaryContainer : lightColorScheme.tertiaryContainer
      );
    }else{
      return TextStyle(
        fontWeight: FontWeight.w600, 
        fontSize: 14.0,  
        color: prefs.whatTheme ? darkColorScheme.secondaryContainer : lightColorScheme.secondaryContainer
      );
    }

  }


  Color getBackgroundContainer(){

    if(widget.isPros!){
      return prefs.whatTheme ? darkColorScheme.tertiaryContainer : lightColorScheme.tertiaryContainer;
    }else{
      return prefs.whatTheme ? darkColorScheme.secondaryContainer : lightColorScheme.secondaryContainer;
    }

  }

  Color getOnContainer(){

    if(widget.isPros!){
      return prefs.whatTheme ? darkColorScheme.onTertiaryContainer : lightColorScheme.onTertiaryContainer;
    }else{
      return prefs.whatTheme ? darkColorScheme.onSecondaryContainer : lightColorScheme.onSecondaryContainer;
    }

  }
}