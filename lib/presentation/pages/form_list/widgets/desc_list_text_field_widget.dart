import 'package:desicion_maker_app/application/list_pros&cons/list_creater_updater/list_creater_updater_bloc.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DescListTextFieldWidget extends StatefulWidget {
  DescListTextFieldWidget({Key? key}) : super(key: key);

  @override
  State<DescListTextFieldWidget> createState() => _DescListTextFieldWidgetState();
}

class _DescListTextFieldWidgetState extends State<DescListTextFieldWidget> {
  
  final textEditCtrl = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return BlocListener<ListCreaterUpdaterBloc, ListCreaterUpdaterState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditCtrl.text = state.lists!.desc!.getOrCrash();
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
          hintText:'Description',
          labelText: 'Description',
          helperText: 'It optional',
          helperStyle: Theme.of(context).textTheme.overline,
          counterText: '',
        ),
        maxLength: ListItemDesc.maxLength,
        onChanged: ((value) => context.read<ListCreaterUpdaterBloc>().add(ListCreaterUpdaterEvent.descChanged(value))),
        validator: (_) =>  context
          .read<ListCreaterUpdaterBloc>()
          .state
          .lists!
          .desc!
          .value
          .fold(
            (f) => f.maybeMap(
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


