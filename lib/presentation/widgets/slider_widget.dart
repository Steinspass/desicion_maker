import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:flutter/material.dart';


class SliderWidget extends StatefulWidget {
  
  final bool? isPro;
  final EdgeInsetsGeometry? padding;
  final Function(double)? importanceSelected;


  SliderWidget({
    @required this.padding,
    @required this.isPro,
    @required this.importanceSelected
  });

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  
  double _importance = 1;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding!,
      child: Slider(
        value: _importance, 
        onChanged: ((double value) {
          
          setState(() {
            _importance = value;
            widget.importanceSelected!(value);
          });
          

        }),
        label: _importance.toString(),
        activeColor: widget.isPro! ? darkColorScheme.tertiary : darkColorScheme.secondary,
        inactiveColor: darkColorScheme.surfaceVariant,
        min: 1,
        max: 5,
        divisions: 4,
        ),
      
    );
  }
}