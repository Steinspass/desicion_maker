import 'package:desicion_maker_app/domain/list_pros&cons/value_objects.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:flutter/material.dart';

class ChipsWidget extends StatefulWidget {


  final int status;
  final void Function()? onTap;

  ChipsWidget({
    required this.status,
    @required this.onTap

  });

  @override
  _ChipsWidgetState createState() => _ChipsWidgetState();
}

class _ChipsWidgetState extends State<ChipsWidget> {
  
  final Preferences prefs = Preferences();
  
  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: TextWidget(text: labelText(), padding: const EdgeInsets.all(0), textStyle: getTextStyle()),
      onPressed: widget.onTap ?? (){},
      elevation: 1.0,
      avatar: iconChip(),
      // labelPadding: const EdgeInsets.only(left: 4), 
      padding: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0)
      ),
      backgroundColor: colorBackground(),

    );
  }


  Widget iconChip(){
    switch (widget.status) {
      
      case StatusList.notdecide: return Icon(Icons.timelapse_rounded, color: prefs.whatTheme ? darkColorScheme.primary : lightColorScheme.primary, size: 16,);

      case StatusList.pros: return Icon(Icons.add_circle_rounded, color: prefs.whatTheme ? darkColorScheme.tertiary : lightColorScheme.tertiary, size: 16,);

      case StatusList.cons: return Icon(Icons.remove_circle_rounded, color: prefs.whatTheme ? darkColorScheme.secondary : lightColorScheme.secondary, size: 16,);

      default: return Icon(Icons.timelapse_rounded, color: prefs.whatTheme ? darkColorScheme.primary : lightColorScheme.primary);
      
    }
  }


  String labelText(){
    switch (widget.status) {
      case StatusList.notdecide: return  'Not Decided';

      case StatusList.pros: return 'Pro Decided';

      case StatusList.cons: return 'Cons Decided';

      default: return 'Not Decide';
      
    }  
  }


  Color colorBackground(){
    switch (widget.status) {
          
      case StatusList.notdecide: return prefs.whatTheme ? darkColorScheme.onPrimary : lightColorScheme.primaryContainer;

      case StatusList.pros: return prefs.whatTheme ? darkColorScheme.onTertiary : lightColorScheme.tertiaryContainer;

      case StatusList.cons: return prefs.whatTheme ? darkColorScheme.onSecondary : lightColorScheme.secondaryContainer;

      default: return prefs.whatTheme ? darkColorScheme.tertiary : lightColorScheme.tertiary;
      
    }  
  }


  TextStyle getTextStyle(){
    
    switch (widget.status) {
      case StatusList.notdecide: {
        return TextStyle(
          fontWeight: FontWeight.w600, 
          fontSize: 12.0,  
          color: prefs.whatTheme ? darkColorScheme.primary : lightColorScheme.primary
        );
      }

      case StatusList.pros: {
        return TextStyle(
          fontWeight: FontWeight.w600, 
          fontSize: 12.0,  
          color: prefs.whatTheme ? darkColorScheme.tertiary : lightColorScheme.tertiary
        );
      }

      case StatusList.cons: {
        return TextStyle(
          fontWeight: FontWeight.w600, 
          fontSize: 12.0,  
          color: prefs.whatTheme ? darkColorScheme.secondary : lightColorScheme.secondary
        );
      }

      default: return TextStyle(
          fontWeight: FontWeight.w600, 
          fontSize: 14.0,  
          color: prefs.whatTheme ? darkColorScheme.onPrimary : lightColorScheme.primary
        );
    }

  }
}


class ChipsSelectedWidget extends StatefulWidget {
  
  final String label;
  final int status;
  final Function(bool) onSelected;
  
  ChipsSelectedWidget({
    required this.label,
    required this.status,
    required this.onSelected,
    
  });

  @override
  State<ChipsSelectedWidget> createState() => _ChipsSelectedWidgetState();
}

class _ChipsSelectedWidgetState extends State<ChipsSelectedWidget> {

