import 'package:bloc/bloc.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/presentation/theme/theme_app.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_app_state.dart';
part 'theme_app_cubit.freezed.dart';

@injectable
class ThemeAppCubit extends Cubit<ThemeAppState> {
 
  ThemeAppCubit() : super(ThemeAppState.initial());


  void changedTheme(bool mode){

    emit(
      state.copyWith(
          theme: themeApp(mode)
        ),
    );

  }

}
