import 'package:another_flushbar/flushbar_helper.dart';
import 'package:desicion_maker_app/application/list_pros&cons/remover/remover_cubit.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons.dart';
import 'package:desicion_maker_app/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/a_widgets.dart';

class DialogRemoveListWidget extends StatefulWidget {
  final ListProsCons list;

  DialogRemoveListWidget({Key? key, required this.list}) : super(key: key);

  @override
  State<DialogRemoveListWidget> createState() => _DialogRemoveListWidgetState();
}

class _DialogRemoveListWidgetState extends State<DialogRemoveListWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoverCubit>(
      create: (context) => getIt<RemoverCubit>(),
      child: BuildDialogRemoveListWidget(list: widget.list),
    );
  }
}

class BuildDialogRemoveListWidget extends StatefulWidget {
  final ListProsCons list;

  BuildDialogRemoveListWidget({Key? key, required this.list}) : super(key: key);

  @override
  State<BuildDialogRemoveListWidget> createState() =>
      _BuildDialogRemoveListWidgetState();
}

class _BuildDialogRemoveListWidgetState
    extends State<BuildDialogRemoveListWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<RemoverCubit, RemoverState>(
      listener: (context, state) {
        state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: state.listFailure.map(
                      unexpected: (_) => '❗ Unexpected error occured while deleting, please contact us by email.',
                      insufficientPermissions: (_) => '❌Insufficient permissions',
                      unableToUpdate: (_) => '🚫 Impossible error',
                    ),
                  ).show(context);
                },
                orElse: () {},
              );
      },
      child: Container(
        child: AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: TextWidget(
              text: 'Remove this Pros & Cons',
              padding: const EdgeInsets.all(8.0),
              textStyle: Theme.of(context).textTheme.headline6),
          content: TextWidget(
              text: 'Are you sure you want to delete?',
              padding: const EdgeInsets.all(6.0),
              textStyle: Theme.of(context).textTheme.subtitle2),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: TextWidget(
                  text: 'Cancel',
                  padding: const EdgeInsets.all(8.0),
                  textStyle: Theme.of(context).textTheme.button),
            ),
            SizedBox(
              width: 4,
            ),
            RoundedButtonWidget(
              text: 'Accept',
              onTap: () {
                
                context.read<RemoverCubit>().removerList(widget.list)
                .whenComplete(() => Navigator.pop(context));

                
              },
            )
          ],
        ),
      ),
    );
  }
}
