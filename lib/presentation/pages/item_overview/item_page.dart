import 'package:desicion_maker_app/application/list_pros&cons/item_creater_updater/item_creater_updater_bloc.dart';
import 'package:desicion_maker_app/application/list_pros&cons/percent/percent_list_cubit.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons.dart';
import 'package:desicion_maker_app/injection.dart';
import 'package:desicion_maker_app/presentation/pages/form_list/widgets/btnmodal_create_widget.dart';
import 'package:desicion_maker_app/presentation/pages/item_overview/widgets/btnmodal_finish_pro_cons_widget.dart';
import 'package:desicion_maker_app/presentation/pages/item_overview/widgets/dual_lists_widget.dart';
import 'package:desicion_maker_app/presentation/pages/item_overview/widgets/fab_pros_cons_widget.dart';
import 'package:desicion_maker_app/presentation/pages/item_overview/widgets/title_button_list_widget.dart';
import 'package:desicion_maker_app/presentation/pages/list_overview/widgets/empty_item_widget.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:desicion_maker_app/presentation/widgets/interstacial_ads_widget.dart';
import 'package:desicion_maker_app/presentation/widgets/native_ads_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ListProsAndConsPage extends StatefulWidget {
  
  final ListProsCons list;

  ListProsAndConsPage({
    Key? key,
    required this.list
  }) : super(key: key);

  @override
  State<ListProsAndConsPage> createState() => _ListProsAndConsPageState();
}

class _ListProsAndConsPageState extends State<ListProsAndConsPage> {
  
   
  
  @override
  Widget build(BuildContext context) {
   return MultiBlocProvider(
    key: widget.key,
    providers: [
      BlocProvider<ItemCreaterUpdaterBloc>(
          create: (context) => getIt<ItemCreaterUpdaterBloc>()),
      BlocProvider<PercentListCubit>(
          create: (context) => getIt<PercentListCubit>(),
        ),  
    ], 
    child: BuildListProsAndConsPage(list: widget.list, key: widget.key,)
  );


  }
}




class BuildListProsAndConsPage extends StatefulWidget {
  
  final ListProsCons list;

  BuildListProsAndConsPage({
    Key? key,
    required this.list
  }) : super(key: key);

  @override
  State<BuildListProsAndConsPage> createState() => _BuildListProsAndConsPageState();
}

class _BuildListProsAndConsPageState extends State<BuildListProsAndConsPage> {
  

  final ScrollController? scrollContPros = ScrollController();
  final ScrollController? scrollContCons = ScrollController(); 
  
  @override
  Widget build(BuildContext context) {

    // getIntersticialAds('ca-app-pub-3940256099942544/1033173712');

    if(widget.list.createDate!.isEmpty){

      return Center(
        child: EmptyItemProsConsWidget(),
      );

    }

    return Scaffold(
      key: widget.key,
      appBar: appBarWidget(context, widget.list.title!.getOrCrash(), 
      IconButtonWidget(icon: Icons.edit, onTap: (){
        showBottomModalCustomWidget(context, widget: BottomModalCreateWidget(listEdit: widget.list,), isExpanded: true );
      })),
      body: Column(
        children: [
          NativeAdsWidget(unitId: 'ca-app-pub-6667428027256827/3421153189' ),
          SizedBox(height: 1.h,),
          Expanded(child: TitleButtonListWidget(list: widget.list, 
          proLabel: widget.list.namePros?.getOrCrash() ?? 'Pro', 
          consLabel: widget.list.nameCons?.getOrCrash() ?? 'Cons', 
          ), flex: 1,),
          SizedBox(height: 1.h,),
          Expanded(child: DualListWidget(
            id: widget.list.id!.getOrCrash(),
          ), flex: 9,),
          SizedBox(height: 1.h,
          ),
        ],
      ),
      floatingActionButton: FabProsConsWidget(listEdit: widget.list),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }
}