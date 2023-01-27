part of 'theme_app_cubit.dart';

@freezed
class ThemeAppState with _$ThemeAppState {
  const factory ThemeAppState({
    @required ThemeData? theme
  }) = _ThemeAppState;
  
  factory ThemeAppState.initial() => ThemeAppState(theme: themeApp(true) );
}
