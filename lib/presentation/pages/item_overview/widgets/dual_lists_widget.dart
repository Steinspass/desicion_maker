import 'package:desicion_maker_app/presentation/pages/item_overview/widgets/list_item_cons_widget.dart';
import 'package:desicion_maker_app/presentation/pages/item_overview/widgets/list_item_pros_widget.dart';
import 'package:flutter/material.dart';


class DualListWidget extends StatefulWidget {

  final String? id;

  DualListWidget({
    @required this.id
  });

  @override
  State<DualListWidget> createState() => _DualListWidgetState();
}

class _DualListWidgetState extends State<DualListWidget> {


  final ScrollController? scrollContPros = ScrollController();
  final ScrollController? scrollContCons = ScrollController(); 

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 15,),
        Expanded(
          child: ListItemProsWidget(id: widget.id, scrollContPros: scrollContPros,),
        ),
        SizedBox(width: 15,),
        Expanded(
          child: ListItemConsWidget(id: widget.id, scrollContCons: scrollContCons,),
        ),
        SizedBox(width: 15,),
      ],
    );
  }
}