  final Preferences prefs = Preferences();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: FilterChip(
        label: TextWidget(text: labelText(), padding: const EdgeInsets.only(top: 2), textStyle: getTextStyle()),
        // labelPadding: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
        elevation: 1.0,
        avatar: iconChip(),
        clipBehavior: Clip.antiAlias,
        showCheckmark: false,
        // labelPadding: const EdgeInsets.only(left: 3, top: 0, right: 3, bottom: 0), 
        padding: const EdgeInsets.only(bottom: 10),
        backgroundColor: prefs.whatTheme ? darkColorScheme.background : lightColorScheme.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(
            color: colorBackground()
          )
        ),  // colorBackground(),
        onSelected: (value) {
          widget.onSelected(value);
        },

      ),
    );
  }


  Widget iconChip(){
    switch (widget.status) {
      
      case StatusList.notdecide: return Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Icon(Icons.timelapse_rounded, color: prefs.whatTheme ? darkColorScheme.primary : lightColorScheme.primary, size: 16,),
      );

      case StatusList.pros: return Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Icon(Icons.add_circle_rounded, color: prefs.whatTheme ? darkColorScheme.tertiary : lightColorScheme.tertiary, size: 16,),
      );

      case StatusList.cons: return Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Icon(Icons.remove_circle_rounded, color: prefs.whatTheme ? darkColorScheme.secondary : lightColorScheme.secondary, size: 16,),
      );

      case StatusList.all: return Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Icon(Icons.format_list_bulleted_rounded, color: prefs.whatTheme ? darkColorScheme.onBackground : lightColorScheme.onBackground, size: 16,),
      );

      default: return Icon(Icons.timelapse_rounded, color: prefs.whatTheme ? darkColorScheme.primary : lightColorScheme.primary);
      
    }
  }


  String labelText(){
    switch (widget.status) {
      case StatusList.notdecide: return  'Not Decided';

      case StatusList.pros: return 'Pro Decided';

      case StatusList.cons: return 'Cons Decided';

      case StatusList.all: return 'All';

      default: return 'Not Decide';
      
    }  
  }


  Color colorBackground(){
    switch (widget.status) {
          
      case StatusList.notdecide: return prefs.whatTheme ? darkColorScheme.primary : lightColorScheme.primaryContainer;

      case StatusList.pros: return prefs.whatTheme ? darkColorScheme.tertiary : lightColorScheme.tertiaryContainer;

      case StatusList.cons: return prefs.whatTheme ? darkColorScheme.secondary : lightColorScheme.secondaryContainer;

      case StatusList.all: return prefs.whatTheme ? darkColorScheme.onBackground.withOpacity(0.5) : lightColorScheme.onBackground.withOpacity(0.5);

      default: return prefs.whatTheme ? darkColorScheme.tertiary : lightColorScheme.tertiary;
      
    }  
  }


  TextStyle getTextStyle(){
    
    switch (widget.status) {
      case StatusList.notdecide: {
        return TextStyle(
          fontWeight: FontWeight.w600, 
          fontSize: 12.0,  
          color: prefs.whatTheme ? darkColorScheme.primary : lightColorScheme.primary
        );
      }

      case StatusList.pros: {
        return TextStyle(
          fontWeight: FontWeight.w600, 
          fontSize: 12.0,  
          color: prefs.whatTheme ? darkColorScheme.tertiary : lightColorScheme.tertiary
        );
      }

      case StatusList.cons: {
        return TextStyle(
          fontWeight: FontWeight.w600, 
          fontSize: 12.0,  
          color: prefs.whatTheme ? darkColorScheme.secondary : lightColorScheme.secondary
        );
      }

      case StatusList.all: {
        return TextStyle(
          fontWeight: FontWeight.w600, 
          fontSize: 12.0,  
          color: prefs.whatTheme ? darkColorScheme.onBackground : lightColorScheme.onBackground
        );
      }

      default: return TextStyle(
          fontWeight: FontWeight.w600, 
          fontSize: 14.0,  
          color: prefs.whatTheme ? darkColorScheme.onPrimary : lightColorScheme.primary
        );
    }

  }
  
}