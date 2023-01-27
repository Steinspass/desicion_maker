import 'package:desicion_maker_app/application/list_pros&cons/percent/percent_list_cubit.dart';
import 'package:desicion_maker_app/application/list_pros&cons/watcher/watcher_cubit.dart';
import 'package:desicion_maker_app/domain/core/utils/encode_emails_utils.dart';
import 'package:desicion_maker_app/domain/core/utils/get_percent_util.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/itemProsCons.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/injection.dart';
import 'package:desicion_maker_app/presentation/pages/form_item/btnmodal_create_item_widget.dart';
import 'package:desicion_maker_app/presentation/pages/item_overview/widgets/dialog_remove_item_widget.dart';
import 'package:desicion_maker_app/presentation/pages/item_overview/widgets/item_pros_cons_widget.dart';
import 'package:desicion_maker_app/presentation/pages/list_overview/widgets/critical_error_widget.dart';
import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher_string.dart';


class ListItemProsWidget extends StatefulWidget {
  
  final String? id;
  final ScrollController? scrollContPros;

  ListItemProsWidget({
    Key? key,
    @required this.id,
    @required this.scrollContPros
  }) : super(key: key);

  @override
  State<ListItemProsWidget> createState() => _ListItemProsWidgetState();
}

class _ListItemProsWidgetState extends State<ListItemProsWidget> {
  
  
  @override
  Widget build(BuildContext context) {
    
    return MultiBlocProvider(
      providers: [

        

        BlocProvider<WatcherCubit>(
          create: (context) => getIt<WatcherCubit>()
          ..watchItemProsStarted(widget.id!)
        ),


      ], 
      child: BuildListItemProsWidget(
        id: widget.id,
        scrollContPros: widget.scrollContPros,
      )
    );
  }
}



class BuildListItemProsWidget extends StatefulWidget {

  final String? id;
  final ScrollController? scrollContPros;

  BuildListItemProsWidget({
    Key? key,
    @required this.scrollContPros,
    @required this.id
  }) : super(key: key);

  @override
  State<BuildListItemProsWidget> createState() => _BuildListItemProsWidgetState();
}

class _BuildListItemProsWidgetState extends State<BuildListItemProsWidget> {
  
  final Preferences prefs = Preferences();
  // late String listId;
  // KtList<ItemProsCons> items = KtList<ItemProsCons>.empty();
  
  // @override
  // void initState() {
  //   listId = widget.id!;
  //   super.initState();
  // }

  // @override
  // void didChangeDependencies() {
  //   if(listId != widget.id){
  //     context.read<WatcherCubit>().watchItemProsStarted(widget.id!);
  //     items.asList().clear();
  //   }
  //   // setState(() {
      
  //   // });
  //   print('--- SELECTED LIST ID IN LISTITEMPROS ${widget.id} ---');
  //   super.didChangeDependencies();
  // }
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WatcherCubit, WatcherState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        
        return state.map(
          initial: (value) => SizedBox.shrink(),

          loadInProgress: (_) => Center(child: CircularProgressIndicator(color: prefs.whatTheme ? darkColorScheme.onTertiaryContainer : lightColorScheme.onTertiaryContainer ,),), 

          loadSuccess: (_) => SizedBox.shrink(),

          loadSuccessItem: (value) {
            
            if(value.items.isEmpty()){
              return IconEmptyListWidget(
                icon: Icon(Icons.add_circle_outline_rounded, size: 40, color: prefs.whatTheme ? darkColorScheme.onTertiaryContainer : lightColorScheme.onTertiaryContainer,),
                colorText: prefs.whatTheme ? darkColorScheme.onTertiaryContainer : lightColorScheme.onTertiaryContainer,
                fontSize: 16.0,
                label: 'Add Pro element',
              );
            }

            
            context.watch<PercentListCubit>().changedPercentPro(value.items.size, sumImportance(value.items));

            return ListView.builder(
              // shrinkWrap: true,

              controller: widget.scrollContPros,
              itemCount: value.items.size,
              itemBuilder:(context, index) {

                // items = value.items;
                
                final ItemProsCons item = value.items[index];

                return ItemProsConsWidget(
                  name: item.title!.getOrCrash(),
                  isPros: item.isPro,
                  importance: item.importance,
                  onTap: (){

                    showBottomModalCustomWidget(context, widget: BtnModalCreateItemWidget(isPro: true, item: item, listId: widget.id,), isExpanded: false );

                  },
                  onLongPress: (){
                    showDialog(context: context, builder: ((context) => DialogRemoveItemWidget(item: item, isPro: item.isPro!, id: widget.id!,)) );
                  },
                );
              }, 
            );


          },

          loadFailure: (state){

            return CriticalErrorWidget(
              failure: state.noteFailure,
              onTap: (){
              sendErrorInfo(state.noteFailure.maybeMap(
                insufficientPermissions: (_) => 'Insufficient permissions',
                orElse: () => 'Unexpected error. \n Please, contact support.',
                ),
              );
              },
            );

          },

        );

      }, 
    );
  }


  Future<void> sendErrorInfo(String error) async {

    PackageInfo packageInfo = await PackageInfo.fromPlatform();            

          String _version = packageInfo.version;
          String _buildNumber = packageInfo.buildNumber;

            final Uri _emailLaunchUri = Uri(
              scheme: 'mailto',
              path: 'desicionmakerapp.feed.bunkalogic@gmail.com',
              query: encodeQueryParameters(<String, String>{
                'subject': 'FEEDBACK from ERROR ITEM ${prefs.getCurrentUsername} ',
                'body': '(VersionNumber: $_version) \n (BuildNumber: $_buildNumber) ERROR: $error '
              }),
            );

    await launchUrlString(_emailLaunchUri.toString());        

  }

}