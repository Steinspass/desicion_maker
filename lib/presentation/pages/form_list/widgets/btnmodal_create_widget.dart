import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart' as dz;
import 'package:desicion_maker_app/application/list_pros&cons/list_creater_updater/list_creater_updater_bloc.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/injection.dart';
import 'package:desicion_maker_app/presentation/pages/form_list/widgets/cons_list_text_field_widget.dart';
import 'package:desicion_maker_app/presentation/pages/form_list/widgets/desc_list_text_field_widget.dart';
import 'package:desicion_maker_app/presentation/pages/form_list/widgets/pros_list_text_field_widget.dart';
import 'package:desicion_maker_app/presentation/pages/form_list/widgets/title_list_text_field_widget.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomModalCreateWidget extends StatelessWidget {
  final ListProsCons listEdit;

  BottomModalCreateWidget({Key? key, required this.listEdit}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Preferences prefs = Preferences(); 

    return BlocProvider(
      create: (context) => getIt<ListCreaterUpdaterBloc>()
        ..add(ListCreaterUpdaterEvent.initialized(dz.optionOf(listEdit)))
        ..add(ListCreaterUpdaterEvent.createDateChanged(DateTime.now().toString()))
        ..add(ListCreaterUpdaterEvent.userNameChanged(prefs.getCurrentUsername))
        ..add(ListCreaterUpdaterEvent.userIdChanged(prefs.getCurrentUserID)),
      child: BlocConsumer<ListCreaterUpdaterBloc, ListCreaterUpdaterState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption?.fold(
              () {},
              (either) => either.fold((fail) {
                    FlushbarHelper.createError(
                        message: fail.map(
                      unexpected: (_) =>
                          '❗ Unexpected error occured, please contact support.',
                      insufficientPermissions: (_) =>
                          '❌ Insufficient permissions',
                      unableToUpdate: (_) =>
                          '📵 Couldnt update the list. Was it deleted from another device? ',
                    )).show(context);
                  }, (_) => Navigator.pop(context)));
        },
        builder: (context, state) {
          return BuildBtnModalCreater();
        },
      ),
    );
  }
}

class BuildBtnModalCreater extends StatefulWidget {
  BuildBtnModalCreater({Key? key}) : super(key: key);

  @override
  State<BuildBtnModalCreater> createState() => _BuildBtnModalCreaterState();
}

class _BuildBtnModalCreaterState extends State<BuildBtnModalCreater> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListCreaterUpdaterBloc, ListCreaterUpdaterState>(
      buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
      
      builder: (context, state) {

        return Form(
          key: _formKey,
          onChanged: () => state.showErrorMessages,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: TextWidget(
                  padding: const EdgeInsets.all(2),
                  text: 'List of Pros & Cons',
                  textStyle: Theme.of(context).textTheme.headline6,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TitleListTextFieldWidget(),
              SizedBox(
                height: 10,
              ),
              DescListTextFieldWidget(),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 32,
                  ),
                  Expanded(
                    child: NameProsListTextFieldWidget()
                  ),
                  Expanded(
                    child: NameConsListTextFieldWidget()
                  ),
                  SizedBox(
                    width: 32,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 42,
                  ),
                  Expanded(
                      child: BorderButtonWidget(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          text: 'Cancel')),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child:
                          RoundedButtonWidget(onTap: () {
                            
                            context.read<ListCreaterUpdaterBloc>().add(const ListCreaterUpdaterEvent.saved());
        
                            Navigator.pop(context);
        
                          }, text: 'Create')),
                  SizedBox(
                    width: 42,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        );
      },
    );
  }
}
