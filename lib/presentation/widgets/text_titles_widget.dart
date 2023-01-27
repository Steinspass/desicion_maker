import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';



///? Text Widget 

class TextWidget extends StatefulWidget {

  final String? text;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final TextOverflow? overflow;
  final bool? isSelectable;

  TextWidget({
    @required this.text,
    @required this.padding,
    @required this.textStyle,
    this.overflow,
    this.isSelectable
  });

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
      bool isSelectable = widget.isSelectable ?? false;

      if(isSelectable){
        return Padding(
          padding: widget.padding ?? EdgeInsets.only(left: 10),
          child: SelectableText(
          widget.text ?? 'Text label',
          style: widget.textStyle,
        ),
    );
      }
      return Padding(
      padding: widget.padding ?? EdgeInsets.only(left: 10),
      child: Text(
        widget.text ?? 'Text label',
        overflow: widget.overflow,
        style: widget.textStyle,
      ),
    );

  }
}


class TextDescReadMoreWidget extends StatefulWidget {

  final String? descText;

  TextDescReadMoreWidget({
    @required this.descText
  });

  @override
  _TextDescReadMoreWidgetState createState() => _TextDescReadMoreWidgetState();
}

class _TextDescReadMoreWidgetState extends State<TextDescReadMoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 5),
      child: ReadMoreText(
        widget.descText!,
        // trimLines: 2,
        colorClickableText: Color(4294956554),
        trimMode: TrimMode.Length,
        trimLength: 120,
        textAlign: TextAlign.justify,
        trimCollapsedText: 'Show more',
        trimExpandedText: 'Show less',
        moreStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Color(4294956554) ),
        lessStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Color(4294956554) ),

        style: TextStyle(
            color: Colors.grey[300],
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
      ),
    );
  }
}