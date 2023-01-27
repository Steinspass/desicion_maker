import 'package:desicion_maker_app/presentation/widgets/text_titles_widget.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';


///? All Principal Buttons Widget for most of cases


///* Rounded Button Widget
class RoundedButtonWidget extends StatefulWidget {
  final String? text;
  final Function()? onTap;
  
  
  RoundedButtonWidget({
    @required this.onTap,
    @required this.text
  });

  @override
  _RoundedButtonWidgetState createState() => _RoundedButtonWidgetState();
}

class _RoundedButtonWidgetState extends State<RoundedButtonWidget> {

  final ButtonStyle styleElevatedButton = ElevatedButton.styleFrom(
    elevation: 1.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    padding: EdgeInsets.symmetric(
      horizontal: 24.0,
      vertical: 8.0
    ) 
  );
  
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onTap,
      style: styleElevatedButton,
      child: TextWidget(padding: const EdgeInsets.all(5), text: widget.text ?? 'Click me', textStyle: Theme.of(context).textTheme.button,) 
    );
  }
}


///* 


class RoundedButtonIconWidget extends StatefulWidget {

  final String? text;
  final Function()? onTap;
  final IconData? icon;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final ButtonStyle? buttonStyle;
  
  RoundedButtonIconWidget({
    @required this.onTap,
    @required this.text,
    @required this.icon,
    this.textStyle,
    this.padding, 
    this.buttonStyle
  });

  @override
  State<RoundedButtonIconWidget> createState() => _RoundedButtonIconWidgetState();
}

class _RoundedButtonIconWidgetState extends State<RoundedButtonIconWidget> {
  final ButtonStyle styleElevatedButton = ElevatedButton.styleFrom(
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    padding: EdgeInsets.symmetric(
      horizontal: 24.0,
      vertical: 8.0
    ),
  );
  
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onTap,
      style:widget.buttonStyle ?? styleElevatedButton,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(widget.icon,),
          SizedBox(width: 4,),
          TextWidget(padding: widget.padding ?? const EdgeInsets.all(5), text: widget.text ?? 'Click me', textStyle: widget.textStyle ?? Theme.of(context).textTheme.button,),
        ],
      ) 
    );
  }
}



class RoundedButtonLogoWidget extends StatefulWidget {

  final String? text;
  final Function()? onTap;
  final String? logo;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final ButtonStyle? buttonStyle;
  
  RoundedButtonLogoWidget({
    @required this.onTap,
    @required this.text,
    @required this.logo,
    this.textStyle,
    this.padding, 
    this.buttonStyle
  });

  @override
  State<RoundedButtonLogoWidget> createState() => _RoundedButtonLogoWidgetState();
}

class _RoundedButtonLogoWidgetState extends State<RoundedButtonLogoWidget> {
  final ButtonStyle styleElevatedButton = ElevatedButton.styleFrom(
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    padding: EdgeInsets.symmetric(
      horizontal: 24.0,
      vertical: 8.0
    ),
  );
  
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onTap,
      style:widget.buttonStyle ?? styleElevatedButton,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Logo(widget.logo, size: 19),
          SizedBox(width: 4,),
          TextWidget(padding: widget.padding ?? const EdgeInsets.all(5), text: widget.text ?? 'Click me', textStyle: widget.textStyle ?? Theme.of(context).textTheme.button,),
        ],
      ) 
    );
  }
}



///* Border Button Widget
class BorderButtonWidget extends StatefulWidget {
  final String? text;
  final Function()? onTap;
  final EdgeInsets? padding;
  
  
  BorderButtonWidget({
    @required this.onTap,
    @required this.text,
    this.padding
  });

  @override
  _BorderButtonWidgetState createState() => _BorderButtonWidgetState();
}


class _BorderButtonWidgetState extends State<BorderButtonWidget> {

  
  final ButtonStyle styleOutlinedButton = OutlinedButton.styleFrom(
    elevation: 1.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: 20.0,
      vertical: 6.0
    ) 
  );  
  
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: styleOutlinedButton,
      onPressed: widget.onTap,
      child: TextWidget(padding: widget.padding ?? const EdgeInsets.all(5), text: widget.text ?? 'Click me', textStyle: Theme.of(context).textTheme.button,) 
    );
  }
}




class IconButtonWidget extends StatefulWidget {

  final IconData? icon;
  final Function()? onTap;

  IconButtonWidget({
    @required this.icon,
    @required this.onTap
  });

  @override
  _IconButtonWidgetState createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        widget.icon,
        size: 26.0,
        // color: Colors.white,
      ), 
      onPressed: widget.onTap
    );
  }
}