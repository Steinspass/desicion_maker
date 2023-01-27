import 'package:desicion_maker_app/application/list_pros&cons/list_creater_updater/list_creater_updater_bloc.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TitleListTextFieldWidget extends StatefulWidget {
  TitleListTextFieldWidget({Key? key}) : super(key: key);

  @override
  State<TitleListTextFieldWidget> createState() => _TitleListTextFieldWidgetState();
}

class _TitleListTextFieldWidgetState extends State<TitleListTextFieldWidget> {
  
  final textEditCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ListCreaterUpdaterBloc, ListCreaterUpdaterState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditCtrl.text = state.lists!.title!.getOrCrash();
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
        onChanged: ((value) => context.read<ListCreaterUpdaterBloc>().add(ListCreaterUpdaterEvent.titleChanged(value))),
        validator: (_) =>  context
          .read<ListCreaterUpdaterBloc>()
          .state
          .lists!
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

