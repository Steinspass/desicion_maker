import 'package:desicion_maker_app/application/list_pros&cons/item_creater_updater/item_creater_updater_bloc.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TitleItemTextFieldWidget extends StatefulWidget {
  TitleItemTextFieldWidget({Key? key}) : super(key: key);

  @override
  State<TitleItemTextFieldWidget> createState() => _TitleItemTextFieldWidgetState();
}

class _TitleItemTextFieldWidgetState extends State<TitleItemTextFieldWidget> {
  
  final textEditCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ItemCreaterUpdaterBloc, ItemCreaterUpdaterState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditCtrl.text = state.item!.title!.getOrCrash();
      },
      child: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 40,
      ),
      child: TextFormField(
        controller: textEditCtrl,
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          hintText:'Title',
          labelText: 'Title',
          helperStyle: Theme.of(context).textTheme.overline,
          counterText: '',
        ),
        maxLength: ListItemName.maxLength,
        onChanged: ((value) => context.read<ItemCreaterUpdaterBloc>().add(ItemCreaterUpdaterEvent.titleItemChanged(value))),
        validator: (_) =>  context
          .read<ItemCreaterUpdaterBloc>()
          .state
          .item!
          .title!
          .value
          .fold(
            (f) => f.maybeMap(
              empty: (f) => 'Cannot be empty',
              exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
              orElse: () => ''
            ), 
            (r) => null
          ),

      ),
    ),
    );
  }
}