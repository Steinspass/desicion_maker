import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:flutter/material.dart';


class EmptyItemProsConsWidget extends StatefulWidget {
  EmptyItemProsConsWidget({Key? key}) : super(key: key);

  @override
  State<EmptyItemProsConsWidget> createState() => _EmptyItemProsConsWidgetState();
}

class _EmptyItemProsConsWidgetState extends State<EmptyItemProsConsWidget> {
  
  final Preferences prefs = Preferences();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.list_alt_rounded, size: 80, color: prefs.whatTheme ? darkColorScheme.onPrimaryContainer : lightColorScheme.onPrimaryContainer,),
          TextWidget(text: 'No list has been selected ', padding: const EdgeInsets.all(8.0), 
          textStyle: TextStyle(
            fontWeight: FontWeight.w500, 
            fontSize: 18.0,  
            color: prefs.whatTheme ? darkColorScheme.onPrimaryContainer : lightColorScheme.onPrimaryContainer,
          ), 
          )
        ],
      ),
    );
  }
}