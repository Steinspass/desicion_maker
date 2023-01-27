import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart' as dz;
import 'package:desicion_maker_app/application/list_pros&cons/item_creater_updater/item_creater_updater_bloc.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/itemProsCons.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/injection.dart';
import 'package:desicion_maker_app/presentation/pages/form_item/widgets/title_item_text_field_widget.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:desicion_maker_app/presentation/widgets/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BtnModalCreateItemWidget extends StatefulWidget {
  final ItemProsCons? item;
  final bool? isPro;
  final String? listId;

  BtnModalCreateItemWidget({
    @required this.isPro,
    @required this.item,
    @required this.listId
    });

  @override
  State<BtnModalCreateItemWidget> createState() =>
      _BtnModalCreateItemWidgetState();
}

class _BtnModalCreateItemWidgetState extends State<BtnModalCreateItemWidget> {
  
  final Preferences prefs = Preferences();
  
  @override
  Widget build(BuildContext context) {
    print('--- ITEM ID FROM BTN CREATE ITEM WIDGET ${widget.listId} ---');
    return MultiBlocProvider(
        providers: [
          widget.item!.createDate!.isEmpty 
          ? BlocProvider<ItemCreaterUpdaterBloc>(
              create: (context) => getIt<ItemCreaterUpdaterBloc>()
              ..add(ItemCreaterUpdaterEvent.initialized(dz.optionOf(widget.item), widget.isPro!, widget.listId! ))
              ..add(ItemCreaterUpdaterEvent.createDateItemChanged(DateTime.now().toString()))
              ..add(ItemCreaterUpdaterEvent.userNameItemChanged(prefs.getCurrentUsername))
              ..add(ItemCreaterUpdaterEvent.userIdItemChanged(prefs.getCurrentUserID))
              ..add(ItemCreaterUpdaterEvent.isProItemChanged(widget.isPro!)),
              )
          : BlocProvider<ItemCreaterUpdaterBloc>(
              create: (context) => getIt<ItemCreaterUpdaterBloc>()
              ..add(ItemCreaterUpdaterEvent.initialized(dz.optionOf(widget.item), widget.isPro!, widget.listId! ))
            )   
              
        ],
        child: BlocConsumer<ItemCreaterUpdaterBloc, ItemCreaterUpdaterState>(
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
                            '📵 Couldnt update the item. Was it deleted from another device? ',
                      )).show(context);
                    }, (_) => Navigator.pop(context)));
          },
          builder: (context, state) {
            return BuildBtnModalCreateItemWidget(
              isPro: widget.isPro,
              isNew: widget.item!.createDate!.isEmpty,
            );
          },
        ));
  }
}

class BuildBtnModalCreateItemWidget extends StatefulWidget {
  final bool? isPro;
  final bool? isNew;

  BuildBtnModalCreateItemWidget({Key? key, 
  required this.isPro,
  @required this.isNew
  })
      : super(key: key);

  @override
  State<BuildBtnModalCreateItemWidget> createState() =>
      _BuildBtnModalCreateItemWidgetState();
}

class _BuildBtnModalCreateItemWidgetState
    extends State<BuildBtnModalCreateItemWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemCreaterUpdaterBloc, ItemCreaterUpdaterState>(
      buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) {
        

        return Form(
          key: _formKey,
          onChanged: () => state.showErrorMessages,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: TextWidget(
                  padding: const EdgeInsets.all(2),
                  text: widget.isNew! ? 'Add new item' : 'Edit the item',
                  textStyle: Theme.of(context).textTheme.headline6,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TitleItemTextFieldWidget(),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  TextWidget(
                    padding: const EdgeInsets.all(2),
                    text: 'Less Importance',
                    textStyle: Theme.of(context).textTheme.bodyText1,
                  ),
                  Spacer(),
                  TextWidget(
                    padding: const EdgeInsets.all(2),
                    text: 'More Importance',
                    textStyle: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              SliderWidget(
                padding: const EdgeInsets.all(2),
                isPro: widget.isPro,
                importanceSelected: (double impt) {
                  context.read<ItemCreaterUpdaterBloc>().add(ItemCreaterUpdaterEvent.importanceItemChanged(impt.toInt()));
                },
              ),
              SizedBox(height: 10),
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
                      child: RoundedButtonWidget(onTap: () {

                          

                        context.read<ItemCreaterUpdaterBloc>().add(const ItemCreaterUpdaterEvent.saved());


                        

                      }, text: 'Add')),
                  SizedBox(
                    width: 42,
                  ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        );


      },
    );
  }

  

}
