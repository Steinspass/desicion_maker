import 'package:desicion_maker_app/application/auth/auth_bloc.dart';
import 'package:desicion_maker_app/application/auth/login/login_cubit.dart';
import 'package:desicion_maker_app/application/theme/theme_app_cubit.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/injection.dart';
import 'package:desicion_maker_app/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';




class AppWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final Preferences prefs = Preferences();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<ThemeAppCubit>()..changedTheme(prefs.whatTheme),),
        BlocProvider(create: (_) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),),
        BlocProvider(create: (_) => getIt<LoginCubit>(),)
      ],
      child: BlocBuilder<ThemeAppCubit, ThemeAppState>(builder: _appMaterialWidget,),
    );

  }

  Widget _appMaterialWidget( BuildContext context, ThemeAppState state ){

    return ResponsiveSizer(
      builder:(context, orientation, deviceType){
         return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'DecisionMaker',
          theme: state.theme,
          initialRoute: '/',
          onGenerateRoute: RouterGenerator.generateRoute,
        );
      }
    );

  }

  
}

