import 'package:desicion_maker_app/application/list_pros&cons/list_creater_updater/list_creater_updater_bloc.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class NameConsListTextFieldWidget extends StatefulWidget {
  NameConsListTextFieldWidget({Key? key}) : super(key: key);

  @override
  State<NameConsListTextFieldWidget> createState() => _NameConsListTextFieldWidgetState();
}

class _NameConsListTextFieldWidgetState extends State<NameConsListTextFieldWidget> {
  
  final textEditCtrl = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return BlocListener<ListCreaterUpdaterBloc, ListCreaterUpdaterState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditCtrl.text = state.lists!.nameCons!.getOrCrash();
      },
      child: Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        controller: textEditCtrl,
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          labelText: 'Name Cons',
          helperText: 'It optional',
          helperStyle: Theme.of(context).textTheme.overline,
          counterText: '',
        ),
        maxLength: ListItemProsConsTitle.maxLength,
        onChanged: ((value) => context.read<ListCreaterUpdaterBloc>().add(ListCreaterUpdaterEvent.nameConsChanged(value))),
        validator: (_) =>  context
          .read<ListCreaterUpdaterBloc>()
          .state
          .lists!
          .nameCons!
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

