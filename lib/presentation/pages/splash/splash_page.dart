import 'package:desicion_maker_app/application/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  

  
  @override
  Widget build(BuildContext context) {
              
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_){}, 
          authenticated: (_) => Navigator.pushReplacementNamed(context, '/Home'), 
          unauthenticated: (_) => Navigator.pushReplacementNamed(context, '/Login')
        );
      },
      child: const Scaffold(
        body: Center(
          child: Image(
            image: AssetImage('assets/W.png'),
            height: 60.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
