import 'package:desicion_maker_app/application/list_pros&cons/list_creater_updater/list_creater_updater_bloc.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class NameProsListTextFieldWidget extends StatefulWidget {
  NameProsListTextFieldWidget({Key? key}) : super(key: key);

  @override
  State<NameProsListTextFieldWidget> createState() => _NameProsListTextFieldWidgetState();
}

class _NameProsListTextFieldWidgetState extends State<NameProsListTextFieldWidget> {
  
  final textEditCtrl = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return BlocListener<ListCreaterUpdaterBloc, ListCreaterUpdaterState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditCtrl.text = state.lists!.namePros!.getOrCrash();
      },
      child: Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        controller: textEditCtrl,
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          labelText: 'Name Pros',
          helperText: 'It optional',
          helperStyle: Theme.of(context).textTheme.overline,
          counterText: '',
        ),
        maxLength: ListItemProsConsTitle.maxLength,
        onChanged: ((value) => context.read<ListCreaterUpdaterBloc>().add(ListCreaterUpdaterEvent.nameProsChanged(value))),
        validator: (_) =>  context
          .read<ListCreaterUpdaterBloc>()
          .state
          .lists!
          .namePros!
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

