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
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher_string.dart';


class ListItemConsWidget extends StatefulWidget {
  
  final String? id;
  final ScrollController? scrollContCons;

  ListItemConsWidget({
    Key? key,
    @required this.id,
    @required this.scrollContCons
  }) : super(key: key);

  @override
  State<ListItemConsWidget> createState() => _ListItemConsWidgetState();
}

class _ListItemConsWidgetState extends State<ListItemConsWidget> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

        BlocProvider<WatcherCubit>(
          create: (context) => getIt<WatcherCubit>()
          ..watchItemConsStarted(widget.id!)
          ),

        // BlocProvider<PercentListCubit>(
        //   create: (context) => getIt<PercentListCubit>()
        // ),  

      ], 
      child: BuildListItemConsWidget(
        id: widget.id,
        scrollContCons: widget.scrollContCons,
      )
    );
  }
}



class BuildListItemConsWidget extends StatefulWidget {

  final String? id;
  final ScrollController? scrollContCons;

  BuildListItemConsWidget({
    Key? key,
    @required this.scrollContCons,
    @required this.id
  }) : super(key: key);

  @override
  State<BuildListItemConsWidget> createState() => _BuildListItemConsWidgetState();
}

class _BuildListItemConsWidgetState extends State<BuildListItemConsWidget> {
  
  final Preferences prefs = Preferences();
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WatcherCubit, WatcherState>(
      builder: (context, state) {
        
        return state.map(
          initial: (value) => SizedBox.shrink(),

          loadInProgress: (_) => Center(child: CircularProgressIndicator(color: prefs.whatTheme ? darkColorScheme.onSecondaryContainer : lightColorScheme.onSecondaryContainer,),), 

          loadSuccess: (_) => SizedBox.shrink(),

          loadSuccessItem: (value) {
            
            if(value.items.isEmpty()){
              return IconEmptyListWidget(
                icon: Icon(Icons.remove_circle_outline_rounded, size: 40, color: prefs.whatTheme ? darkColorScheme.onSecondaryContainer : lightColorScheme.onSecondaryContainer,),
                colorText: prefs.whatTheme ? darkColorScheme.onSecondaryContainer : lightColorScheme.onSecondaryContainer,
                fontSize: 16.0,
                label: 'Add Cons element',
              );
            }

            

            return ListView.builder(
              // shrinkWrap: true,
              controller: widget.scrollContCons,
              itemCount: value.items.size,
              itemBuilder:(context, index) {

                context.watch<PercentListCubit>().changedPercentCons(value.items.size, sumImportance(value.items));
                
                final ItemProsCons item = value.items[index];

                return ItemProsConsWidget(
                  name: item.title!.getOrCrash(),
                  isPros: item.isPro,
                  importance: item.importance,
                  onTap: (){

                    showBottomModalCustomWidget(context, widget: BtnModalCreateItemWidget(isPro: false, item: item, listId: widget.id!,), isExpanded: false );

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