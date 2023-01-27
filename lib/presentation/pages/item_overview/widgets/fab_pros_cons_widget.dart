import 'package:dartz/dartz.dart' as dz;
import 'package:desicion_maker_app/application/list_pros&cons/item_creater_updater/item_creater_updater_bloc.dart';
import 'package:desicion_maker_app/application/list_pros&cons/list_creater_updater/list_creater_updater_bloc.dart';
import 'package:desicion_maker_app/application/list_pros&cons/percent/percent_list_cubit.dart';
import 'package:desicion_maker_app/domain/core/utils/get_percent_util.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/injection.dart';
import 'package:desicion_maker_app/presentation/pages/item_overview/widgets/btnmodal_finish_pro_cons_widget.dart';
import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FabProsConsWidget extends StatefulWidget {
  final ListProsCons listEdit;

  FabProsConsWidget({required this.listEdit});

  @override
  State<FabProsConsWidget> createState() => _FabProsConsWidgetState();
}

class _FabProsConsWidgetState extends State<FabProsConsWidget> {
  @override
  Widget build(Object context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ListCreaterUpdaterBloc>(
            create: (context) => getIt<ListCreaterUpdaterBloc>()
              ..add(ListCreaterUpdaterEvent.initialized(
                  dz.optionOf(widget.listEdit)))),
      ],
      child: BuildFabProsConsWidget(listEdit: widget.listEdit),
    );
  }
}

class BuildFabProsConsWidget extends StatefulWidget {
  final ListProsCons listEdit;

  BuildFabProsConsWidget({
    Key? key,
    required this.listEdit
  }) : super(key: key);

  @override
  State<BuildFabProsConsWidget> createState() => _BuildFabProsConsWidgetState();
}

class _BuildFabProsConsWidgetState extends State<BuildFabProsConsWidget> {
  
  final Preferences prefs = Preferences();

  bool isPro = false;
  int percentPro = 0;
  int percentCons = 0;

  // @override
  // void initState() {
  //   print('--- Saved Percent ---');
  //   saved();
  //   super.initState();
  // }
   

  @override
  Widget build(BuildContext context) {
    
    
    TextStyle textStylePros = TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 14.0,
        color: prefs.whatTheme
            ? darkColorScheme.onTertiary
            : lightColorScheme.onTertiary);

    TextStyle textStyleCons = TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 14.0,
        color: prefs.whatTheme
            ? darkColorScheme.onSecondary
            : lightColorScheme.onSecondary);

       

    
    // return BlocConsumer<PercentListCubit, PercentListState>(
    //   listener: (context, state) {

        

    //     print("--- PRESENTATION FAB PERCENT PROS ${state.percentPro} ---");

    //     print("--- PRESENTATION FAB PERCENT CONS ${state.percentCons} ---");

    //     isPro = isProUtils(percentPro: state.percentPro, percentCons: state.percentCons);
    //     percentPro = state.percentPro;
    //     percentCons = state.percentCons;
        
    //   },
    //   builder: (context, state) {

        
    //     return FloatingActionButton(
    //       onPressed: (){
    //         showBottomModalCustomWidget(context, widget: BtnModalFinishProsConsWidget(), isExpanded: false );
    //       },
    //       elevation: 1.0,
    //       backgroundColor: getBackground(isPro),
    //       child: TextWidget(
    //         text: percentText(isPro, state.percentPro, state.percentCons),
    //         padding: const EdgeInsets.all(0),
    //         textStyle:isPro ? textStylePros : textStyleCons,
    //       ),
    //     );
    //   },

    // );

    // return BlocListener<PercentListCubit, PercentListState>(
    //   listener: (context, state) {

        

    //     print("--- PRESENTATION FAB PERCENT PROS ${state.percentPro} ---");

    //     print("--- PRESENTATION FAB PERCENT CONS ${state.percentCons} ---");

    //     isPro = isProUtils(percentPro: state.percentPro, percentCons: state.percentCons);
    //     percentPro = state.percentPro;
    //     percentCons = state.percentCons;
        
    //   },
    //   child: FloatingActionButton(
    //       onPressed: (){
    //         showBottomModalCustomWidget(context, widget: BtnModalFinishProsConsWidget(), isExpanded: false );
    //       },
    //       elevation: 1.0,
    //       backgroundColor: getBackground(isPro),
    //       child: TextWidget(
    //         text: percentText(isPro, percentPro, percentCons),
    //         padding: const EdgeInsets.all(0),
    //         textStyle:isPro ? textStylePros : textStyleCons,
    //       ),
    //     ),
    // );        


    return BlocBuilder<PercentListCubit, PercentListState>(

      builder: (context, state) {

        print("--- PRESENTATION FAB PERCENT PROS ${state.percentPro} ---");

        print("--- PRESENTATION FAB PERCENT CONS ${state.percentPro} ---");

        bool isPro = isProUtils(percentPro: state.percentPro, percentCons: state.percentCons);

        updateListObject(isPro ? state.percentPro : state.percentCons, isPro);
        
        return FloatingActionButton(
          onPressed: (){
            showBottomModalCustomWidget(
              context, 
              widget: BlocProvider<ListCreaterUpdaterBloc>(
            create: (context) => getIt<ListCreaterUpdaterBloc>()
              ..add(ListCreaterUpdaterEvent.initialized(
                  dz.optionOf(widget.listEdit))),
               child: BtnModalFinishProsConsWidget(),   
              ),
              isExpanded: false 
            );
          },
          elevation: 1.0,
          backgroundColor: getBackground(isPro),
          child: TextWidget(
            text: percentText(isPro, state.percentPro, state.percentCons),
            padding: const EdgeInsets.all(0),
            textStyle:isPro ? textStylePros : textStyleCons,
          ),
        );
      },


    );
  }


  String percentText(bool isPro, int percentPro, int percentCons){

    return isPro ? '$percentPro%' : '$percentCons%';

  }

  Color? getBackground(bool isPro) {
    if (isPro) {
      return prefs.whatTheme
          ? darkColorScheme.tertiary
          : lightColorScheme.tertiary;
    } else {
      return prefs.whatTheme
          ? darkColorScheme.secondary
          : lightColorScheme.secondary;
    }
  }

  void updateListObject(int percent, bool isPro){

    final double consBalance = double.parse('-$percent');

    print('---- PRESENTATION FAB BALANCE NEGATIVE $consBalance -----');

    final double balance = isPro ? percent.toDouble() : consBalance;

    context.read<ListCreaterUpdaterBloc>()
    ..add(ListCreaterUpdaterEvent.balanceChanged(balance));

    saved();
  }

  void saved(){
    //Future.delayed(Duration(seconds: 5),(){
      print('--- SAVED PERCENT ---');
      context.read<ListCreaterUpdaterBloc>()
      ..add(const ListCreaterUpdaterEvent.saved());

    //});
  }

 
}
