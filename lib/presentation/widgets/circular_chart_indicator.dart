import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';



class CircularChartIndicator extends StatefulWidget {

  final double? rating;
  final bool? desicion;

  CircularChartIndicator({
    @required this.rating,
    @required this.desicion
  });

  @override
  _CircularChartIndicatorState createState() => _CircularChartIndicatorState();
}

class _CircularChartIndicatorState extends State<CircularChartIndicator> {

  final Preferences prefs = Preferences();

  @override
  Widget build(BuildContext context) {
    double percent = widget.rating!.abs() / 100;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: CircularPercentIndicator(
        percent: percent,
        radius: 22.0,
        circularStrokeCap: CircularStrokeCap.round,
        animation: true,
        animationDuration: 600,
        lineWidth: 4.4,
        backgroundColor: Colors.blueGrey[600]!,
        progressColor: progressColorChanged(),
        center: Text(
          '${widget.rating!.abs().toStringAsFixed(0)} %',
          style: new TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12,
          color: textColorChanged(),
          
        ),
        ),
      ),
    );
  }


  Color textColorChanged(){

    if(prefs.whatTheme){

      return widget.desicion! ? darkColorScheme.onTertiaryContainer : darkColorScheme.onSecondaryContainer;

    }else{

       return widget.desicion! ? lightColorScheme.onTertiaryContainer : lightColorScheme.onSecondaryContainer;

    }

  }

  Color progressColorChanged(){

    if(prefs.whatTheme){

      return widget.desicion! ? darkColorScheme.tertiaryContainer : darkColorScheme.secondaryContainer;

    }else{

      return widget.desicion! ? lightColorScheme.tertiaryContainer : lightColorScheme.secondaryContainer;

    }

  }
  
}