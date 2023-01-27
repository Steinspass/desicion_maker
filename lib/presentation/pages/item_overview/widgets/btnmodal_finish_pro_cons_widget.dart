import 'package:desicion_maker_app/application/list_pros&cons/list_creater_updater/list_creater_updater_bloc.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/value_objects.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class BtnModalFinishProsConsWidget extends StatefulWidget {
  BtnModalFinishProsConsWidget({Key? key}) : super(key: key);

  @override
  State<BtnModalFinishProsConsWidget> createState() => _BtnModalFinishProsConsWidgetState();
}

class _BtnModalFinishProsConsWidgetState extends State<BtnModalFinishProsConsWidget> {
  
  final Preferences prefs = Preferences();
  
  @override
  Widget build(BuildContext context) {
   
   return SizedBox(
      height: 22.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ListTilesWidget(
          title: 'No decision has been made', 
          color: prefs.whatTheme ? darkColorScheme.primary : lightColorScheme.primary, 
          icon: Icons.timelapse_rounded, 
          onTap: (){

            context.read<ListCreaterUpdaterBloc>()
            ..add(ListCreaterUpdaterEvent.statusChanged(StatusList.notdecide))
            ..add(const ListCreaterUpdaterEvent.saved());

            Navigator.pop(context);

          }),

          ListTilesWidget(
          title: 'I have made the decision in Pros', 
          color: prefs.whatTheme ? darkColorScheme.tertiary : lightColorScheme.tertiary, 
          icon: Icons.add_circle_rounded, 
          onTap: (){
            
            context.read<ListCreaterUpdaterBloc>()
            ..add(ListCreaterUpdaterEvent.statusChanged(StatusList.pros))
            ..add(const ListCreaterUpdaterEvent.saved());

            Navigator.pop(context);

          }),
          

          ListTilesWidget(
            title: 'I have made the decision in Cons', 
            color: prefs.whatTheme ? darkColorScheme.secondary : lightColorScheme.secondary, 
            icon: Icons.remove_circle_rounded, 
            onTap: (){
            
            context.read<ListCreaterUpdaterBloc>()
            ..add(ListCreaterUpdaterEvent.statusChanged(StatusList.cons))
            ..add(const ListCreaterUpdaterEvent.saved());

            Navigator.pop(context);
          }),
          
          SizedBox(height:10,),
        ],
      ),
    );  

  }
}