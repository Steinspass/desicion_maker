import 'package:desicion_maker_app/presentation/widgets/chip_widget.dart';
import 'package:flutter/material.dart';


class FilterRowWidget extends StatefulWidget {

  final Function(int) selectedList;
  FilterRowWidget({Key? key, required this.selectedList}) : super(key: key);

  @override
  State<FilterRowWidget> createState() => _FilterRowWidgetState();
}

class _FilterRowWidgetState extends State<FilterRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 4.0
      ),
      child: Row(
        children: [
          ChipsSelectedWidget(label: 'All', status: 3, onSelected: (p0) {},),
          ChipsSelectedWidget(label: 'Not decided', status: 0, onSelected: (p0) {},),
          ChipsSelectedWidget(label: 'Pros', status: 1, onSelected: (p0) {},),
          ChipsSelectedWidget(label: 'Cons', status: 2, onSelected: (p0) {},),
        ],
      ),
    );
  }
}