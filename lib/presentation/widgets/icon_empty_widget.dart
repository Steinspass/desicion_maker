import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:flutter/material.dart';


class IconEmptyListWidget extends StatefulWidget {
  
  final Icon icon;
  final String label;
  final double fontSize;
  final Color colorText;
  
  IconEmptyListWidget({
    Key? key,
    required this.icon,
    required this.label,
    required this.fontSize,
    required this.colorText     
  }) : super(key: key);

  @override
  State<IconEmptyListWidget> createState() => _IconEmptyListWidgetState();
}

class _IconEmptyListWidgetState extends State<IconEmptyListWidget> {
  
  final Preferences prefs = Preferences();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.icon,
          TextWidget(text: widget.label, padding: const EdgeInsets.all(8.0), 
          textStyle: TextStyle(
            fontWeight: FontWeight.w500, 
            fontSize: widget.fontSize,  
            color: widget.colorText,
          ), 
          )
        ],
      ),
    );
  }
}