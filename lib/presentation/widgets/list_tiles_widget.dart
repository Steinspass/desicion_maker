import 'package:desicion_maker_app/presentation/widgets/text_titles_widget.dart';
import 'package:flutter/material.dart';



class ListTilesWidget extends StatefulWidget {
  final String? title;
  // final String? subTitle;
  final Function()? onTap;
  final IconData? icon;
  final Color? color;
  final Widget? trailing;
  final bool? isSelectableText;
  
  
  ListTilesWidget({
    @required this.title,
    @required this.icon,
    @required this.onTap,
    this.color,
    this.trailing,
    this.isSelectableText
    // this.subTitle,
    
  });

  @override
  _ListTilesWidgetState createState() => _ListTilesWidgetState();
}

class _ListTilesWidgetState extends State<ListTilesWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: widget.onTap!,
      title: TextWidget(padding: const EdgeInsets.all(0), text: widget.title!, textStyle: Theme.of(context).textTheme.subtitle2, isSelectable: widget.isSelectableText),
      leading: Icon(widget.icon!, size: 26.0, color: widget.color ?? Color(0xFFE1E3E4),),
      trailing: widget.trailing ?? SizedBox.shrink(),
    );
  }
}