import 'package:desicion_maker_app/application/auth/auth_bloc.dart';
import 'package:desicion_maker_app/application/list_pros&cons/list_creater_updater/list_creater_updater_bloc.dart';
import 'package:desicion_maker_app/application/list_pros&cons/selected_list/selected_list_cubit.dart';
import 'package:desicion_maker_app/domain/core/utils/encode_emails_utils.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons.dart';
import 'package:desicion_maker_app/application/list_pros&cons/watcher/watcher_cubit.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/injection.dart';
import 'package:desicion_maker_app/presentation/pages/list_overview/widgets/critical_error_widget.dart';
import 'package:desicion_maker_app/presentation/pages/list_overview/widgets/dialog_remove_list_widget.dart';
import 'package:desicion_maker_app/presentation/pages/list_overview/widgets/empty_list_pros_cons_widget.dart';
import 'package:desicion_maker_app/presentation/pages/list_overview/widgets/error_card_list_widget.dart';
import 'package:desicion_maker_app/presentation/widgets/card_item_widget.dart';
import 'package:desicion_maker_app/presentation/widgets/native_ads_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher_string.dart';


class OverviewListBody extends StatefulWidget {
  OverviewListBody({Key? key}) : super(key: key);

  @override
  State<OverviewListBody> createState() => _OverviewListBodyState();
}

class _OverviewListBodyState extends State<OverviewListBody> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WatcherCubit>(
          create: (context) => getIt<WatcherCubit>()
          ..watchAllStarted()
          ),  

        BlocProvider<ListCreaterUpdaterBloc>(
          create: (context) => getIt<ListCreaterUpdaterBloc>()),

      ],
      child: MultiBlocListener(
        listeners: [

          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap( 
              unauthenticated: (_) => Navigator.pushReplacementNamed(context, '/Login'),
              orElse: (){}
              );
            },
          ),

        ],
        child: BuildOverviewListBody() 
      ),
    );
  }
}



class BuildOverviewListBody extends StatefulWidget {
  BuildOverviewListBody({Key? key}) : super(key: key);

  @override
  State<BuildOverviewListBody> createState() => _BuildOverviewListBodyState();
}

class _BuildOverviewListBodyState extends State<BuildOverviewListBody> {
  
  final Preferences prefs = Preferences();
  

  @override
  Widget build(BuildContext context) {

    final sizeWidth = MediaQuery.of(context).size.width;

    return BlocBuilder<WatcherCubit, WatcherState>(
      builder: (context, state) {

        return state.map(

          
          initial: (_) => SizedBox.shrink(), 


          loadInProgress: (_) => Center(child: CircularProgressIndicator(),) , 


          loadSuccess: (state) {

            if(state.lists.size == 0){
              return EmptyListProsConsWidget();
            }
            
            return Column(
              children: [
                SizedBox(height: 2.h,),
                // FilterRowWidget(selectedList: (p0) {
                  
                // },),
                NativeAdsWidget(unitId: 'ca-app-pub-6667428027256827/4714091541' ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.lists.size,
                    itemBuilder: (context, index) {
                
                      final ListProsCons list = state.lists[index];
                
                      if(list.failureOption.isSome()){
                        
                        return ErrorCardListWidget(onTap: (){
                          //Todo : send email & remove the item
                          sendErrorInfo(list.failureOption.fold(() => '', (f) => f.toString()));
                
                
                        }, 
                        list: list);
                
                      }else{
                
                        
                
                        return CardItemWidget(
                          onTap: (){

                            if(sizeWidth >= 800){

                              print('--- SELECTED LIST ID IN overview list body ${list.id} ---');
                              
                              

                              setState(() {
                                
                              });

                              BlocProvider.of<SelectedListCubit>(context, listen: false).listSelectedChanged(list);

                              // context.watch<SelectedListCubit>().listSelectedChanged(list);

                            }else{

                              Navigator.pushNamed(context, '/ItemList', arguments: list);

                            }  

                            

                          }, 
                          onLongPress:(){
                            
                            showDialog(context: context, builder: ((context) => DialogRemoveListWidget(list: list)) );
                
                          }, 
                          title: list.title?.getOrCrash(), 
                          subtitle: list.desc?.getOrCrash(), 
                          balance: list.balance,
                          status: list.status,
                          );
                
                      }
                
                    },
                  ),
                ),
              ],
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

          loadSuccessItem: (_) => SizedBox.shrink(),
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