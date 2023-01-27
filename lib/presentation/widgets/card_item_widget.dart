import 'package:desicion_maker_app/presentation/widgets/card_widget.dart';
import 'package:desicion_maker_app/presentation/widgets/chip_widget.dart';
import 'package:desicion_maker_app/presentation/widgets/circular_chart_indicator.dart';
import 'package:desicion_maker_app/presentation/widgets/text_titles_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class CardItemWidget extends StatefulWidget {

  final Function()? onTap;
  final Function()? onLongPress;
  final String? title;
  final String? subtitle;
  final double? balance;
  final int? status;
  

  CardItemWidget({
    @required this.onTap,
    @required this.onLongPress,
    @required this.title,
    @required this.subtitle,
    @required this.balance,
    @required this.status

  });

  @override
  _CardItemWidgetState createState() => _CardItemWidgetState();
}

class _CardItemWidgetState extends State<CardItemWidget> {
  
  @override
  Widget build(BuildContext context) {
    return CardWidget(
      onTap: widget.onTap,
      onLongPress: widget.onLongPress,
      height: 14.h,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 4.0
      ),
      widget: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(flex:1, child: TextWidget(padding: const EdgeInsets.all(0), text: widget.title, textStyle: Theme.of(context).textTheme.subtitle1,)),
                SizedBox(height: 1.h,),
                Expanded(flex: 2 ,child: TextWidget(padding: null, text: widget.subtitle, textStyle: Theme.of(context).textTheme.bodyText1,)),
                Padding(
                  padding: const EdgeInsets.only(left: 28, right: 28, bottom: 0, top: 0),
                  child: Divider(),
                ),
                Expanded(flex: 1, child: ChipsWidget(status: widget.status!, onTap: (){})),
                SizedBox(height: 1.h,),    
              ],
            ), flex: 3,
          ),
          Expanded(child: Align(
            alignment: Alignment.center,
            child: CircularChartIndicator(rating: widget.balance, desicion: !widget.balance!.isNegative,),
          ), flex: 1, )
        ],
      ),

    );
  }
}